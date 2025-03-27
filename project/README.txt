
GENERAL

Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
Date: <2025-03-25>

DESCRIPTION
Tämä projekti tarjoaa REST API:n, joka hallinnoi siivousfirman tietoja SQLite-tietokannassa.
API mahdollistaa siivoojien tietojen hakemisen ja lisäämisen.

DEPENCIES
Tämä projekti vaatii Node.js sekä sisältää seuraavat node modulet
express, sqlite3, dotenv, body-parser

INSTALL
    KLOONAA PROJEKTI
    git clone <repository-url>
    cd <project-directory>

    ASENNA RIIPPUVUUDEET
    npm install

    LUO TIETOKANTA
    sqlite3 database.db < sql/create.sql
    sqlite3 database.db < sql/insert.sql
    Tarkemmat tiedot sql/README.txt

    ASETA YMPÄRISTÖMUUTTUJAT
    Luo .env ja määritä siellä PORT

USAGE
    KÄYNNISTÄ PALVELIN
    node server.js

API DESCRIPTION
    HAE SIIVOOJA ID.N PERUSTEELLA
        GET /cleaners/:ID
        Palauttaa siivoojan tiedot annetulla ID:llä

        Parametrit:
        id (numero, vaadittu) – Haettavan siivoojan ID.

        Vastaus:
        Onnistunut: JSON-objekti, joka sisältää siivoojan etunimen, sukunimen, palkkatiedot, työnteon aloituspäivän ja siivouspaikan.
        Epäonnistunut: Virheilmoitus ja statuskoodi (400, 404 tai 500).

    HAE SIIVOOJAA TIETOJEN PERUSTEELLA
        GET /cleaners
        Hakee siivoojien tiedot. Haku voidaan rajata hakuehtojen perusteella.
        Ilman parametrejä palauttaa kaikki siivoajat.

        Sallitut hakuehdot (query-parametrit):
        fname (string) – Etunimi
        lname (string) – Sukunimi
        salgrade (numero) – Palkkaluokka
        hire_date (string, muodossa YYYY-MM-DD) – Päivämäärä, jolloin siivooja palkattiin

        Vastaus:
        Onnistunut: Lista siivoojista JSON-muodossa.
        Epäonnistunut: Virheilmoitus ja statuskoodi (400, 404 tai 500).

    LISÄÄ UUSI SIIVOAJA
        POST/cleaners
        Lisää uuden siivoojan tietokantaan.

        Vaaditut parametrit (JSON body):
        fname (string, vaadittu) – Etunimi
        lname (string, vaadittu) – Sukunimi
        salgrade (numero, vaadittu) – Palkkaluokka
        hire_date (string, muodossa YYYY-MM-DD, vaadittu) – Palkkauspäivä

        Vastaus:
        Onnistunut: Lisätyn siivoojan tiedot JSON-muodossa ja statuskoodi 201.
        Epäonnistunut: Virheilmoitus ja statuskoodi 400 tai 500.

    PÄIVITÄ SIIVOJAN PALKKALUOKKA
        PUT /cleaners/:id
        Päivittää siivoajan palkkaluokan

        Parametrit:
        id (numero, vaadittu)
        salgrade (numero, vaadittu, JSON bodyssa) – Uusi palkkaluokka

        Vastaus:
        Onnistunut: JSON-vastaus, jossa ilmoitetaan päivityksen onnistumisesta.
        Epäonnistunut: Virheilmoitus ja statuskoodi 400, 404 tai 500.

    POISTA SIIVOUSPAIKKA NIMEN PERUSTEELLA
        DELETE /locations/:name
        Poistaa siivouspaikan tietokannasta nimen perusteella.

        Parametrit:
        name (string, vaadittu) – Poistettavan paikan nimi.

        Vastaus:
        Onnistunut: JSON-vastaus, jossa ilmoitetaan poiston onnistumisesta.
        Epäonnistunut: Virheilmoitus ja statuskoodi 400, 404 tai 500.

        TUNTEMATON ENDPOINT
        Kaikki tuntemattovat palauttavat seuraavan:
        Statuskoodi 404
        {
            "error": "yes",
            "message": "unknown endpoint"
        }


API EXAMPLES

<curl command API call examples>
curl.exe --silent --include "http://localhost:8080/cleaners/?fname=Milla"


