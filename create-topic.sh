echo "Creating topics"
docker exec kafka1 \
kafka-topics --bootstrap-server kafka1:19092, kafka2:19093, kafka3:19094 \
             --create \
             --replication-factor 3 \
             --partitions 10 \
             --topic otot-d
echo "list topics in kafka 1"
docker exec kafka1 \
kafka-topics  --bootstrap-server=kafka1:19092 --list

echo "list topics in kafka 2"
docker exec kafka1 \
kafka-topics  --bootstrap-server=kafka2:19093 --list

echo "list topics in kafka 3"
docker exec kafka1 \
kafka-topics  --bootstrap-server=kafka3:19094 --list