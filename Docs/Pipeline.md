
## Pipeline
Continuous Integration
GitHub
The developers commit and push their code to the GitHub repository which is linked to the CircleCI platform. GitHub triggers the CircleCI platform when code is pushed to the repository.

CircleCI
CircleCI reads the .circleci/config.yml file which tells the service what has to be done. In the case of Udagram, there are 2 jobs (frontend & server) to be run by CircleCI.

Frontend:install dependencies,Runs the build script given in the package.json file. Then uses AWS CLI to deploy assets to S3.
Server: install dependencies,Runs the build script, set all environment variables from CircleCI configuration to eb, then runs the archive script. Then uses AWS CLI to deploy archive to S3.

From the root of the project:
- `npm run frontend:install`    - To install frontend dependencies.
- `npm run frontend:build`      - To build the Angular/Frontend.
- `npm run frontend:deploy`     - To deploy the project to S3 using `./udagram-frontend/bin/deploy.sh` deploy script.
- `npm run backend:install`     - To install backend dependencies.
- `npm run backend:build`       - To transpile the Typescript/Backend.
- `npm run backend:aws-eb`      - To Install AWS-EB using `./udagram-api/bin/aws-eb.sh` install script.
- `npm run backend:deploy`      - To deploy the project to EB using `./udagram-api/bin/deploy.sh` deploy script.