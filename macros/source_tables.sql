{% macro tables_in_source_file() %}

{% for table_name in graph.sources.values() %}
  {{ log(table_name, info=True) }}
{% endfor %}
  
{% endmacro %}
