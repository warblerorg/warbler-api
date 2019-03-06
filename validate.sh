#!/bin/bash
curl http://validator.swagger.io/validator/debug?url=https://raw.githubusercontent.com/warblerorg/warbler-api/${TRAVIS_BRANCH}/swagger.yaml
