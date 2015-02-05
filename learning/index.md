---
  layout: page
  title: Learning FLR
---

<ul>
	{% for cat in site.categories %}
    <h3>{{ cat[0] }}</h3>
  {% for post in site.posts %}
    {% if post.categories contains {{ cat[0] }} %}
    	<li>
			RTEST
	      <a href="{{ post.url }}">{{ page.sections }} - {{ post.title }}</a>
    	</li>
    {% endif %}
  {% endfor %}
	{% endfor %}
</ul>



