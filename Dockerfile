FROM alpine:latest

#general vars
ENV src_url=${src_url:-""}
ENV dest_url=${dest_url:-""} 
ENV merge_commit_author=${merge_commit_author:-"sync-job"}
ENV merge_commit_email=${merge_commit_email:-"<>"}
ENV enable_bfg=${enable_bfg:-"true"}
ENV bfg_size_limit=${bfg_size_limit:-""}100M
ENV allow_non_ff=${allow_non_ff:-"true"}

#slack vars
ENV slack_url=${slack_url:-""}
ENV notify_on_success=${notify_on_success:-"false"}
ENV notify_on_failure=${notify_on_failure:-"true"}
ENV build_url=${build_url:-"build_url"}
ENV triggered_by=${triggered_by:-"triggered_by"}
ENV project_name=${project_name:-"project_name"}
ENV pr_name=${pr_name:-"pr_name"}


RUN apk add --no-cache git openssh-client curl openjdk8-jre

# install bfg
RUN cd /usr/bin && \
    wget http://repo1.maven.org/maven2/com/madgag/bfg/1.13.0/bfg-1.13.0.jar

#add ssh
RUN mkdir -p ~/.ssh && \
    ssh-keyscan -H github.com >> ~/.ssh/known_hosts && \
    ssh-keyscan -H gitlab.com >> ~/.ssh/known_hosts && \
    ssh-keyscan -H gitlab.doc.ic.ac.uk >> ~/.ssh/known_hosts

COPY one-way-sync /usr/local/bin/
