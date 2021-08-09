---
title: "Jalapeño API Gateway"
date: 2021-06-29T08:00:00+02:00
# Date when the project page was last modified
lastmod: 2021-08-05
# when draft is set to true, it will only show up during development, but not when the website is deployed.
draft: false
image: "images/projects/project-jagw/banner.png"

# This is the meta description used by search engines (see https://moz.com/learn/seo/meta-description)
# Recommended length: 50–160 characters (Google truncates snippets to ~155–160 characters)
description: "Jalapeño is a cloud-native infrastructure platform for network services developed by Cisco. An API Gateway is needed as a single point of access for SR-Apps."
buttonLabel: "Check it out"
contributors:
  - "michel.bongard@ost.ch"
  - "dominique.illi@ost.ch"
  - "julian.klaiber@ost.ch"
  
# This summary is used in the projects overview page.
summary: "Jalapeño is a cloud-native infrastructure platform for network services developed by Cisco. An API Gateway is needed as a single point of access for SR-Apps. The INS is working in cooperation with Cisco Systems to develop this API Gateway."
---

## Introduction
Jalapeño is a cloud-native infrastructure platform for network services developed by <a href="https://www.cisco.com/" target="_blank" rel="noopener noreferrer">Cisco Systems</a>. The application is still in its early stages and an API Gateway is needed as a single point of access for SR-Apps (applications that use this data to implement topology or traffic engineering use cases).

The INS is working in cooperation with <a href="https://www.cisco.com/" target="_blank" rel="noopener noreferrer">Cisco Systems</a> to develop this API Gateway.

<br>

## Starting Position
Jalapeño captures network topology and performance data made available through the Segment Routing technology. After processing the data it is stored in two different databases. The ArangoDB stores all network topology related data, while the InfluxDB is used for the performance data. These databases can be directly queried by SR-Apps.

The current model is error prone and not very flexible. Any changes to the data model would most likely result in breaking changes for SR-Apps. Also, depending on the number of SR-Apps, the amount of database request may become problematic.

{{% figure src="images/projects/project-jagw/jalapeño_without_api_gateway.png" alt="Jalapeño without an API Gateway" caption="Jalapeño without an API Gateway" width="500px" / %}}

<br>

## Goal
The solution is a single API Gateway that would be implemented as an extension to the existing Jalapeño framework.

An API Gateway comes with several advantages:
- It provides a single point of access for SR-Apps, regardless of how many databases Jalapeño uses.
- It decouples SR-Apps from the internal workings of Jalapeño.
- It can incorporate a push service, that allows SR-Apps to subscribe to live updates on specific collections or counters.
- It can use caching for frequently requested data to respond faster to requests and to reduce the load on the databases.

{{% figure src="images/projects/project-jagw/jalapeño_with_api_gateway.png" alt="Jalapeño with an API Gateway" caption="Jalapeño with an API Gateway" width="600px" / %}}