---
layout: page
title: Learning FLR
pages:
  - quickIntro
sections: [Introduction, SA, Plotting, Forecast]
---

{% for section in page.sections %}
<h2>{{ section }}</h2>
<ul>
{% for page in site.pages %}
{% capture filext %}{{ page.url | split:'.' | last }}{% endcapture %}
	{% if filext == 'html' %}
	  {% if page.learning == section %}
  	  <h4><a href="{{ page.url }}">{{ page.title }}</a></h4>
  	{% endif %}
  {% endif %}
{% endfor %}
</ul>
{% endfor %}
