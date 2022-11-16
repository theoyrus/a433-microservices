# Shell script untuk Build Docker Image dan push ke Github Container Registry

# membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1
docker build -t item-app:v1 .

# lihat daftar image di lokal.
docker images

# ubah nama image agar sesuai dengan format
docker tag item-app:v1 ghcr.io/theoyrus/item-app:v1

# authorize Github Container Registry menggunakan PAT
echo $GHCR_PAT | docker login ghcr.io -u theoyrus --password-stdin

# push ke GHCR
docker push ghcr.io/theoyrus/item-app:v1
