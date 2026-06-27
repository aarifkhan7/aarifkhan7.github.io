---
layout: page
title: Experiments
permalink: /experiments/
---

Smaller, rougher work-in-progress things - not as polished as [Projects](/projects/).

<ul class="entry-list">
  {% for experiment in site.experiments %}
    <li>
      <a href="{{ experiment.url | relative_url }}">{{ experiment.title }}</a>
      {% if experiment.description %}<div class="entry-meta">{{ experiment.description }}</div>{% endif %}
    </li>
  {% endfor %}
</ul>
