---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
# Date when the project page was last modified
lastmod: {{ .Date.Format "2006-01-02" }}
# when draft is set to true, it will only show up during development, but not when the website is deployed.
draft: false
sliderImages:
  - "images/ins-logo.png"

# This is the meta description used by search engines (see https://moz.com/learn/seo/meta-description)
# Recommended length: 50–160 characters (Google truncates snippets to ~155–160 characters)
description: ""

# This summary is used in the projects overview page.
summary: "This is the summary text"
---

