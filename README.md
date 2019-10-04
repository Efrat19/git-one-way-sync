# git-one-way-sync
git-one-way-sync

# general vars
ENV src_url=${src_url:-""}
ENV dest_url=${dest_url:-""} 
ENV merge_commit_author=${merge_commit_author:-"sync-job"}
ENV merge_commit_email=${merge_commit_email:-"<>"}
ENV enable_bfg=${enable_bfg:-"true"}
ENV bfg_size_limit=${bfg_size_limit:-""}100M
ENV allow_non_ff=${allow_non_ff:-"true"}

# slack vars
ENV slack_url=${slack_url:-""}
ENV notify_on_success=${notify_on_success:-"false"}
ENV notify_on_failure=${notify_on_failure:-"true"}
ENV build_url=${build_url:-"build_url"}
ENV triggered_by=${triggered_by:-"triggered_by"}
ENV project_name=${project_name:-"project_name"}
ENV pr_name=${pr_name:-"pr_name"}