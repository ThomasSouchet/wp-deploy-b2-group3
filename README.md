#### Contexte du projet

Il s'agit de créer un blog sous `Wordpress` avec une base de données pour publier des articles, les modifier, d'en rajouter et d'en supprimer.
Le blog sera déployé sur une instance `instance EC2` avec une base de donnée `Mysql` déployée sur une `instance RDS` d'amazon `AWS`.
La configuration de cette infrastructure `AWS` sera gérée par l'outil Terraform.

#### Workflow de développement

Cloner le repository en local.
Faire un ```docker-compose up```.
Travailler dans le dossier `wp_data` depuis une branche autre que `main`.
Pousser vos changements sur `GitLab`.
Demander une `merge review`.
Lorsque vos changements seront approuvés par le mainteneur votre code sera automatiquement déployé en Production.
