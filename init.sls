include:
{% for x in salt['pillar.get']('states', {}) %}
   - {{ x }}
{% endfor %}
