#!/bin/bash
curl -X POST --data-binary @swagger.yaml -H 'Content-Type: application/x-yaml' http://online.swagger.io/validator/debug
