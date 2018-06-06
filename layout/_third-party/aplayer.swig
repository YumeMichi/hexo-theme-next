{% if theme.aplayer.enable %}

  {# S: Include Pjax index.js library #}
  {#{% set pjax_js = url_for(theme.vendors._internal + '/pjax/pjax.js') %}#}
  {#{% if theme.vendors.pjax_js %}#}
  {#{% set pjax_js = theme.vendors.pjax_js %}#}
  {#{% endif %}#}
  {#<script src="{{ pjax_js }}"></script>#}
  <script src="https://cdn.jsdelivr.net/gh/MoePlayer/APlayer@v1.10.1/dist/APlayer.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/MoePlayer/APlayer@v1.10.1/dist/APlayer.min.css">
  {# E: Include Pjax index.js library #}

  <script src="{{ url_for(theme.js) }}/src/aplayer.js"></script>
  <div id="aplayer"></div>
{% endif %}
