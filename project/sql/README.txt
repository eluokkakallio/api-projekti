SIIVOUSFIRMA TIETOKANTA
Tämä projekti sisältää SQLite-tietokannan, joka mallintaa siivousyrityksen toimintaa.
Tietokanta koostuu neljästä taulusta: cleaner, salgrade, location ja schedule.
SQL-komennot tietokannan luomiseen, testidatan lisäämiseen ja poistamiseen löytyvät sql-hakemistosta tiedostoista
create.sql, insert.sql ja delete.sql.

Tämä projekti vaatii SQLite3:n asennuksen. Tarvittaessa voit asentaa sen seuraavalla komennolla (ubuntu/WSL)
sudo apt update && sudo apt install sqlite3

ASENNUS JA KÄYTTÖ
Siirry projektin juurihakemistoon, johon tietokanta asennetaan, ja varmista, että sql-hakemistossa ovat seuraavat tiedostot:
create.sql, insert.sql, delete.sql

Luo tietokanta suorittamalla seuraava komento WSL-komentorivillä (Ubuntu):
sqlite3 database.db < sql/create.sql
Tämän luo uuden SQLite-tietokantatiedoston database.db, jossa on create.sql tiedoston mukaiset taulut.

TESTIDATAN LISÄÄMINEN
Lisää testidata tietokantaan suorittamalla:
sqlite3 database.db < sql/insert.sql

TESTIDATAN POISTAMINEN
Poista kaikki testidata tauluista suorittamalla:
sqlite3 database.db < sql/delete.sql
