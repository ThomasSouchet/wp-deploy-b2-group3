#### Contexte du projet

Il s'agit de crééer un blog sous `Wordpress` avec une base de données `Mysql` pour publier des articles, les modifier, d'en rajouter et d'en supprimer. Le blog sera déployé sur un `Bucket S3` d'amazon `aws`

#### Environnement local

Développer un environnement local `image docker` avec tous les services nécessaires `wordpress`, `Mysql` ainsil'exécution de de blog wordpress.

developpement contenant les services nécessaires à l'éxécution de wordpress en local (sur leurs postes) ainsi que la procédure d'utilisation de cet environnement.


--> To be completed




De définir et d'écrire le code terraform qui sera utilisé pour déployer l'infrastructure de l'environnement de production (voir les spécifications jointes en ressources). Vos configurations terraform devront utiliser un système collaboratif de gestion des states, dont les informations vous seront transmises par la DSI, pour que n'importe quelle personne de votre service ayant les droits nécéssaires puisse intervenir et appliquer des modifications sur l'infrastructure.
De définir un pipeline de CI pour vos configurations terraform de telle sorte que seules les configurations valides, bien formattées et pour lesquelles il n'y a plus aucune action détéctée à la génération d'un plan d'exécution soient autorisées à être push sur la branche principal de votre repository.
Afin de valider la fonctionnalité de l'infrastructure, on vous demande d'installer un wordpress vierge sur celle-ci.

Une fois ceci en place, vous devrez proposer une solution de pipeline CI/CD afin que les developpeurs puissent publier des modifications sur un repository contenant le code source du wordpress et effectuer des tests d'intégration continue; une fois ces tests passés avec succès, le code sera alors déployé sur l'infrastructure.
