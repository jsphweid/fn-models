docker run -t --rm -p 8500:8500 -p 8501:8501 \
  -v "$(pwd)/models/:/models/" tensorflow/serving \
  --model_config_file=/models/models.config
