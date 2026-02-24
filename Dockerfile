FROM hugomods/hugo:0.121.2

WORKDIR /site

COPY . .

EXPOSE 1313

CMD ["hugo", "server", "--bind", "0.0.0.0"]
