---
  layout: page
  title: Learning FLR
---

{{ site.time }}

<ul>
	{% for category in site.categories %}
    <h3>{{ category }}</h3>
  {% for post in site.posts %}
		{% if post.section contains 'learning' %}
		{% if post.categories == {{ category }} %}
    	<li>
	      <a href="{{ post.url }}">{{ post.title }}</a>
    	</li>
		{% endif %}
		{% endif %}
  {% endfor %}
	{% endfor %}
</ul>



