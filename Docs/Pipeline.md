
## Pipeline

From the root of the project:
- `npm run frontend:install`    - To install frontend dependencies.
- `npm run frontend:build`      - To build the Angular/Frontend.
- `npm run frontend:deploy`     - To deploy the project to S3 using `./udagram-frontend/bin/deploy.sh` deploy script.
- `npm run backend:install`     - To install backend dependencies.
- `npm run backend:build`       - To transpile the Typescript/Backend.
- `npm run backend:aws-eb`      - To Install AWS-EB using `./udagram-api/bin/aws-eb.sh` install script.
- `npm run backend:deploy`      - To deploy the project to EB using `./udagram-api/bin/deploy.sh` deploy script.