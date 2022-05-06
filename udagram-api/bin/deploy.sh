# Deploy to AWS EB
# cd ./www
eb init udagram-api --region us-east-1
eb setenv DB_PORT=$DB_PORT
eb setenv PORT=$PORT
eb setenv POSTGRES_DB=$POSTGRES_DB
eb setenv POSTGRES_HOST=$POSTGRES_HOST
eb setenv POSTGRES_PASSWORD=$POSTGRES_PASSWORD
eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME
eb setenv RDS_DIALECT=$RDS_DIALECT
eb setenv JWT_SECRET=$JWT_SECRET
eb use udagram-api-dev
eb deploy udagram-api-dev