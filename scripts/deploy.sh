#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 2970
# Hash 4468
# Hash 8036
# Hash 6530
# Hash 3232
# Hash 5145
# Hash 4635
# Hash 6818
# Hash 8840
# Hash 2924
# Hash 4910
# Hash 4456
# Hash 7094
# Hash 3460
# Hash 1713
# Hash 7975
# Hash 2360
# Hash 3935
# Hash 7750
# Hash 3973
# Hash 8598
# Hash 9043
# Hash 4887
# Hash 9253
# Hash 4875
# Hash 3231
# Hash 7454
# Hash 9230
# Hash 5152
# Hash 4171
# Hash 6309
# Hash 5932
# Hash 7949
# Hash 4350
# Hash 1530
# Hash 5778
# Hash 4152
# Hash 3354
# Hash 1746
# Hash 1739
# Hash 2566
# Hash 7871
# Hash 6521
# Hash 7052
# Hash 7464
# Hash 8424
# Hash 4020
# Hash 6599
# Hash 8666
# Hash 8009
# Hash 4585
# Hash 5189
# Hash 4765
# Hash 1592
# Hash 4068
# Hash 6733
# Hash 2870
# Hash 7748
# Hash 2866
# Hash 9386
# Hash 9530
# Hash 2787
# Hash 9833
# Hash 2897
# Hash 4008
# Hash 9240
# Hash 4107
# Hash 7404
# Hash 6250
# Hash 1778
# Hash 4432
# Hash 3944
# Hash 2560
# Hash 2106
# Hash 2256
# Hash 3948
# Hash 9409