#!/bin/bash
cat > test1.json <<EOF
{
  "id": "/test1",
  "container": {
    "type": "DOCKER",
    "docker": {
      "image": "$APP_IMAGE",
      "network": "BRIDGE",
      "network": "BRIDGE",
      "portMappings": [
        { "hostPort": 0, "containerPort": 8080, "servicePort": 10099, "protocol": "tcp" }
      ]
    }
  },
  "instances": 1,
  "cpus": 0.1,
  "mem": 128,
  "healthChecks": [{
      "protocol": "HTTP",
      "path": "/devops",
      "portIndex": 0,
      "timeoutSeconds": 10,
      "gracePeriodSeconds": 10,
      "intervalSeconds": 2,
      "maxConsecutiveFailures": 10
  }],
  "labels":{
    "HAPROXY_GROUP":"external",
    "HAPROXY_0_VHOST":"dcos-PublicSlaveLo-1U9GDZ8EFGHCD-1052101230.us-east-1.elb.amazonaws.com",
    "HAPROXY_0_PATH": "/devops"
  }
}
EOF