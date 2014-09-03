---
  layout: page
  title: FLR Gallery
---

## Example applications of the FLR packages

<ul>
  {% for post in site.posts %}
    {% if post.categories contains 'gallery' %}
    	<li>
	      <a href="{{ post.url }}">{{ post.title }}</a>
    	</li>
    {% endif %}
  {% endfor %}
</ul>
