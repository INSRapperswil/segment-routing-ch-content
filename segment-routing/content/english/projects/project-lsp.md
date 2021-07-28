---
title: "SR-App: Link Saturation Prediction"
date: 2021-07-12T18:11:30+02:00
draft: false
sliderImages:
  - "images/projects/project-lsp/sr-app-screenshot.png"
# meta description
description: ""
buttonLabel: "Check it out"
contributors:
  - "michel.bongard@ost.ch"
  - "dominique.illi@ost.ch"
---

# Introduction
With the emergence of the segment routing technology and the development of the "Jalapeño" data collection framework by Cisco, there are many opportunities for application development that offer a benefit to network engineers and network operators. By using the network data provided by the framework, a variety of different features and use cases may be implemented. The field of application of those so-called SR-Apps is huge and can be anything from basic monitoring functionality to in depth analytics of load distribution and simulation of network changes.  
This thesis focuses on the development of an application in the field of analytics to provide information about the general network health state and link saturation in case of topology changes.

<br>

# Approach / Technology
It was decided to build the application using a monolithic architecture with ASP.Net Core, because this is what the development team is most familiar with. The programming languages chosen are C# for the backend and JavaScript for client-side functionality, along with HTML and SCSS for markup and styling.
For the client-server communication the web socket library SignalR (C#) was chosen.
To be able to display a map of a network in the web browser a graph visualization library was required. Different such libraries and toolkits were considered and compared before the library vis.js was chosen. It offers many features, its documentation is clear and easy to use and the community seems quite active.
After having implemented a rudimentary UI prototype that was capable of displaying the topology, the focus was switched to the business logic.
In order to calculate of the link saturation in case of topology changes, the traffic between any two routers had to be redistributed on the network. This is possible thanks to the traffic matrix provided by the SR protocol. The traffic matrix contains information on how much traffic flows between any two SR routers.
Since traffic in a SR network flows along the shortest paths, the Dijkstra algorithm was implemented to calculate them. Afterwards, a custom algorithm was implemented to redistribute the traffic along those paths and with that, calculate the saturation of each link in the topology.
The final step, now that the core business logic was implemented, was to improve the UI and adding some additional features.

<br>

# Result 
The application built during this thesis covers all requested features and use cases. It is scalable for topologies consisting of up to one thousand routers. The response time for a topology change (until the UI displays the updated topology with the recalculated link saturation) is less than six seconds with the hardware at hand (Quad Core Multithreaded CPU at 4GHz on the server).

<br>

{{< figure class="test2" src="images/projects/project-lsp/sr-app-screenshot.png" alt="SR-App screenshot" caption="SR-App Screenshot" >}}

<br>

