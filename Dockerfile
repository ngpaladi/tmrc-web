FROM ubuntu:24.04

RUN apt-get update && apt-get install -y jekyll

WORKDIR /jekyll/

COPY . .
RUN sed -i 's/"\/tmrc-web"//g' _config.yml

RUN jekyll build

FROM nginx
COPY --from=0 /jekyll/_site/ /usr/share/nginx/html/

EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]






