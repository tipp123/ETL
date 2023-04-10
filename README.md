### Data

###### Metadata about air quality:

[Eesti välisõhu kvaliteet](http://airviro.klab.ee/)

| Attr  | example value | unit    | Description                 |
| ----- | ------------- | ------- | --------------------------- |
| SO2   | 0,23          | µg/m³ | Vääveldioksiid            |
| NO2   | 0,02          | µg/m³ | Lämmastikdioksiid          |
| CO    | 0,24          | mg/m³  | Süsinikoksiid              |
| O3    | 70,05         | µg/m³ | Osoon                       |
| PM10  | 8,55          | µg/m³ | Peened osakesed             |
| PM2.5 | 4,72          | µg/m³ | Eriti peened osakesed       |
| TEMP  | 9,72          | C       | Temperatuur                 |
| WD10  | 204,40        | deg     | Tuule suund 10 m kõrgusel  |
| WS10  | 1,56          | m/s     | Tuule kiirus 10 m kõrgusel |


* Using python script extact data from [http://airviro.klab.ee/] and create file air_2022.csv (use `fetch_air.ipynb`).
* Using Openrefine transform columns into correct format (use `history.json`)
* Use Openrefine export to SQL. 
| Field  | SQL type|
| ----- | ------------- | 
| Date  | TIMESTAMP     | 
| SO2   | NUMERIC       | 
| NO2   | NUMERIC       | 
| CO    | NUMERIC       | 
| O3    | NUMERIC       | 
| PM10  | NUMERIC       |
| PM2.5 | NUMERIC       | 
| TEMP  | NUMERIC       | 
| WD10  | INT           | 
| WS10  | NUMERIC       | 
* Update created SQL scripts to be suitable for MySQL (use 'CreateTable.sql' and 'InsertInto.sql')