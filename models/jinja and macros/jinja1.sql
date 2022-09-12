select EVENTS,
{%  for y in [2018,2019,2020,2021,2022] %}
count (case when EVENT_YEAR = {{ y }} then  EVENTS end )as EVENT_YEAR{{y}},
{% endfor %}
count (*) as total
from VWE_DATABASE.PUBLIC.LATEST_CONVERSION
group by EVENTS
 