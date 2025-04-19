# 基础镜像
FROM ubuntu:20.04
# 把编译后的打包进来这个镜像（特指webook那个文件），放到工作目录 /app。你随便换
COPY k8slearn /app/k8slearn
WORKDIR /app
ENTRYPOINT ["/app/k8slearn"]