#!/bin/bash

oc apply -f mariadb/mariadb-ns.yml
oc process -f mariadb/mariadb-pvc.yml -p=MAS_AIBROKER_STORAGE_CLASS=$MAS_AIBROKER_STORAGE_CLASS | oc apply -f - 
oc apply -f mariadb/mariadb-sa.yml
oc process -f mariadb/mariadb-np.yml -p=MAS_INSTANCE_ID=$MAS_INSTANCE_ID | oc apply -f - 
oc apply -f mariadb/mariadb-secret.yml
oc apply -f mariadb/mariadb-deployment.yml
oc apply -f mariadb/mariadb-service.yml
