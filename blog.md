---
layout: page
title: Blog
permalink: /blog/
---

<ul class="entry-list">
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      <div class="entry-meta">{{ post.date | date: '%B %-d, %Y' }}</div>
    </li>
  {% endfor %}
</ul>
