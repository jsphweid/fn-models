sudo docker run -t --rm -p 8500:8500 -p 8501:8501 --gpus all \
  -v "$(pwd)/saved/:/models/" tensorflow/serving:latest-gpu \
  --model_config_file=/models/models.config
