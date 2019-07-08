docker build -t localhost:5000/scsuk.net/scs_httpd:1.0 -f docker/Dockerfile https://gitlab.scsuk.net/scsuk/scs_httpd.git#master
docker push localhost:5000/scsuk.net/scs_httpd:1.0
