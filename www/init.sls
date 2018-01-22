nginx:
  pkg.installed:
    - name: nginx
  service.running:
    - enable: True
    - reload: True

php7.0:
  pkg.installed: []
