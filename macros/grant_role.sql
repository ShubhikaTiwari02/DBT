{% macro grant_select_on_schemas(schemas, REPORTER) %}
  {% for schema in schemas %}
    grant usage on schema {{ schema }} to role {{ REPORTER }};
    grant select on all tables in schema {{ schema }} to role {{ REPORTER }};
    grant select on all views in schema {{ schema }} to role {{ REPORTER }};
  {% endfor %}
{% endmacro %}