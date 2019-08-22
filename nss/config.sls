# -*- coding: utf-8 -*-
# vim: ft=sls

{% from tpldir ~ "/map.jinja" import nss with context %}

nsswitch.conf:
  file.managed:
    - name: /etc/nsswitch.conf
    - template: jinja
    - source: salt://{{ slspath }}/files/nsswitch.conf.template
    - context:
        nss: {{ nss | yaml }}