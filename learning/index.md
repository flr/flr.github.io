---
layout: page
title: Learning FLR
sections:[ introduction "stock assessment"]
---


{{ site.time }}

<ul>
	{% for sect in [introduction 'stock assessment'] %}
    <h1>{{ sect[0] | capitalize }}</h1>
		{% for post in site.categories.learning %}
			{% if post.section[0] == sect[0] %}
    	<li>
	      <a href="{{ post.url }}">{{ post.title }}</a>
    	</li>
		{% endif %}
  {% endfor %}
	{% endfor %}
</ul>

