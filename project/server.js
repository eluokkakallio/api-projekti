// FILE: server.js

const STATUS_CODES = {
    OK: 200,
    CREATED: 201,
    BAD_REQUEST: 400,
    UNAUTHORIZED: 401,
    FORBIDDEN: 403,
    NOT_FOUND: 404,
    INTERNAL_SERVER_ERROR: 500
  }

const express = require('express')
const bodyParser = require('body-parser')

// sqlite3 tietokantaan yhdistäminen
const sqlite3 = require('sqlite3').verbose()
const db = new sqlite3.Database('database.db', (err) => {
    if (err) {
        console.error('Database connection failed: ', err.message)
    } else {
        console.log('Connected to the database')
    }
})

// riippuvuuksien käyttöönotto
const app = express()
app.use(express.json())
require('dotenv').config()
const port = process.env.PORT
app.use(bodyParser.json())

// ENDPOINT1
// GET /cleaners/:id palauttaa yksittäisen siivoojan tiedot id:n perusteella.
// Jos kaikki onnistuu, palautetaan siivoojan tiedot JSON-muodossa ja statuskoodi 200.
// Muussa tapauksessa palautetaan statuskoodi 400, 404 tai 500 riippuen mikä meni vikaan
app.get('/cleaners/:id', (req, res) => {
    const id = req.params.id
    if (!id) {
        return res.status(STATUS_CODES.BAD_REQUEST).json({ message: 'Missing required fields' })
    }

    // Haetaan siivoojan tiedot id:n perusteella tietokannasta
    const sql = `SELECT c.fname AS "First name"
                    , c.lname AS "Last name"
                    , c.hireDate AS "Hire date"
                    , s.sal AS "Salary"
                    , l.name AS "Cleaning place"
                    , sc.cleaning_date AS "Cleaning day"
                FROM cleaner c
                JOIN salgrade s
                JOIN schedule sc
                JOIN location l
                ON c.salgrade = s.salgrade
                AND
                c.id = sc.cleaner_id
                AND
                l.id = sc.location_id
                WHERE c.id = ${id}`

    // Tietokantaan yhdistäminen ja sql kyselyn suorittaminen
    db.all(sql, [], (err, rows) => {
        if (err) {
            res.status(STATUS_CODES.INTERNAL_SERVER_ERROR).json({ error: err.message })
            return
        }

        if (rows.length === 0) {
            res.status(STATUS_CODES.NOT_FOUND).json({ 'Id not found': id })
            return
        }

        res.json(rows[0])
    })
})

// ENDPOINT 2
// GET /cleaners palauttaa siivoojien tiedot.
// Pyynnön voi rajata hakuehtojen avulla.
// Jos hakuehtoja ei ole, palautetaan kaikkien siivoojien tiedot.
// Jos hakuehtoja on, palautetaan vain niiden siivoojien tiedot, jotka täyttävät hakuehdot.
// Hakuehtoina voi käyttää seuraavia kenttiä: fname, lname, salgrade ja hireDate.
app.get('/cleaners', (req, res) => {
    const { fname, lname, salgrade, hireDate } = req.query
    const allowedParams = ['fname', 'lname', 'salgrade', 'hireDate']

    // Tarkista, ettei mukana ole tuntemattomia parametreja
    const unknownParams = Object.keys(req.query).filter(param => !allowedParams.includes(param))
    if (unknownParams.length > 0) {
        return res.status(400).json({ error: `Unknown parameter(s): ${unknownParams.join(', ')}` })
    }

    let sql = 'SELECT * FROM cleaner WHERE 1=1'
    const params = []

    if (fname) {
        sql += ' AND LOWER(fname) = LOWER(?)'
        params.push(fname)
    }
    if (lname) {
        sql += ' AND LOWER(lname) = LOWER(?)'
        params.push(lname)
    }
    if (salgrade) {
        sql += ' AND salgrade = ?'
        params.push(salgrade)
    }
    if (hireDate) {
        sql += 'AND hireDate = ?'
        params.push(hireDate)
    }

    db.all(sql, params, (err, rows) => {
        if (err) {
            res.status(500).json({ error: err.message })
            return
        }

        if (rows.length === 0) {
            res.status(404).json({ message: 'No cleaners found with given search criteria' })
            return
        }

        res.json(rows)
    })
})

