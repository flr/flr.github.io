---
  layout: page
  title: Learning FLR
---

{{ site.time }}

<ul>
	{% for cat in site.categories %}
    <h3>{{ cat }}</h3>
  {% for post in site.posts %}
		{% if post.section contains 'learning' %}
		{% if post.categories == {{ cat }} %}
    	<li>
	      <a href="{{ post.url }}">{{ post.title }}</a>
    	</li>
		{% endif %}
		{% endif %}
  {% endfor %}
	{% endfor %}
</ul>



