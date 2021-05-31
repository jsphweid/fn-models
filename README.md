# fn-models

models for project:fn

NOTE: This is a pretty bare repo because the actual models aren't committed and for now are in private storage.

### dependencies

Must have docker installed.

### deploying to another machine

```bash
rsync -rav -e ssh --exclude='.DS_Store' models/ myuser@192.168.1.1:/home/me/location
```

### describing saved models

```bash
saved_model_cli show --dir models/wave-u-net-m4/1 --all
```

### TODO

Need some way of documenting all the models used

