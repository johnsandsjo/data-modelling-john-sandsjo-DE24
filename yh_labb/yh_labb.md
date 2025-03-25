# Build a database for YrkesCo

## Conceptual model

## Logical model

- [ ] Create tables

## Inserting data

In order to ingest the dummy data I first prepare it in csv's add it to the project folder and use the COPY command in psql.

Examples Class table:

First step is to add all files into the container

```
docker cp dummy_data/Class.csv postgres_data_modeling:/tmp/Class.csv
```

Then i add it to the database using the COPY command
```
COPY Enrollment FROM '/tmp/Class.csv' WITH (FORMAT CSV, HEADER);
```
Problem with int for personal_number
Wrong data type for course code