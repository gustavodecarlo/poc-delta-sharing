#!/usr/bin/env bash

export SPARK_HOME="<path to your local spark>"
export PATH="$SPARK_HOME/bin/:$PATH"

pyspark --packages io.delta:delta-sharing-spark_2.12:0.2.0