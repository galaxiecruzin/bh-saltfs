build-essential:
  pkg.installed:
    - name: build-essential

/home/ubuntu/digibyte.tar.gz:
  file.managed:
    - source: https://github.com/digibyte/digibyte/releases/download/v6.14.2/digibyte-6.14.2-i686-pc-linux-gnu.tar.gz
    - source_hash: 4c1455992631c9bf1f6075ad6127e994
    - user: ubuntu
    - group: ubuntu
    - mode: 644
