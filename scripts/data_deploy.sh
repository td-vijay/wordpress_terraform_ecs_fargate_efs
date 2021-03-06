set -e
set -x

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

mkdir "${DIR}/output" || true

terraform plan -out ${DIR}/output/terraform_plan_data terraform_data/ 

terraform apply ${DIR}/output/terraform_plan_data
