/opt/data:
  file.directory:
    - user: ubuntu
    - group: ubuntu
    - mode: 700
    - makedirs: True
  mount.mounted:
    - device: /dev/xvdh1
    - fstype: ext4
    - mkmnt: True
    - opts:
      - defaults

daemontools:
  pkg.installed:
    - name: daemontools

build-essential:
  pkg.installed:
    - name: build-essential

/home/ubuntu/digibyte.tar.gz:
  file.managed:
    - source: https://github.com/digibyte/digibyte/releases/download/v6.14.2/digibyte-6.14.2-x86_64-linux-gnu.tar.gz
    - source_hash: sha256=cbcef0ce33d30e16edba99a0813ceec4d9785157ef36623a11c009752e843a47
    - user: ubuntu
    - group: ubuntu
    - mode: 644

extract_digibyte:
  archive.extracted:
    - name: /home/ubuntu
    - source: /home/ubuntu/digibyte.tar.gz
    - archive_format: tar
    - user: ubuntu
    - group: ubuntu
    - if_missing: /home/ubuntu/digibyte-6.14.2

/home/ubuntu/coind.conf:
  file.managed:
    - template: jinja
    - source: salt://coind/coind.conf
    - makedirs: False
    - context:
        rpcuser: rpcuser
        rpcpass: supersecret
        rpcport: 19123

/home/ubuntu/digibyte-6.14.2/run:
  file.managed:
    - source: salt://coind/coind.run
    - makedirs: False
    - user: ubuntu
    - group: ubuntu
    - mode: 755

# TODO
# Daemontools run will allow us to make sure the "run" service is always running
# make sure coind is running
