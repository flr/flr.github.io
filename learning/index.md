---
  layout: page
  title: Learning FLR
	sections:[ introduction "stock assessment"]
---

{{ site.time }}

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


{{ site.time }}

<ul>
	{% for section in page.sections %}
    <h1>{{ section[0] | capitalize }}</h1>
		{% for post in site.categories.learning %}
			{% if post.categories[0] == section[0] %}
    	<li>
	      <a href="{{ post.url }}">{{ post.title }}</a>
    	</li>
		{% endif %}
  {% endfor %}
	{% endfor %}
</ul>

