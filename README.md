# Scalingo-cli-ci

## À propos

Image docker de la cli scalingo en vue d'une intégration CI.
contient aussi le nécessaire pour générer des clefs ssh à usage unique pour les déploiments

### TODO
- mettre en place un workflow de build de l'image docker et de et push sur dockerhub (ref ?: https://docs.docker.com/ci-cd/github-actions/ )
- tagger avec la version de release de scalingo-cli

- écouter les release scalingo-cli pour automatiser le deploy

- Améliorer l'interaction avec l'api gh en filtrant le retour curl en json avec jq (https://stackoverflow.com/questions/62595453/filtering-from-json-output-from-curl-using-jq)
  Objectif obtenir le "browser_download_url" du champ 'assets' qui à le 'name' qui contient la 'target_architecture'

