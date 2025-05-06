tar cf - init_tables.sh | docker exec -i postgres tar xf - -C /
tar cf - subject/ | docker exec -i postgres tar xf - -C /
docker exec postgres chmod +x /init_tables.sh
docker exec postgres sh /init_tables.sh
