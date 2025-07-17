# Docker Image Creation and Nginx Static Website Hosting

This repository contains two separate Docker-based setups:

1. **Docker_ImageCreation/** – A Dockerfile to create a Alpine-based image with OpenJDK 17 and user permissions setup.
2. **myapp/** – A simple web application that installs Nginx inside a Docker container and serves a static HTML page (`index.html`).
---

## Docker Image Creation (`Docker_ImageCreation`)

This part demonstrates:

- Using **Alpine Linux** as base image
- Installing **OpenJDK 17**, `bash`, and `coreutils`
- Creating a **non-root user (`testuser`)** with permission hardening
- Keeping the container running using `tail -f /dev/null`

### Build the image

```bash
cd Docker_ImageCreation
docker build -t myiamge:1.0 .

