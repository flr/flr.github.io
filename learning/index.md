---
  layout: page
  title: Learning FLR
---

<ul>
	{% for cat in site.categories %}
    <h3>{{ cat[0] }}</h3>
  {% for post in site.posts %}
    	<li>
	      <a href="{{ post.url }}">{{ post.section }} - {{ post.title }}</a>
    	</li>
  {% endfor %}
	{% endfor %}
</ul>



