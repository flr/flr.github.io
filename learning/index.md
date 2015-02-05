---
  layout: page
  title: Learning FLR
---

<ul>
	{% for cat in site.categories %}
    <h3>{{ cat[0] }}</h3>
  {% for post in site.posts %}
    {% if page.section contains 'learning' %}
    {% if post.categories contains {{ cat[0] }} %}
    	<li>
	      <a href="{{ post.url }}">{{ post.title }}</a>
    	</li>
    {% endif %}
  {% endfor %}
	{% endfor %}
</ul>



