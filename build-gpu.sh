# NOTE this method is obviously not scalable as it bakes the 
# actual models on to the image but should do for now...

set -e
./backsync-models.sh
container=$(docker run -d --name serving_base tensorflow/serving:latest-gpu)
find . -name '.DS_Store' -type f -delete
docker cp models/ serving_base:/
docker commit ${container:0:12} fn_serving_base_gpu
docker kill serving_base
docker rm serving_base
