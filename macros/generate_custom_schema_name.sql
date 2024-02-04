{% macro generate_schema_name(custom_schema_name, node) -%}
{% set default_schema = target.schema %}
{% set default_production_schema_suffix = "public" %}
{% set default_development_schema_suffix = "staging" %}
{%- if target.name == "prod" -%}
{{ custom_schema_name | trim }}_{{ default_production_schema_suffix }}
{%- elif target.name == "dev" -%}
{{ custom_schema_name | trim }}_{{ default_development_schema_suffix }}
{%- else -%} {{ default_schema | trim }}
{%- endif -%}
{%- endmacro %}
