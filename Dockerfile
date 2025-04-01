FROM cypress/base

WORKDIR /app

COPY . .

RUN npm config set strict-ssl false 

RUN apt-get update && apt-get install -y

CMD ["npm", "install", "cypress"]

ENV CYPRESS_CONFIG_FILE="cypress.config.js"

ENTRYPOINT ["npx", "cypress", "run"]
