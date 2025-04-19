.PHONY: docker  #.PHONY: docker 可以强制 Make ​​无条件执行​​ docker 目标下的命令，即使存在名为 docker 的文件
docker:
	@rm webook || true # # 尝试删除文件，失败时忽略
	@GOOS=linux GOARCH=arm64 go build  -o k8slearn . # 交叉编译为 Linux ARM 可执行文件
	@docker rmi -f k8slearn:v0.0.1    # 强制删除旧镜像
	@docker build -t k8slearn:v0.0.1 . #构建新镜像