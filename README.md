# git-one-way-sync
git-one-way-sync

#### general vars
SRC_URL=${SRC_URL:-""}
DEST_URL=${DEST_URL:-""} 
MERGE_COMMIT_AUTHOR=${MERGE_COMMIT_AUTHOR:-"sync-job"}
MERGE_COMMIT_EMAIL=${MERGE_COMMIT_EMAIL:-"<>"}
ENABLE_BFG=${ENABLE_BFG:-"true"}
BFG_SIZE_LIMIT=${BFG_SIZE_LIMIT:-""}100M
ALLOW_NON_FF_MERGE=${ALLOW_NON_FF_MERGE:-"true"}

#### slack vars
SLACK_URL=${SLACK_URL:-""}
NOTIFY_ON_SUCCESS=${NOTIFY_ON_SUCCESS:-"false"}
NOTIFY_ON_FAILURE=${NOTIFY_ON_FAILURE:-"true"}
BUILD_URL=${BUILD_URL:-"BUILD_URL"}
TRIGGERED_BY=${TRIGGERED_BY:-"TRIGGERED_BY"}
PROJECT_NAME=${PROJECT_NAME:-"PROJECT_NAME"}
PR_NAME=${PR_NAME:-"PR_NAME"}

          SRC_URL: 
          DEST_URL:  
          MERGE_COMMIT_AUTHOR: 
          MERGE_COMMIT_EMAIL: 
          ENABLE_BFG: 
          BFG_SIZE_LIMIT: 
          ALLOW_NON_FF_MERGE: 
          SLACK_URL: 
          NOTIFY_ON_SUCCESS: 
          NOTIFY_ON_FAILURE: 
          BUILD_URL: 
          TRIGGERED_BY: 
          PROJECT_NAME: 
          PR_NAME: 