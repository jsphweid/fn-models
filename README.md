# fn-models

IMPORTANT: This is a pretty bare repo because the actual models aren't committed and for now are in private storage. 
The models should be stored in `models/` like `models/half-plus-two-cpu/1/saved_model.pb` etc.

When you do sync models back and forth from s3, make sure you have the environment variable `S3_MODEL_BUCKET_NAME` set.

## dependencies

Must have docker installed. If running on GPU, you need nvidia docker and other things probably.

## deploying to another machine

```bash
rsync -rav -e ssh --exclude='.DS_Store' models/ myuser@192.168.1.1:/home/me/location
```

## describing saved models

```bash
saved_model_cli show --dir models/wave-u-net-m4/1 --all
```

## TODO

Need some way of documenting all the models used

