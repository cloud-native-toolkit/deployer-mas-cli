#!/bin/bash

#prerequisites
# openshift pipelines installed
# deployer cluster tasks
# OpenShift client - oc
oc apply -f https://raw.githubusercontent.com/cloud-native-toolkit/deployer-operator-masauto/main/8.11.x/pipeline.yaml
sleep 20
oc create -f https://raw.githubusercontent.com/cloud-native-toolkit/deployer-operator-masauto/main/8.11.x/pipeline-run.yaml
