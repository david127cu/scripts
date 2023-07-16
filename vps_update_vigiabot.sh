echo Destruyendo el contenedor vigiabot en el VPS:
docker rm container_vigia_bot --force
echo Destruyendo la imagen docker previa del bot en el VPS:
docker rmi vigia_bot
echo Contenido actual de la ruta principal en el VPS:
ls
echo Descargando REPO:
git clone -b main https://github.com/david127cu/vigiabot
cd vigiabot
echo Construyendo imagen de docker:
docker image build -t vigia_bot .
cd #
echo Contenido actual de la ruta principal en el VPS después de descargar el REPO:
ls
rm -r vigiabot
echo Contenido actual de la ruta principal en el VPS después de borrar el REPO:
ls
# echo ELIMINANDO IMAGENES REDUNDANTES
# docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
# docker rmi mcr.microsoft.com/dotnet/sdk:6.0-alpine
# docker rmi mcr.microsoft.com/dotnet/runtime:6.0
# echo FIN DE LA TAREA... CORRIENDO IMÁGEN:
docker run --restart always --interactive --name container_vigia_bot vigia_bot