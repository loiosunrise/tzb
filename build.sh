Type=${1:-upload}
TAG=${2:-latest}
docker rmi tzb-$Type:$TAG
docker build --platform linux/amd64 -t tzb-$Type:$TAG -f ./docker/$Type-Dockerfile --build-arg TAG=$TAG .
