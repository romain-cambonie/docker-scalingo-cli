FROM alpine:latest
RUN apk update && apk upgrade
RUN apk add bash openssh-keygen
WORKDIR /bin
RUN wget https://github.com/TARGET_REPOSITORY/releases/download/RELEASE_TAG_VERSION/EXECUTABLE_ARCHIVE_NAME_PATTERN.EXECUTABLE_ARCHIVE_EXTENTION
RUN tar -zxvf EXECUTABLE_ARCHIVE_NAME_PATTERN.EXECUTABLE_ARCHIVE_EXTENTION
RUN rm EXECUTABLE_ARCHIVE_NAME_PATTERN.EXECUTABLE_ARCHIVE_EXTENTION
RUN mv ./EXECUTABLE_ARCHIVE_NAME_PATTERN/EXECUTABLE_NAME ./EXECUTABLE_NAME
WORKDIR /
#github action overwrite the entrypoint
ENTRYPOINT [""]
