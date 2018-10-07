# Python Function sample for riff on Knative

## Running this function on riff

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

## Building this function

1. Build your docker image and push to your image repository

```bash
docker build . -t matthewmcnew/python-upper-example
docker push matthewmcnew/python-upper-example
```
