# Volume

This will be used to create volume and test

MongoDB data is stored in docker files in local

```bash
docker volume create testVolume

docker run -p 27018:27017 -v testVolume:/data/db mongo
```

---

# Network

This will be used to test network and learn

```bash
docker network create testNetwork

docker run --name mongodbNetworkContainer --network testNetwork mongo

# node_network_volume_mongo:latest uses 27017 as default port
docker run -p 3000:3000 --network testNetwork node_network_volume_mongo:latest
# node_network_volume_mongo:latest uses mongodbNetworkContainer as hostname instead of localhost
```
