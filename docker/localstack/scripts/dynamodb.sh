#!/bin/bash
awslocal dynamodb create-table --cli-input-json file://db/acs.db.json
awslocal dynamodb create-table --cli-input-json file://db/ogs.db.json
awslocal dynamodb create-table --cli-input-json file://db/cas.db.json
awslocal dynamodb create-table --cli-input-json file://db/mes.db.json

