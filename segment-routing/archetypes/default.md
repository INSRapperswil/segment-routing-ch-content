---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
# when draft is set to true, it will only show up during development, but not when the website is deployed.
draft: true
---

