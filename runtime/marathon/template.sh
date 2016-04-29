#!/bin/sh
cat >test1.json <<EOF
{
  "id": "/test1",
  "container": {
    "type": "DOCKER",
    "docker": {
      "image": "mitelone/marathon-test-app:$WERCKER_GIT_COMMIT",
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
    "HAPROXY_0_VHOST":"$PUBLIC_SLAVE_DNS",
    "HAPROXY_0_PATH": "/devops"
  }
}
EOF
