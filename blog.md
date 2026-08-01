---
layout: page
title: Blog
permalink: /blog/
description: >-
  Aarif Khan's blog on software engineering, computer science, and
  mathematics, covering topics from work experience to technical deep dives.
---

<ul class="entry-list">
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      <div class="entry-meta">{{ post.date | date: '%B %-d, %Y' }}</div>
    </li>
  {% endfor %}
</ul>
