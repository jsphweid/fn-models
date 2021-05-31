# fn-models

IMPORTANT: This is a pretty bare repo because the actual models aren't committed and for now are in private storage. 
The models should be stored in `models/` like `models/half-plus-two-cpu/1/saved_model.pb` etc.

## dependencies

Must have docker installed.

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

