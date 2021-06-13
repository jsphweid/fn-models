find . -name ".DS_Store" -delete

# push any new stuff
aws s3 sync models s3://$S3_MODEL_BUCKET_NAME

# pull any old stuff
aws s3 sync s3://$S3_MODEL_BUCKET_NAME models

# what could possibly go wrong