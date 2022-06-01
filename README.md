# Scalingo-cli-ci

## À propos

Image docker de la cli scalingo en vue d'une intégration CI.
Contient aussi le nécessaire pour générer des clefs ssh à usage unique pour les déploiments

## Setup repository variables
DOCKERHUB_USERNAME
DOCKERHUB_TOKEN => [to generate an access tolen follow these instructions ~5min](https://docs.docker.com/docker-hub/access-tokens/)

### TO DOCUMENT

:warning: Do NOT put a comment between two instruction on a multiline script, the yaml validation will not fail but you'll have this not explicit error when trying to run your workflow.

![img.png](img.png)

### TODO
- Factoriser en passant sur serenity-workflows.
- Si le tag est déja présent sur dockerhub abort.
- Activer schedule

- Améliorer l'interaction avec l'api gh en filtrant le retour curl en json avec jq (https://stackoverflow.com/questions/62595453/filtering-from-json-output-from-curl-using-jq)
  Objectif obtenir le "browser_download_url" du champ 'assets' qui à le 'name' qui contient la 'target_architecture'.