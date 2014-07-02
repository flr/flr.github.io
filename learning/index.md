---
layout: page
title: Learning FLR
pages:
  - quickIntro
sections: [Introduction, SA, Plotting, Forecast]
---

{% for section in page.sections %}
### {{ section }}
<ul>
{% for page in site.pages %}
  {% if page.learning == section %}
    <h3><a href="{{ page.url }}">{{ page.title }}</a></h3>
  {% endif %}
{% endfor %}
</ul>
{% endfor %}
