# Scalingo-cli-ci

## À propos

# Base
Image docker de la cli scalingo en vue d'une intégration CI.
Contient aussi le nécessaire pour générer des clefs ssh à usage unique pour les déploiements

# Variante
## Avec Node
Pour certaines opérations (eg: migration de bdd) il est souhaitable de pouvoir executer des scripts nodes.

# Usage 
# Tester la cli en local pour le développement
```sh
docker run -it rcambonie/scalingo-cli:1.23.0 bash
```

# Se connecter sur son compte avec un token (iso ci) 
## L'api token se génére sur (https://dashboard.scalingo.com/account/tokens):
scalingo login --api-token=TOKEN

# Maintenance
## Setup repository variables
DOCKERHUB_USERNAME
DOCKERHUB_TOKEN => [to generate an access tolen follow these instructions ~5min](https://docs.docker.com/docker-hub/access-tokens/)

## TO DOCUMENT

:warning: Do NOT put a comment between two instruction on a multiline script, the yaml validation will not fail but you'll have this not explicit error when trying to run your workflow.

![img.png](img.png)

## TODO
- Factoriser en passant sur serenity-workflows.

- Améliorer l'interaction avec l'api gh en filtrant le retour curl en json avec jq (https://stackoverflow.com/questions/62595453/filtering-from-json-output-from-curl-using-jq)
  Objectif obtenir le "browser_download_url" du champ 'assets' qui à le 'name' qui contient la 'target_architecture'.

