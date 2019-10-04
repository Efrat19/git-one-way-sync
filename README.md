# git-one-way-sync
git-one-way-sync

#### general vars
src_url=${src_url:-""}
dest_url=${dest_url:-""} 
merge_commit_author=${merge_commit_author:-"sync-job"}
merge_commit_email=${merge_commit_email:-"<>"}
enable_bfg=${enable_bfg:-"true"}
bfg_size_limit=${bfg_size_limit:-""}100M
allow_non_ff=${allow_non_ff:-"true"}

#### slack vars
slack_url=${slack_url:-""}
notify_on_success=${notify_on_success:-"false"}
notify_on_failure=${notify_on_failure:-"true"}
build_url=${build_url:-"build_url"}
triggered_by=${triggered_by:-"triggered_by"}
project_name=${project_name:-"project_name"}
pr_name=${pr_name:-"pr_name"}