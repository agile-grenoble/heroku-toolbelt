Helper tool to deploy from github to heroku
===========================================

This docker image aims to help people deploying new version of an application
on heroku based on a github reference

How to use ?
------------

in a ".env" file (protected, chmod 0600 or alike):

    HEROKU_LOGIN=your heroku login
    HEROKU_PASSWORD=your heroku password

then

    $> docker run -ti --rm --env-file=.env heroku-toolbelt ./run.sh <heroku app name> <gh page>

Example for agile grenoble:

    $> docker run -ti --rm --env-file=.env heroku-toolbelt ./run.sh secret-tundra-7433 https://github.com/agile-grenoble/propile

