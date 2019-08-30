FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html


							#### EXPLANATION  ######


# Dockerfile to build production CONTAINER based on image made with this FILE
