docker build `
    -f .\docker\http\apache+php\apache-php.dev.dockerfile `
    --build-arg SERVER_NAME=serafin.moodle.asir `
    --build-arg SERVER_PORT=80 `
    -t apachephptest1 .