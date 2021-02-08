## Deploy the AppEngine application
* In CloudShell, git clone this repository
```buildoutcfg
$ pip install --user -r requirements.txt -t lib
$ gcloud app create
$ gcloud app deploy
```

By executing these commands on the Cloud Shell, the project id is automatically
 applied to the application and the application URL will be
 `https://[project id].appspot.com`.
