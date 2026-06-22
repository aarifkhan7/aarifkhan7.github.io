# aarifkhan7.github.io

Personal website for Aarif Khan, served via GitHub Pages.

## Purpose

The site has five sections:
1. **Home / Resume** — profile and resume.
2. **Projects** — showcase of projects.
3. **Blog** — written posts.
4. **Shelf** — books/papers read or recommended.
5. **Contact** — a way to reach Aarif.

Priority: keep it simple and straightforward. Avoid adding complexity (build tools,
JS frameworks, plugins) unless a specific feature genuinely needs it.

## Stack

Jekyll, built and served natively by GitHub Pages — no GitHub Actions or custom build
step required. Content is plain Markdown with YAML front matter.

- Projects and Shelf entries are Jekyll **collections** (`_projects`, `_shelf`), each
  entry a Markdown file with front matter (title, links, tags, dates as relevant).
- Blog posts use Jekyll's built-in `_posts` with standard `YYYY-MM-DD-title.md` naming.
- Layouts live in `_layouts/`, reusable snippets in `_includes/`.
- No JS framework. Use plain CSS/HTML; add small vanilla JS only if a feature truly
  requires it (e.g. a contact form handler).

## Conventions

- Front matter keys should stay consistent within a collection (e.g. every `_projects`
  entry has the same fields) so layouts can rely on them without per-entry conditionals.
- Don't introduce a CSS framework (Bootstrap/Tailwind) unless asked — prefer a small
  hand-written stylesheet given the site's scope.
- `_config.yml` is the single source of truth for site metadata (title, description,
  nav links, social/contact info) — don't hardcode this in templates.

## Local development

Standard Jekyll workflow:
```
bundle exec jekyll serve
```
(Requires Ruby + Bundler; a `Gemfile` should pin `github-pages` gem to match GitHub's
production Jekyll version.)

## Current state

Repository is freshly initialized — no Jekyll scaffold, layouts, or content exist yet.
This file describes the intended direction to guide initial setup.
