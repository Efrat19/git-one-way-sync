FROM alpine:latest

#general vars
ENV SRC_URL=${SRC_URL:-""}
ENV DEST_URL=${DEST_URL:-""} 
ENV GIT_AUTHOR_NAME=${GIT_AUTHOR_NAME:-"sync_job"}
ENV GIT_AUTHOR_EMAIL=${GIT_AUTHOR_EMAIL:-"GIT_AUTHOR_EMAIL_NOT_SET"}
ENV ENABLE_BFG=${ENABLE_BFG:-"true"}
ENV BFG_SIZE_LIMIT=${BFG_SIZE_LIMIT:-"100M"}

#slack vars
ENV SLACK_URL=${SLACK_URL:-""}
ENV NOTIFY_ON_SUCCESS=${NOTIFY_ON_SUCCESS:-false}
ENV NOTIFY_ON_FAILURE=${NOTIFY_ON_FAILURE:-"true"}
ENV BUILD_URL=${BUILD_URL:-"BUILD_URL_NOT_SET"}
ENV TRIGGERED_BY=${TRIGGERED_BY:-"TRIGGERED_BY_NOT_SET"}
ENV PROJECT_NAME=${PROJECT_NAME:-"PROJECT_NAME_NOT_SET"}
ENV PR_NAME=${PR_NAME:-"PR_NAME_NOT_SET"}


RUN apk add --no-cache git openssh-client curl openjdk8-jre

# install bfg
RUN cd /usr/bin && \
    wget http://repo1.maven.org/maven2/com/madgag/bfg/1.13.0/bfg-1.13.0.jar

#add ssh
RUN mkdir -p ~/.ssh && \
    ssh-keyscan -H github.com >> ~/.ssh/known_hosts && \
    ssh-keyscan -H gitlab.com >> ~/.ssh/known_hosts && \
    ssh-keyscan -H gitlab.doc.ic.ac.uk >> ~/.ssh/known_hosts

COPY git-one-way-sync /usr/local/bin/
