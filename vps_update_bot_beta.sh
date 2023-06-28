echo Destruyendo el contenedor beta en el VPS:
docker rm beta --force
echo Destruyendo la imagen docker previa del bot en el VPS:
docker rmi botcito_beta
echo Contenido actual de la ruta principal en el VPS:
ls
echo Descargando REPO:
git clone -b beta https://github.com/david127cu/nextCloudBot
cd nextCloudBot
echo Construyendo imagen de docker:
docker image build -t botcito_beta .
cd #
echo Contenido actual de la ruta principal en el VPS después de descargar el REPO:
ls
rm -r nextCloudBot
echo Contenido actual de la ruta principal en el VPS después de borrar el REPO:
ls
docker run --restart always --interactive --name beta botcito_beta