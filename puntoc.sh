mkdir docker2Parcial
cd docker2Parcial
mkdir appHomeBanking
cd appHomeBanking
vim index.html
<h1> 2doParcial AYSO <h1>
vim contacto.html
<h2> Agustin Camporeale <h2>
<h1> 2doParcial AYSO <h1>
vim dockerfile
FROM nginx
COPY appHomeBanking /usr/share/nginx/html
docker login -u acamporeale
docker build -t acamporeale/2parcial-ayso:v1.0 .
docker image list
docker push sbsanchez21/2parcial-ayso:v1.0
docker run -d -p 8080:80 sbsanchez21/2parcial-ayso:v1.0
docker container ls

