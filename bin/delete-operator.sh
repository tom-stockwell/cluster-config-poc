#!/usr/bin/env bash

oc delete application -n openshift-gitops bootstrap operator operator-instance
oc delete tektonconfig config
sleep 10
oc get tektoninstallersets -o name | xargs oc delete
sleep 5
oc get csv -n openshift-operators -o name | grep pipelines | xargs oc delete -n openshift-operators
oc get crds -o name | grep tekton | xargs oc delete
