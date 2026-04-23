# 🐳 Node.js Hello World — Docker Image

A simple **Node.js Hello World** app containerized using Docker.  
Docker Image: [`brijesh408/node_helloworld:latest`](https://hub.docker.com/r/brijesh408/node_helloworld)

---

## 📦 Docker Image

| Property | Value |
|----------|-------|
| Base Image | `node:22-alpine` |
| Exposed Port | `3000` |
| Docker Hub | `brijesh408/node_helloworld:latest` |

---

## 🚀 Run the Container

Pull and run the image directly from Docker Hub:

```bash
docker pull brijesh408/node_helloworld:latest
docker run -p 3000:3000 brijesh408/node_helloworld:latest
```

Then open your browser at: **http://localhost:3000**

---

## 🛠️ Build Locally

Clone the repo and build the image yourself:

```bash
git clone https://github.com/Brijesh-0106/1st_Dockerfile_to_image_code.git
cd 1st_Dockerfile_to_image_code
docker build -t node_helloworld .
docker run -p 3000:3000 node_helloworld
```

---

## 📄 Dockerfile Explained

```dockerfile
FROM node:22-alpine        # Use Node.js 22 on lightweight Alpine Linux
WORKDIR /app               # Set working directory inside the container
COPY . .                   # Copy all project files into the container
RUN npm install            # Install Node.js dependencies
RUN touch check.txt        # Create a sample file (runs at build time)
EXPOSE 3000                # Expose port 3000 for the app

CMD ["npm", "start"]       # Start the app (runs only when container starts)
```

> **Key concept:** Everything above `CMD` runs **during the image build**.  
> `CMD` only runs **when the container is started**.

---

## 📁 Project Structure

```
.
├── Dockerfile       # Docker configuration
├── index.js         # Main Node.js app
├── package.json     # Node.js dependencies & scripts
└── README.md        # Project documentation
```

---

## 🐋 Docker Hub

The image is publicly available on Docker Hub:

👉 **[brijesh408/node_helloworld](https://hub.docker.com/r/brijesh408/node_helloworld)**

---

## 👤 Author

**Brijesh** — [@Brijesh-0106](https://github.com/Brijesh-0106)