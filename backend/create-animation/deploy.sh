## Variables
BUCKET_NAME=test209739
FUNCTION_NAME=209739__create-animation


## Zip archive
rm lambdaCode.zip || true
zip -r lambdaCode.zip ./* --exclude 'deploy.sh' --exclude 'lambdaCode.zip'


## copy to s3
aws s3 cp lambdaCode.zip s3://test209739/code/notify/lambdaCode.zip

## update function codel
aws lambda update-function-code --function-name 209739__create-animation --s3-bucket test209739 --s3-key code/place-order/lambdaCode.zip  --publish
