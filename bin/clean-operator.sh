#!/usr/bin/env bash

oc -n openshift-gitops delete application bootstrap operator operator-instance
oc -n openshift-operators delete csv openshift-pipelines-operator-rh.v1.14.3
oc get crds -o name | grep tekton | xargs oc delete
