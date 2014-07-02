---
layout: page
title: Learning FLR
pages:
  - quickIntro
sections: [intro, assessment]
---

<ul>
	{% for page in page.pages %}
    <li>
      <a href="{{ page }}/{{ page }}.html">{{ page }}</a>
    </li>
  {% endfor %}
</ul>


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
