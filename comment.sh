#!/bin/bash
if [ "$TRAVIS_PULL_REQUEST" != "false" ] ; then
    curl -H "Authorization: token ${GITHUB_TOKEN}" -X POST \
    -d "{\"body\": \"![Swagger schema validation](http://validator.swagger.io/validator?url=https://raw.githubusercontent.com/warblerorg/warbler-api/${TRAVIS_BRANCH}/swagger.yaml)\"}" \
    "https://api.github.com/repos/${TRAVIS_REPO_SLUG}/issues/${TRAVIS_PULL_REQUEST}/comments"
fi
