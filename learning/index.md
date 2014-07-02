---
layout: page
title: Learning FLR
pages:
  - quickIntro
sections: [Introduction, SA, Plotting, Forecast]
---

{% for section in page.sections %}
<h3>{{ section }}</h3>
<ul>
{% for page in site.pages %}
{% capture filext %}{{ page.url | split:'.' | last }}{% endcapture %}
	{% if filext == 'html' %}
	  {% if page.learning == section %}
  	  <h5><a href="{{ page.url }}">{{ page.title }}</a></h5>
  	{% endif %}
  {% endif %}
{% endfor %}
</ul>
{% endfor %}
