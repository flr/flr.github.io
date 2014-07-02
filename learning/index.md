---
layout: page
title: Learning FLR
pages:
  - quickIntro
sections: [intro assessment]
---

<ul>
	{% for page in page.pages %}
    <li>
      <a href="{{ page }}/{{ page }}.html">{{ page }}</a>
    </li>
  {% endfor %}
</ul>


{% for section in page.sections %}
<h2>{{ section }}</h2>
	<ul>
		{% for page in site.pages %}
		{{ page }}
		{% endfor %}
	</ul>
{% endfor %}
