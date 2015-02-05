---
  layout: page
  title: Learning FLR
---

<ul>
	{% for cat in site.categories %}
    <h3>{{ cat[0] }}</h3>
  {% for post in site.posts %}
    	<li>
			RTEST
	      <a href="{{ post.url }}">{{ page.section }} - {{ post.title }}</a>
    	</li>
  {% endfor %}
	{% endfor %}
</ul>



