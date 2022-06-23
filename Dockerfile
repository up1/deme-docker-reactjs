FROM node:16-alpine3.16
WORKDIR /xyz
COPY . .
RUN npm install
RUN npm run build  #/xyz/dist

FROM :1.23.0-alpine
COPY --from=0 /xyz/dist /usr/share/nginx/html