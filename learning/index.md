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
	{% for page in page.pages %}
	{{ section }} - {{page.section }}
	{% if page.section == section %}
	<li>
		<a href="{{ page }}/{{ page }}.html">{{ page }}</a>
	</li>
	{% endif %}
	{% endfor %}
</ul>
{% endfor %}
