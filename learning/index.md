---
  layout: page
  title: Learning FLR
---

{{ site.time }}

<ul>
	{% for cat in site.categories %}
    <h3>{{ cat[0] }}</h3>
  {% for post in site.posts %}
		{% if post.section contains 'learning' %}
    	<li>
	      <a href="{{ post.url }}">{{ post.title }}</a>
    	</li>
		{% endif %}
  {% endfor %}
	{% endfor %}
</ul>



