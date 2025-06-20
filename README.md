# Superset Railway Simple

Repo deploy Apache Superset di Railway tanpa database bawaan, langsung konek ke Neon PostgreSQL.

## Cara deploy

1. Buat project baru di Railway (Blank Project)
2. Deploy dari repo ini
3. Atur environment variable:

| Key                    | Value                                     |
|------------------------|-------------------------------------------|
| SUPERSET_DATABASE_URI  | postgresql://user:password@host/dbname?sslmode=require |
| SUPERSET_SECRET_KEY    | randomstring                             |

4. Deploy dan buka app

## Default login

- username: admin
- password: admin
