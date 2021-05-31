aws s3 sync models s3://$S3_MODEL_BUCKET_NAME \
  --exclude "*.DS_Store*" \
  --exclude "models.config"
