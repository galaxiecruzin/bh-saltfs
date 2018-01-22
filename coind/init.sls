build-essential:
  pkg.installed:
    - name: build-essential

/home/ubuntu/digibyte.tar.gz:
  file.managed:
    - source: https://github.com/digibyte/digibyte/releases/download/v6.14.2/digibyte-6.14.2-x86_64-linux-gnu.tar.gz
    - user: ubuntu
    - group: ubuntu
    - mode: 644
