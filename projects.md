---
layout: page
title: Projects
permalink: /projects/
---

A running collection of things I've built - finished, half-finished, and everything in between. Some came out of curiosity, some from wanting to learn something new, some from a hackathon weekend, and some just because an idea wouldn't leave me alone.

<ul class="entry-list">
  {% for project in site.projects %}
    <li>
      <a href="{{ project.url | relative_url }}">{{ project.title }}</a>
      {% if project.description %}<div class="entry-meta">{{ project.description }}</div>{% endif %}
    </li>
  {% endfor %}
</ul>
