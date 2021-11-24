# Intelcia Group

Le but de ce projet est de modéliser et implémenter une base de données PostgreSQL d’une plate-forme de gestion de l'entreprise qui offre la possibilité de gérer les ressources de l'entreprise.

## Contexte du projet

Intelcia est organisée par divisions implantées géographiquement (national et international) en des localités distinctes. Chaque division est identifiée par un numéro et possède un nom.

Les salariés de l’entreprise sont identifiés par leur numéro de matricule, travaillent dans une division où ils exercent une fonction. Ils perçoivent un salaire, et s’ils sont vendeurs prennent une commission.

Les salariés peuvent être regroupés dans des équipes représentant des pôles de compétence. Il est possible que certains salariés ne travaillent dans aucune division. Les salariés sont encadrés par un chef direct.

Un projet est coordonné par un salarié et le chef de projet, est caractérisé par un numéro, une appellation, un thème, des dates de début et de fin de réalisation. Les projets sont réalisés pour des clients à une date d’échéance.

Un projet est constitué de tâches caractérisées par un coût.

Des salariés participent à tout ou partie de ces tâches entre deux dates déterminées.

Les salariés utilisent des matériels identifiés par un numéro, désignés par un nom, caractérisés par leur type et la référence du constructeur. Un matériel peut lui-même être composé d’autres matériels.

On donne le dictionnaire des données suivant :

- Activité du client
- Adresse de la division
- Adresse du client
- CA de la division
- Commission du salarié
- Contact chez le client
- Coût de la tâche
- Date début
- Date début de projet
- Date échéance
- Date fin
- Date fin de projet
- Fax du client
- Fonction du salarié
- Libellé du projet
- Nombre d’employés
- Nom de la division
- Nom de la tâche
- Nom du client
- Nom du matériel
- Nom du salarié
- Numéro de la division
- Numéro de l’équipe
- Numéro du matériel
- Numéro du client
- Numéro du projet
- Numéro du salarié
- Prénom du salarié
- Raison sociale
- Référence constructeur
- Rémunération du salarié
- Spécialisation
- Téléphone du client
- Thème du projet
- Type de matériel
