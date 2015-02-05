---
  layout: page
  title: Learning FLR
---

{{ site.time }}

<ul>
	{% for cat in site.categories %}
    <h2>{{ cat[0] }}</h2>
  {% for post in site.posts %}
		{% if post.section contains 'learning' %}
    	<li>
	      {{ post.categories }} - {{ cat[0] }} <a href="{{ post.url }}">{{ post.title }}</a>
    	</li>
		{% endif %}
  {% endfor %}
	{% endfor %}
</ul>



