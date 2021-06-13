docker run -t --rm -p 7070:7070 -p 8080:8080 \
  -v "$(pwd)/models/torchserve/:/home/model-server/model-store/" \
  -v "$(pwd)/torchserve.properties:/home/model-server/config.properties" pytorch/torchserve:latest-cpu \
  torchserve --start --model-store model-store
