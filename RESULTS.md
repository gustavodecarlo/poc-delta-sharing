# Results POC delta sharing

<div align="left">
  <img src="https://user-images.githubusercontent.com/1446829/144671151-b095e1b9-2d24-4d3b-b3c6-a7041e491077.png" alt="Delta Sharing Logo" width="200" />
</div>

## Pros
- Open protocol for sharing Delta Tables
- Easy data access with Apache Spark and Delta Sharing Python library
- Possibility to create data connectors with the Delta Sharing open protocol
- Already has Power BI and Tableau connectors
- Built-in management layer only present in Databricks ecosystem
- SQL interface only in Databricks ecosystem

## Cons
- Only works with the main cloud storages like AWS S3, Google Cloud Storage, Azure Blob Store e Azure Data Lake Storage Gen2
- The open-source doesn't have a management layer for sharing data
- Many features are only in the Databricks ecosystem. Here are some features we didn't find in the open-source code:
    - SQL interface
    - Creation of Data Shares on the fly
    - Creation of the recipient .share file
    - Difficult to integrate with existing connectors
- Actual documentation is confusing and not updated
- Delta Sharing YAML config file is static in the open-source, so we couldn't update it without restarting the server
- We didn't find a way to configure more than one Data Share with different recipient credentials in the same Delta Sharing Server
