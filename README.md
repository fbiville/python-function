# Python Function sample for riff on knative
 
A demo of the uppercasing python function on riff 0.1.3.

Create the function
```bash
riff function create custom pythondemo --git-repo https://github.com/matthewmcnew/python-function --artifact upper.py --image gcr.io/$GCP_PROJECT/mypthon --verbose --handler upper --invoker-url https://raw.githubusercontent.com/matthewmcnew/python3-function-invoker/master/python3-invoker.yaml
```

Invoke it with riff service service invoke
```bash
riff service invoke pythondemo --text -- -w '\n' -d riffknative
```
and see this result:
```
curl 35.221.5.82/ -H 'Host: pythondemo.default.example.com' -H 'Content-Type: text/plain' -w '\n' -d riffknative
RIFFKNATIVE
```
