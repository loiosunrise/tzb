TAG=${1:-latest}
sh build.sh base ${TAG}
sh build.sh test ${TAG}
sh build.sh upload ${TAG}
docker tag tzb-test:${TAG} registry.cn-hangzhou.aliyuncs.com/tzb-sincos/tzb-test:${TAG}
docker tag tzb-upload:${TAG} registry.cn-hangzhou.aliyuncs.com/tzb-sincos/tzb-upload:${TAG}
docker push registry.cn-hangzhou.aliyuncs.com/tzb-sincos/tzb-test:${TAG}
docker push registry.cn-hangzhou.aliyuncs.com/tzb-sincos/tzb-upload:${TAG}