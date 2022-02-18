# Results POC delta sharing

<div align="left">
  <img src="https://user-images.githubusercontent.com/1446829/144671151-b095e1b9-2d24-4d3b-b3c6-a7041e491077.png" alt="Delta Sharing Logo" width="200" />
</div>

## Pros

- Open protocol for sharing delta tables
- Easy access data with apache spark and with delta sharing python lib
- Possibility to create data connector with the open delta sharing protocol
- Already have power bi and tableau connectors
- Layer to management of sharing only in Databricks ecosystem
- SQL interface only in Databricks ecosystem

## Cons

- Only works with principals cloud storages like: AWS S3, Google Cloud Storage, Azure Blob Store e Azure Data Lake Storage Gen2
- The open source doesn't have layer to management sharing of data
- Meny of feature only in Databricks ecosystem. Examples we not find in open source:
    - SQL interface
    - Create shares on the fly
    - Creation of the recepient .share file
    - Easy connection with existing connectors
- Actual documentation a confusing and not updated
- Delta sharing YAML file config is static in open source, and not have to update without to restart the server
- Not find a way to configure more than one share with diferent recepient credential in the same delta sharing server
