# Shell script untuk Build Docker Image dan push ke Github Container Registry

# membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image karsajobs, dan memiliki tag latest
docker build -t karsajobs:latest .

# tag image untuk penanda Github Container Registry
docker tag karsajobs:latest ghcr.io/theoyrus/karsajobs:latest

# authorize Github Container Registry menggunakan PAT
echo $GHCR_PAT | docker login ghcr.io -u theoyrus --password-stdin

# push ke GHCR
docker push ghcr.io/theoyrus/karsajobs:latest
