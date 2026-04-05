# ShopLite DevOps – Dockerized Full Stack Application

This repository contains the **Dockerized environment** for the ShopLite E‑Commerce application. The system consists of a Next.js frontend, ASP.NET Core Web API backend, MySQL database, and Nginx reverse proxy, all running using Docker Compose.

---

# 🧱 System Architecture

```
Browser
   |
   v
Nginx (Reverse Proxy)
   |            |
   v            v
Next.js      ASP.NET API
                  |
                  v
                MySQL
```

---

# 🧰 Tech Stack

| Layer            | Technology           |
| ---------------- | -------------------- |
| Frontend         | Next.js (React)      |
| Backend          | ASP.NET Core Web API |
| Database         | MySQL                |
| Reverse Proxy    | Nginx                |
| Containerization | Docker               |
| Orchestration    | Docker Compose       |

---

# 📁 Project Structure

```
shoplite-devops/
│
├── docker-compose.yml
│
├── nextjs/
│   └── Dockerfile
│
├── dotnet/
│   └── Dockerfile
│
├── nginx/
│   └── default.conf
│
└── mysql/
    └── init.sql
```

---

# ⚙️ Prerequisites

Make sure you have installed:

* Docker Desktop
* Docker Compose
* Git
* Node.js (for local frontend development)
* .NET 8 SDK (for local backend development)

Verify Docker:

```
docker --version
docker compose version
```

---

# 🚀 How to Run the Application

### Step 1 – Clone All Repositories

Make sure the folder structure is like this:

```
C:\Projects\
│
├── shoplite-frontend
├── shoplite-api
└── shoplite-devops
```

---

### Step 2 – Start Docker Containers

Navigate to the devops folder:

```
cd shoplite-devops
```

Run:

```
docker compose build
docker compose up
```

---

# 🌐 Application URLs

| Service                  | URL                                                            |
| ------------------------ | -------------------------------------------------------------- |
| Frontend                 | [http://localhost:3000](http://localhost:3000)                 |
| Backend API              | [http://localhost:5000/swagger](http://localhost:5000/swagger) |
| Full Application (Nginx) | [http://localhost:8080](http://localhost:8080)                 |
| MySQL                    | localhost:3307                                                 |

---

# 🐳 Docker Services

| Service  | Description                |
| -------- | -------------------------- |
| mysql    | MySQL database container   |
| backend  | ASP.NET Core API container |
| frontend | Next.js container          |
| nginx    | Reverse proxy              |

---

# 🔌 Container Communication

Containers communicate using service names:

| Service  | Hostname |
| -------- | -------- |
| MySQL    | mysql    |
| Backend  | backend  |
| Frontend | frontend |
| Nginx    | nginx    |

Example connection string used by ASP.NET Core:

```
server=mysql;port=3306;database=shoplite;user=root;password=root;
```

---

# 🗄️ Database Initialization

The MySQL container automatically runs:

```
/mysql/init.sql
```

This script creates:

* Database: shoplite
* Products table
* CartItems table

---

# 🛠️ Useful Docker Commands

| Command                    | Description             |
| -------------------------- | ----------------------- |
| docker compose up          | Start containers        |
| docker compose down        | Stop containers         |
| docker compose build       | Build containers        |
| docker ps                  | List running containers |
| docker logs container_name | View logs               |

---

# 📦 Future DevOps Improvements

* Add GitHub Actions CI/CD pipeline
* Push Docker images to Docker Hub
* Deploy to Kubernetes (Minikube or AWS EKS)
* Add HTTPS with Nginx
* Add environment-specific configs

---

# 👨‍💻 Author

This project was built as a **Full Stack + DevOps Portfolio Project** demonstrating:

* Frontend development (Next.js)
* Backend API development (ASP.NET Core)
* Database design (MySQL)
* Containerization (Docker)
* Reverse Proxy (Nginx)
* Multi-container orchestration (Docker Compose)

---

# 📄 License

This project is for educational and portfolio purposes.
