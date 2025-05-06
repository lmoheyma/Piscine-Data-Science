psql -U lmoheyma -d piscineds -h localhost -W

export PGPASSWORD=mysecretpassword

for FILE in subject/customer/*; do
    echo $(basename $FILE .csv)
    psql -U lmoheyma -d piscineds -h localhost -c \
        "CREATE TABLE IF NOT EXISTS $(basename $FILE .csv) (
            event_time TIMESTAMP,
            event_type VARCHAR(25),
            product_id INTEGER,
            price DECIMAL,
            user_id INTEGER,
            user_session VARCHAR(50)
        );"
done

echo 'GOOD';