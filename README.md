## 🔹 **Fonctionnement de MySQL**
### 📌 **1. Architecture et Composants**
MySQL suit une architecture **client-serveur**, ce qui signifie qu’il y a :
- **Le serveur MySQL** : Il gère les bases de données et exécute les requêtes SQL.
- **Le client MySQL** : Il permet aux utilisateurs ou applications d’envoyer des requêtes au serveur.

Les principales composantes de MySQL :
- **Moteurs de stockage** : MySQL propose plusieurs moteurs de stockage comme **InnoDB** (transactions, intégrité référentielle) et **MyISAM** (rapide mais sans transactions).
- **Gestion des connexions** : MySQL supporte plusieurs connexions simultanées grâce à un gestionnaire de threads.
- **Cache de requêtes** : Il optimise les performances en mémorisant les résultats de certaines requêtes fréquentes.

---

### 📌 **2. Manipulation des données avec SQL**
MySQL utilise **SQL** pour interagir avec les bases de données. Les commandes principales sont :

- **CRUD (Create, Read, Update, Delete)** :
  - `CREATE TABLE` : Créer une table.
  - `INSERT INTO` : Ajouter des données.
  - `SELECT` : Récupérer des données.
  - `UPDATE` : Modifier des données.
  - `DELETE` : Supprimer des données.

- **Gestion des bases de données** :
  - `CREATE DATABASE` : Créer une base.
  - `DROP DATABASE` : Supprimer une base.

- **Gestion des utilisateurs et des permissions** :
  - `CREATE USER` / `GRANT` : Ajouter un utilisateur et lui donner des permissions.

---

### 📌 **3. Transactions et Sécurité**
- **Transactions** : Permettent d'exécuter plusieurs requêtes de manière atomique (`COMMIT`, `ROLLBACK`).
- **Sécurité** :
  - Gestion des utilisateurs avec mots de passe.
  - Chiffrement des connexions.
  - Sauvegardes et réplication.

---

### 📌 **4. Optimisation et Performances**
- **Indexation** (`INDEX`) : Accélère les requêtes en facilitant la recherche.
- **Partitionnement** : Divise les grandes tables pour améliorer l’accès aux données.
- **Réplication** : Synchronisation entre plusieurs serveurs pour améliorer la disponibilité.

---
