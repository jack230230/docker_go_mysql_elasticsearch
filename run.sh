#!/bin/bash

GO_PATH=/go
CONFIG_FILE=${CONFIG:-/go_mysql_river.toml}

${GO_PATH}/src/github.com/jack230230/go-mysql-elasticsearch/go-mysql-elasticsearch -config=$CONFIG_FILE
