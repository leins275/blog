
# my-site

This is repository with my static generated site.

Created with [hugo](https://gohugo.io/), theme [coder](https://themes.gohugo.io/themes/hugo-coder/)

# Cloning project

```bash
git clone my-site && cd my-site
git submodule init
git submodule update
```

# How to maintain

1. Run hugo server locally
```bash
hugo server -D
```

2. Generate static site
```bash
hugo -D
```

You can specify `--directory /some/path` to set output dir.

# Deploy

Copy this nginx configuration to `/etc/nginx/conf.d/my-site.conf` file and reload nginx server.

```nginx
server {
    server_name leins275.xyz;
    listen 80; 

    root /srv/my-site; 
    index index.html;

    location / { 
        try_files $uri $uri/ /404.html;
    }
}

```

Also you can generate ssl cert with certbot:
```bash
sudo certbot --nginx -d leins275.xyz
```

