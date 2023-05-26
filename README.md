# poc-delta-sharing

POC of new feature of delta lake the delta sharing

## Points of interest

- Understand this new resource of delta lake
- How to use
- Problems

## POC scenario

### Requires

- Docker
- Pyspark

### Scenario

Using the Google Cloud Storage to test Delta Sharing Server.

### How to reproduce

- Change configuration to your delta table in `delta_sharing_server_gcp.yml`
- Change configuration of credential of google in `start_ds_server_gcp.sh`

```
# All configuration set run:

./start_ds_server_gcp.sh
```

After the server start to test the delta sharing server with pyspark

```
# <profile-file-path> = datasets.share in this project
# <share-name> = config in delta_sharing_server.yml
# <schema-name> = config in delta_sharing_server.yml
# <table-name> = config in delta_sharing_server.yml

table_path = "<profile-file-path>#<share-name>.<schema-name>.<table-name>"
df = spark.read.format("deltaSharing").load(table_path)
df.show(5)
```

### Results

- [POC results](RESULTS.md)


## References

- [Delta Sharing Home](https://delta.io/sharing/)
- [Delta Sharing Github](https://github.com/delta-io/delta-sharing)
- [Medium Post: delta-sharing-the-difficulties-are-blaring](https://richiebachala.medium.com/delta-sharing-the-difficulties-are-blaring-c5a7b3e70e5c)
- [Docker Image Delta Sharing](https://hub.docker.com/r/deltaio/delta-sharing-server)