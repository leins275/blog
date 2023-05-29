#/bin/bash

hugo --gc --minify 
rsync -avP public/* my-site:/usr/share/nginx/html/my-site/
