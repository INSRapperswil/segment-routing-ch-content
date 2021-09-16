---
title: "WEmulate"
date: 2021-09-14T08:00:00+02:00
# Date when the project page was last modified
lastmod: 2021-09-14
# when draft is set to true, it will only show up during development, but not when the website is deployed.
draft: false
image: "/images/projects/project-wemulate/WEmulate_logo.png"

# This is the meta description used by search engines (see https://moz.com/learn/seo/meta-description)
# Recommended length: 50–160 characters (Google truncates snippets to ~155–160 characters)
description: "A modern WAN emulator."
buttonLabel: "Check it out"
contributors:
  - "julian.klaiber@ost.ch"
  - "severin.dellsperger@ost.ch"
  
# This summary is used in the projects overview page.
summary: "WEmulate is an open-source program to emulate various disturbances in a network. Parameters such as bandwidth, packet loss, delay and jitter are adjustable on network layer 2. The application can be used virtually and on specific hardware."
---
## The need of emulation

## An all-in-one solution
The complete project was built in a modular way. Due to the modular structure, installing only those components you want to use is possible. The core of the whole application is the CLI module, and the complete logic of WEmulate is mapped in this CLI module. The application can be extended with an API and a frontend module (both are currently under development). The application can also be used by people with less CLI affinity using the frontend.

WEmulate provides a fully comprehensive experience for the end-user through these modules. You can control the most important parameters such as bandwidth, jitter, delay, and packet loss. Additional features are already on the roadmap and will further enhance the experience. 

The ability to run the application in a virtual environment offers the end-user infinite possibilities compared to a traditional WAN emulator solution that only works on hardware solutions. Of course, WEmulate can also be run on hardware. If you have any questions about the specific hardware we are using, please do not hesitate to contact us. 

## Open Source
WEmulate is entirely open-source and can be used by everyone. Our goal was to develop a tool that we could use in our lab environments, but it was clear from the beginning that we aspired to make it open-source and therefore available to all people.  Every contributor is welcome to contribute, and the code-base can be observed on our <a href="https://github.com/wemulate/" target="_blank" rel="noopener noreferrer">Github Project</a> site. There is also <a href="https://wemulate.github.io/wemulate/" target="_blank" rel="noopener noreferrer">documentation</a> on how to use and install WEmulate.

When there are any questions or improvements don't hesistate to write us an e-mail or create an issue on the respective <a href="https://github.com/wemulate/" target="_blank" rel="noopener noreferrer">Github repository</a>

### Installation
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/wemulate/wemulate/main/install/install.sh)"
```