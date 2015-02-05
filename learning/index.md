---
layout: page
title: Learning FLR
---

<ul>
	{% for cat in site.categories %}
    <h1>{{ cat[0] | capitalize }}</h1>
  {% for post in site.posts %}
		{% if post.section contains 'learning' %}
			{% if post.categories[0] == cat[0] %}
    	<li>
	      <a href="{{ post.url }}">{{ post.title }}</a>
    	</li>
		{% endif %}
		{% endif %}
  {% endfor %}
	{% endfor %}
</ul>
