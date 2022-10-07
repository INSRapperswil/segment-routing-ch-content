---
title: "WEmulate"
date: 2022-10-01T08:00:00+02:00
# Date when the project page was last modified
lastmod: 2022-10-01
# when draft is set to true, it will only show up during development, but not when the website is deployed.
draft: false
image: "/images/projects/project-wemulate/wemulate_logo.png"

# This is the meta description used by search engines (see https://moz.com/learn/seo/meta-description)
# Recommended length: 50–160 characters (Google truncates snippets to ~155–160 characters)
description: "WEmulate is a simple and modern WAN emulator, developed to fulfill the needs of students and network engineers."
buttonLabel: "Check it out"
contributors:
  - "julian.klaiber@ost.ch"
  - "severin.dellsperger@ost.ch"
  - "fabian.thurnheer@ost.ch"
  - "urs.baumann@ost.ch"
  
# This summary is used in the projects overview page.
summary: "WEmulate is a simple and modern WAN emulator, developed to fulfill the needs of students and network engineers."
---

## Introduction
All Computer Science students at the Eastern Switzerland University of Applied Sciences (<a href="https://www.ost.ch/" target="_blank" rel="noopener noreferrer">OST</a>) must work on the so-called "SE Project."
This module focuses not on the product itself but on project management and how to work in a team. Nevertheless, four students wanted to develop something close to the network that could be useful in the future. Since we knew that we would have to perform a live cycle of our WAN emulator appliance in the network lab, it was agreed with the students that an alternative based on open-source components should be developed. 

After the project was completed, the project "WEmulate" was further developed at the Institute for Networks and Security and has been in use in the classroom for the last year. WEmulate can be installed on hardware or used as a virtual appliance. 

With version 2.0, the project has now been better anchored in the open-source community, and the product is already being used worldwide. 
<br>

## WEmulate Modules
The project was built with a module-based approach in mind. Because we are using WEmulate a lot in virtual environments, the goal was to deliver a CLI tool. With the need to use the application together with our students in the lab, we decided to create also an API and Frontend module that provides an easy-to-understand graphical interface to the students.

The CLI module provides the whole core module of WEmulate. Therefore it handles all the requests from the API module with its Python packages. The module was written with modern and straightforward frameworks.
{{% figure src="/images/projects/project-wemulate/animation-wemulate-cli.gif" alt="WEmulate CLI Application" caption="WEmulate CLI Application" width="1000px" / %}}

The Frontend module is designed to give students a fast and easy way to set disturbances in the network. The whole WEmulate stack (CLI, API, and Frontend) is used in the two computer network modules at the OST.
{{% figure src="/images/projects/project-wemulate/animation-wemulate-frontend.gif" alt="WEmulate Frontend Application" caption="WEmulate Frontend Application" width="1000px" / %}}

## Open Source
Since the project is open-source and available on GitHub, please do not hesitate to look at it and contribute!
You can also always contact one of the contributors to get more information about the project.

The following links can be helpful:
- <a href="https://github.com/wemulate/" target="_blank" rel="noopener noreferrer">GitHub Project Site</a>
- <a href="https://github.com/wemulate/wemulate/" target="_blank" rel="noopener noreferrer">CLI Module</a>
- <a href="https://github.com/wemulate/wemulate-api" target="_blank" rel="noopener noreferrer">API Module</a>
- <a href="https://github.com/wemulate/wemulate-frontend" target="_blank" rel="noopener noreferrer">Frontend Module</a>
- <a href="https://wemulate.github.io/wemulate" target="_blank" rel="noopener noreferrer">Documentation</a>