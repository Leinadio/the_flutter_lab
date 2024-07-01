# Projet Flutter avec Architecture Hexagonale

Ce projet Flutter utilise une architecture hexagonale, intégrant les bibliothèques Riverpod pour la gestion d'état et Freezed pour la génération de code. L'architecture hexagonale permet de séparer les préoccupations et d'assurer une forte modularité, facilitant ainsi les tests et la maintenance du code.

## Structure des Dossiers

La structure des dossiers du projet est la suivante :

```
lib/
├── core/
│   ├── entities/
│   ├── usecases/
│   ├── repositories/
├── adapters/
│   ├── controllers/
│   ├── services/
│   ├── repositories/
├── ui/
│   ├── screens/
│   ├── widgets/
└── main.dart
```

### `core/`
Ce dossier contient les éléments centraux de l'application, indépendants des détails d'implémentation ou des frameworks utilisés.

- `entities/`: Définit les entités du domaine, qui sont des objets métier avec leurs attributs et leurs comportements. Ces entités sont au cœur de l'architecture hexagonale et sont utilisées à travers différentes couches de l'application.

- `usecases/`: Contient les cas d'utilisation (use cases) de l'application. Chaque cas d'utilisation représente une action ou une opération métier que l'application peut effectuer. Ils orchestrent l'interaction entre les entités et les repositories.

- `repositories/`: Définit les interfaces des repositories, qui sont des contrats que les implémentations concrètes doivent respecter. Les repositories gèrent la persistance et la récupération des entités, abstraites de la source de données réelle (API, base de données, etc.).

### `adapters/`
Ce dossier contient les implémentations concrètes qui adaptent les interfaces définies dans `core/`.

- `controllers/`: Contient les contrôleurs qui gèrent la logique de présentation et orchestrent les interactions entre les cas d'utilisation et les éléments de l'interface utilisateur.

- `services/`: Implémente les services spécifiques à l'application qui ne sont pas directement liés aux cas d'utilisation ou aux entités, comme des services de communication réseau, de stockage local, etc.

- `repositories/`: Contient les implémentations concrètes des interfaces de repositories définies dans `core/`. Ces implémentations interagissent avec des sources de données spécifiques (par exemple, des API REST, des bases de données locales).

### `ui/`
Ce dossier contient tout ce qui est lié à l'interface utilisateur de l'application.

- `screens/`: Contient les différentes pages ou écrans de l'application. Chaque écran représente une vue spécifique et utilise des widgets pour afficher les données et capturer les interactions de l'utilisateur.

- `widgets/`: Contient les composants réutilisables de l'interface utilisateur. Ces widgets peuvent être utilisés dans différents écrans pour assurer la cohérence de l'interface.

### `main.dart`
Le point d'entrée de l'application Flutter. Ce fichier initialise l'application, configure les providers Riverpod et lance l'interface utilisateur principale.

## Riverpod pour la Gestion d'État

Riverpod est utilisé pour gérer l'état de l'application de manière réactive et modulaire. Les providers Riverpod permettent de créer des dépendances claires et de facilement injecter les dépendances nécessaires aux différentes parties de l'application.

## Freezed pour la Génération de Code

Freezed est utilisé pour générer des classes immuables et des unions de types. Cela facilite la gestion des états complexes et des modèles de données dans l'application, tout en réduisant le boilerplate code.

## Conclusion

Cette architecture hexagonale en Flutter permet de séparer les préoccupations, d'assurer une forte modularité et de faciliter la maintenance et les tests. En utilisant Riverpod pour la gestion d'état et Freezed pour la génération de code, nous améliorons la robustesse et la maintenabilité de notre codebase.