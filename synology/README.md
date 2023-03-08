# Synology Docker Setup

## Grafana

Update the `.ini` file...

## Nginx Proxy Manager

### Home Assistant

Create a new proxy host.

In Advanced, add the following

```properties
proxy_set_header Upgrade $http_upgrade;
proxy_set_header Connection $http_connection;
```
