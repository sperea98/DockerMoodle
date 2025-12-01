
# Si existe el contenedor lo elimina
if (docker ps -a --filter "name=ApachePHPContainer" --quiet){
    docker rm -f ApachePHPContainer
}

docker run -d `
    --name ApachePHPContainer `
    -p 80:80 `
    -v .\src:/var/www/serafin.moodle.asir `
    -v .\logs:var/log/apache2 `
    --env-file .env\dev.env `
    --add-host=serafin.moodle.asir:127.0.0.1 `
    apachephp:dev