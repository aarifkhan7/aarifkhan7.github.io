---
layout: page
title: Shelf
permalink: /shelf/
---

Books and papers I've read or am reading.

<ul class="entry-list">
  {% for item in site.shelf %}
    <li>
      <a href="{{ item.url | relative_url }}">{{ item.title }}</a>
      {% if item.author %}<div class="entry-meta">by {{ item.author }}</div>{% endif %}
    </li>
  {% endfor %}
</ul>