// ENDPOINT3
// POST /cleaners lisää uuden siivoojan tietokantaan.
// Pyynnön rungossa tulee olla seuraavat kentät: fname, lname, salgrade ja hireDate.
// Jos kaikki onnistuu, palautetaan lisätyn siivoojan tiedot JSON-muodossa ja statuskoodi 201.

app.post('/cleaners', (req, res) => {
    const { fname, lname, salgrade, hireDate } = req.body
    const allowedParams = ['fname', 'lname', 'salgrade', 'hireDate']

    // Tarkista tuntemattomat parametrit
    const unknownParams = Object.keys(req.body).filter(param => !allowedParams.includes(param))
    if (unknownParams.length > 0) {
        return res.status(400).json({ error: `Unknown parameter(s): ${unknownParams.join(', ')}` })
    }

    // Tarkista, ettei mitään pakollista kenttää puutu
    if (!fname || !lname || !salgrade || !hireDate) {
        return res.status(400).json({ message: 'Missing required fields' })
    }

    const sql = ` INSERT INTO cleaner
                (fname, lname, salgrade, hireDate)
                    VALUES (?, ?, ?, ?) `
    const params = [fname, lname, salgrade, hireDate]

    db.run(sql, params, function (err) {
        if (err) {
            return res.status(500).json({ error: err.message })
        }

        res.status(201).json({
            id: this.lastID,
            fname,
            lname,
            salgrade,
            hireDate
        })
    })
})

// ENDPOINT4
// PUT /cleaners/:id päivittää siivoojan palkkaluokan.
// Pyynnön rungossa tulee olla kenttä salgrade.
// Jos kaikki onnistuu, palautetaan päivitetyn siivoojan tiedot JSON-muodossa ja statuskoodi 200.
// Muussa tapauksea palautetaan statuskoodi 400 tai 500.
app.put('/cleaners/:id', (req, res) => {
    const id = req.params.id
    const { salgrade } = req.body

    if (!salgrade) {
        return res.status(STATUS_CODES.BAD_REQUEST).json({ message: 'Missing required fields' })
    }

    const sql = `UPDATE cleaner
                 SET salgrade = ?
                 WHERE id = ?`
    const params = [salgrade, id]

    db.run(sql, params, function (err) {
        if (err) {
            return res.status(STATUS_CODES.INTERNAL_SERVER_ERROR).json({ error: err.message })
        }
        if (this.changes === 0) {
            return res.status(STATUS_CODES.NOT_FOUND).json({ message: 'Cleaner not found' })
        }

        res.status(STATUS_CODES.OK).json({
            update: 'yes',
            message: 'new salarydrade updated'
        })
    })
})

// ENDPOINT5
// delete/location/:name poistaa tietokannasta paikan nimen perusteella.
// statuskoodit määräytyy sen mukaan, miten operaatio onnistuu.
app.delete('/locations/:name', (req, res) => {
    const name = req.params.name
    if (!name) {
        return res.status(STATUS_CODES.BAD_REQUEST).json({ message: 'Missing required fields' })
    }
    const sql = `DELETE FROM location
                 WHERE LOWER(name) = LOWER(?)`
    const params = [name]

    db.run(sql, params, function (err) {
        if (err) {
            return res.status(STATUS_CODES.INTERNAL_SERVER_ERROR).json({ error: err.message })
        }

        if (this.changes === 0) {
            return res.status(STATUS_CODES.NOT_FOUND).json({ message: 'Location not found' })
        }

        res.status(STATUS_CODES.OK).json({
            delete: 'yes',
            message: 'location deleted'
        })
    }
    )
})

// käsittelee tuntemattomat endpointit
app.use((req, res) => {
    res.type('json')
    const json = {
        error: 'yes',
        message: 'unknown endpoint'
    }
    res.status(STATUS_CODES.NOT_FOUND).json(json)
})

app.listen(port, () => {
    console.log(`Example server listening at http://localhost:${port}`)
})
