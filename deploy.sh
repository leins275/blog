#/bin/bash

hugo --gc --minify 
rsync -avP --delete public/* my-site:/usr/share/nginx/html/my-site/
