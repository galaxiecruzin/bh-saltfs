#/opt/data:
#  mount.mounted:
#    - device: /dev/xvdh
#    - fstype: ext4
#    - mkmnt: True
#    - opts:
#      - defaults

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
    - if_missing: /home/ubuntu/digibyte

