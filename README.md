# Docker Image Creation and Nginx Static Website Hosting

This repository contains two separate Docker-based setups:

1. **Docker_ImageCreation/** – A Dockerfile to create a Alpine-based image with OpenJDK 17 and user permissions setup.
2. **myapp/** – A simple web application that installs Nginx inside a Docker container and serves a static HTML page (`index.html`).
---

## 1. Docker Image Creation (`Docker_ImageCreation`)

This part demonstrates:

- Using **Alpine Linux** as base image
- Installing **OpenJDK 17**, `bash`, and `coreutils`
- Creating a **non-root user (`testuser`)** with permission hardening
- Keeping the container running using `tail -f /dev/null`

### Build the image

```
cd Docker_ImageCreation
docker build -t myimage:1.0 .
```
---

## 2. Launch MyApp

This part demonstrates:

- Pulling the image we created i.e **myimage:1.0**
- Installing Nginx
- Creating **index.html** which displays simple message

### Running MyApp

- Build the new image
  
```
cd myapp
docker build -t myapp:1.0 .
```

- Run the container
  
```
docker run -p 9191:9191 image_name
```



<img width="507" height="232" alt="Screenshot 2025-07-17 at 12 25 39 PM" src="https://github.com/user-attachments/assets/17e48e67-3f1a-477a-9444-d0fc87e6867b" />

---

### Expose App using Ngrok

- Start ngrok
  
```
ngrok http 9191
```


<img width="688" height="305" alt="Screenshot 2025-07-17 at 12 27 24 PM" src="https://github.com/user-attachments/assets/702e7e3a-f6ec-43ed-b27d-27a14fcf84f3" />




- You’ll get a public URL. Go to that URL to view your html page




<img width="507" height="232" alt="Screenshot 2025-07-17 at 12 27 07 PM" src="https://github.com/user-attachments/assets/d4d64208-b185-4fc9-aa0b-19f1400ab90f" />







