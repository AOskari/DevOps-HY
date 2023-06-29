
git clone https://github.com/$1
REPO_NAME=$(basename https://github.com/$1 .git)
cd $REPO_NAME
docker build -t $2 .
docker push $2:latest
docker rmi $2   