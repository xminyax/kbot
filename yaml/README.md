### README.md

| NAME               | PROMPT                                                                                                                                                                                           | DESCRIPTION                                                                                                                     | EXAMPLE                 |
|--------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------|-------------------------|
| app                | make a pod from gcr.io/tidy-shard-382112/kbot with the name kbot the application runs on port 8080                                                                                               | make a pod with the name kbot the application runs on port 8080                                                                 | [app.yaml](https://github.com/xminyax/kbot/blob/main/yaml/app.yaml)                |
| app-livenessProbe  | make the kbot-livenessProbe from gcr.io/tidy-shard-382112/kbot work on port 8080 with a maximum of 5 errors                                                                                      | make livenessProbe on port 8080 with a maximum of 5 errors                                                                      | [app-livenessProbe.yaml](https://github.com/xminyax/kbot/blob/main/yaml/app-livenessProbe.yaml)  |
| app-readinessProbe | make the kbot-readinessProbe from gcr.io/tidy-shard-382112/kbot work on port 8080 with a maximum of 5 errors                                                                                     | make readinessProbe on port 8080 with a maximum of 5 errors                                                                     | [app-readinessProbe.yaml](https://github.com/xminyax/kbot/blob/main/yaml/app-readinessProbe.yaml) |
| app-volumeMounts   | make kbot-livenessProbe and readinessProbe from gcr.io/tidy-shard-382112/kbot the application works on port 8080 with a maximum of 5 errors and add resource allocations and mount the data disk | make application works on port 8080 with  resource allocations and mount the data disk                                          | [app-volumeMounts.yaml](https://github.com/xminyax/kbot/blob/main/yaml/app-volumeMounts.yaml)   |
| app-cronjob        | make an app-cronjob that will run the Hi k8s command every 10 minutes                                                                                                                            | make an app-cronjob that will run the Hi k8s command every 10 minutes                                                           | [app-cronjob.yaml](https://github.com/xminyax/kbot/blob/main/yaml/app-cronjob.yaml)        |
| app-job            | make an app-job of synchorning data from Google Cloud Storage (GCS) to local disk storage                                                                                                        | make an app-job of synchorning data from Google Cloud Storage (GCS) to local disk storage                                       | [app-job.yaml](https://github.com/xminyax/kbot/blob/main/yaml/app-job.yaml)            |
| app-multicontainer | make an app-multicontainer that makes two containers one with nginx and one with debian both use a shared html folder add limits to each container                                               | makes two containers nginx and one debian both use a shared html folder add limits to each container                            | [app-multicontainer.yaml](https://github.com/xminyax/kbot/blob/main/yaml/app-multicontainer.yaml) |
| app-resources      | make app-livenessProbe max 5 errors and readinessProbe max 5 errors from gcr.io/tidy-shard-382112/kbot port 8080 and add a resource limit                                                        | make app a resource limit                                                                                                       | [app-resources.yaml](https://github.com/xminyax/kbot/blob/main/yaml/app-resources.yaml)      |
| app-secret-env     | make app-secret-env based on redis inside create variables user_name and password which you take from the secret mysecret of the corresponding keys uname and pass                               | make app with variables user_name and password which you take from the secret mysecret of the corresponding keys uname and pass | [app-secret-env.yaml](https://github.com/xminyax/kbot/blob/main/yaml/app-secret-env.yaml)     |