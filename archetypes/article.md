---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
# when draft is set to true, it will only show up during development, but not when the website is deployed.
draft: false
# post image
image: "images/ins-logo.png"

# show article on homepage
onHomepage: true

# This is the meta description used by search engines (see https://moz.com/learn/seo/meta-description)
# Recommended length: 50–160 characters (Google truncates snippets to ~155–160 characters)
description: ""
buttonLabel: "Read more"
---

