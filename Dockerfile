FROM alpine:latest
RUN apk update && apk upgrade
RUN apk add bash
WORKDIR /bin
RUN wget https://github.com/Scalingo/cli/releases/download/1.22.1/scalingo_1.22.1_linux_386.tar.gz
RUN tar -zxvf scalingo_1.22.1_linux_386.tar.gz
RUN rm scalingo_1.22.1_linux_386.tar.gz
RUN mv ./scalingo_1.22.1_linux_386/scalingo ./scalingo
WORKDIR /
CMD ["/bin/bash","-c", "scalingo login --api-token $API_TOKEN && bash"]