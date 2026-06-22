---
layout: page
title: Projects
permalink: /projects/
---

<ul class="entry-list">
  {% for project in site.projects %}
    <li>
      <a href="{{ project.url | relative_url }}">{{ project.title }}</a>
      {% if project.description %}<div class="entry-meta">{{ project.description }}</div>{% endif %}
    </li>
  {% endfor %}
</ul>
