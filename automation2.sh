#!/bin/bash
set -x
version="1.2.3.4"
for line in $(cat jiraid.txt)
do
curl -X PUT -u "grateanil:<Jira_Token>" --data '{"update":{"labels":[{"add":"DEMO_NEW"}]}}' -H "Content-Type: application/json" https://anilraut.atlassian.net/rest/api/3/issue/$line
done 
