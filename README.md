# 🏙️ Cidades ESG Inteligentes - API (.NET 8)

Este repositório contém a infraestrutura DevOps e a API desenvolvida em .NET 8 para o projeto **Cidades ESG Inteligentes**. O projeto contempla a containerização da aplicação com Docker, orquestração de ambiente local com Docker Compose e automação de integração contínua (CI/CD) via GitHub Actions.

---

## 🛠️ Tecnologias Utilizadas

* **Linguagem / Framework:** .NET 8 (C#)
* **Containerização:** Docker
* **Orquestração Local:** Docker Compose
* **Base de Dados:** PostgreSQL 15 Alpine
* **CI/CD:** GitHub Actions

---

## 📂 Estrutura do Repositório

```text
cidades-esg-inteligentes-devops/
├── .github/
│   └── workflows/
│       └── ci-cd.yml         # Pipeline de Integração Contínua (GitHub Actions)
├── src/
│   ├── MeuProjeto.csproj     # Ficheiro do projeto .NET 8
│   └── Program.cs            # Código-fonte da API
├── .gitignore                # Ficheiros ignorados pelo Git
├── Dockerfile                # Configuração para construção da imagem Docker
├── docker-compose.yml        # Orquestração dos serviços (API + PostgreSQL)
└── README.md                 # Documentação principal