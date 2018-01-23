build-essential:
  pkg.installed:
    - name: build-essential

/home/ubuntu/digibyte.tar.gz:
  file.managed:
    - source: https://github.com/tpruvot/cpuminer-multi/archive/v1.3.1-multi.tar.gz
    - source_hash: sha256=507f0bef8ce253f4fcd37affd849964f73e570b2ad4a0041a42aee5f76f1f517
    - user: ubuntu
    - group: ubuntu
    - mode: 644

extract_cpuminer:
  archive.extracted:
    - name: /home/ubuntu
    - source: /home/ubuntu/v1.3.1-multi.tar.gz
    - archive_format: tar
    - user: ubuntu
    - group: ubuntu
    - if_missing: /home/ubuntu/v1.3.1-multi
