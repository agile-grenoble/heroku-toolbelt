#!/bin/bash

set -e

HEROKU_APP=$1
GH_REMOTE=$2

if [ \( -z "$HEROKU_LOGIN" \) -o \( -z "$HEROKU_PASSWORD" \) ]; then
    echo "*** HEROKU_LOGIN or HEROKU_PASSWORD are missing"
    exit 1
fi

heroku login <<EOF
$HEROKU_LOGIN
$HEROKU_PASSWORD
EOF

heroku git:clone -a $HEROKU_APP
cd $HEROKU_APP
git remote add gh $GH_REMOTE
git fetch gh

echo "How to push things":
echo "> git merge --ff-only gh/master"
echo "> git push heroku master"

exec bash
