ARG TAG
FROM registry.cn-hangzhou.aliyuncs.com/tzb-sincos/tzb-test:${TAG}

WORKDIR /workspace
COPY ./llama /workspace
COPY ./run.py /workspace


RUN mkdir /output_path
RUN mkdir /output_path/QA
RUN mkdir /output_path/Image_caption
RUN mkdir /output_path/Change_caption


CMD ["python", "run.py", "/input_path", "/output_path"]