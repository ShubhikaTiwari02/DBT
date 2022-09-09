
{% macro ORDERTABLE_macros(RATING, precision=2) %}
    (RATING / 100)::numeric(16,precision )
{% endmacro %}
