sudo apt-get install jq
export API_URL_SSM="`aws ssm get-parameter --name /t39ed68d-105340258/$1/api/url`"
export API_URL=`echo $API_URL_SSM | jq -r '.Parameter.Value'`
curl --fail "$API_URL$2"