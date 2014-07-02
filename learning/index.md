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
###{{ section }}
<ul>
		{% for pag in page.pages %}
		{% if pag.section == section %}
		{{ pag }}
		{% endif %}
		{% endfor %}
</ul>
{% endfor %}
