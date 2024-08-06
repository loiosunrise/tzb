TAG=${1:-latest}
docker pull registry.cn-hangzhou.aliyuncs.com/tzb-sincos/tzb-test:$TAG
docker build --platform linux/amd64 -t registry.cn-hangzhou.aliyuncs.com/tzb-sincos/tzb-local-test:$TAG -f ./Dockerfile --build-arg TAG=$TAG .