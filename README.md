# Python Function sample for riff on Knative

## Running this function on riff via a custom invoker

1. Deploy your function

#### Pushing image to DockerHub

```bash
riff function create custom upper \
    --invoker-url https://raw.githubusercontent.com/matthewmcnew/python3-function-invoker/custom-invoker-yaml/python3-invoker.yaml \
    --git-repo https://github.com/matthewmcnew/python-function \
    --image $DOCKER_ID/python-upper \
    --handler upper --artifact upper.py \
    --verbose
```

#### Pushing image to GCR

```sh
riff function create custom upper \
    --invoker-url https://raw.githubusercontent.com/matthewmcnew/python3-function-invoker/custom-invoker-yaml/python3-invoker.yaml \
    --git-repo https://github.com/matthewmcnew/python-function \
    --handler upper --artifact upper.py \
    --image gcr.io/$GCP_PROJECT/python-upper \
    --verbose
```

2. Invoke your function

```bash
riff service invoke upper --text -- -d 'i would like to shout'
```

output
```bash
curl 35.221.50.30/ -H 'Host: upper.default.example.com' -H 'Content-Type: text/plain' -d 'i would like to shout'
I WOULD LIKE TO SHOUT
```


## Running this function on riff from as an image

1. Deploy your function

```bash
riff service create upper --image matthewmcnew/python-upper-example
```

2. Invoke your function

```bash
riff service invoke upper --text -- -d 'i would like to shout'
```

output
```bash
curl 35.221.50.30/ -H 'Host: upper.default.example.com' -H 'Content-Type: text/plain' -d 'i would like to shout'
I WOULD LIKE TO SHOUT
```

## Building this function as docker image

1. Build your docker image and push to your image repository

```bash
docker build . -t matthewmcnew/python-upper-example
docker push matthewmcnew/python-upper-example
```
