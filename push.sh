TAG=${1:-latest}
docker tag registry.cn-hangzhou.aliyuncs.com/tzb-sincos/tzb-local-test:$TAG registry.cn-hangzhou.aliyuncs.com/tzb-sincos/tzb-upload:$TAG
docker push registry.cn-hangzhou.aliyuncs.com/tzb-sincos/tzb-upload:$TAG 