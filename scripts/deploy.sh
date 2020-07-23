CURRNT_DIR=$(cd $(dirname "$0"); pwd)
PUBLIC_FOLDER="$CURRNT_DIR/../public"

aws s3 sync --region ap-northeast-1 --delete  $PUBLIC_FOLDER s3://sjmyuan-ganggang
