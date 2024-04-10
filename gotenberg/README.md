# RUN AND INSTALL PROJECT
```docker build -t liminha/gotenberg .```
```docker run -p 8000:3000 liminha/gotenberg```

# DOC
https://gotenberg.dev/

# EXAMPLE PDF INTO URL
```
curl \
--request POST http://localhost:8000/forms/chromium/convert/url \
--form url=https://google.com \
-o my.pdf
```