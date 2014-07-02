---
layout: page
title: Learning FLR
pages:
  - quickIntro
sections: [intro]
---

<ul>
	{% for page in page.pages %}
    <li>
      <a href="{{ page }}/{{ page }}.html">{{ page }}</a>
    </li>
  {% endfor %}
</ul>


{% for section in page.sections %}
{{ section }}
	<ul>
		{% for page in page.pages %}
			{% for sec in page.section %}
				{% if sec == section %}
					<li><a href="{{ page.url }}">{{ page.title }}</a></li>
				{% endif %}   <!-- cat-match-p -->
			{% endfor %}  <!-- page-category -->
			{% endfor %} <!-- page -->
	</ul>
{% endfor %}
