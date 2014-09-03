---
  layout: page
  title: Learning FLR
---

<ul>
  {% for post in site.posts %}
    {% if post.categories contains 'learning' %}
    	<li>
	      <a href="{{ post.url }}">{{ post.title }}</a>
    	</li>
    {% endif %}
  {% endfor %}
</ul>
