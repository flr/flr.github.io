---
  layout: page
  title: Learning FLR
---

<ul>
	{% for cat in site.categories %}
    <li>{{ cat[0] }}</li>
  {% for post in site.posts %}
    {% if post.categories contains 'learning' %}
    	<li>
	      <a href="{{ post.url }}">{{ post.title }}</a>
    	</li>
    {% endif %}
  {% endfor %}
	{% endfor %}
</ul>



