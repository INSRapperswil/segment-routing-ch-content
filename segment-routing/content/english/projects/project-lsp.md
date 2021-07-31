---
title: "SR-App: Link Saturation Prediction"
date: 2020-09-20T08:00:00+02:00
lastmod: 2021-07-31
draft: false
sliderImages:
  - "images/projects/project-lsp/sr-app-screenshot.png"
# meta description
description: "An application that can simulate topology changes and calculate the resulting saturation of all network links. It can also assess the quality of individual links and visualize the result."
buttonLabel: "Check it out"
contributors:
  - "michel.bongard@ost.ch"
  - "dominique.illi@ost.ch"
summary: "An application that can simulate topology changes and calculate the resulting saturation of all network links. It can also assess the quality of individual links and visualize the result."
---

## Introduction
With the emergence of the Segment Routing (SR) technology and the development of the "Jalapeño" data collection framework by Cisco, there are many opportunities for application development that offer a benefit to network engineers and network operators. By using the network data provided by the framework, a variety of different features and use cases may be implemented. The field of application of those so-called SR-Apps is huge and can be anything from basic monitoring functionality to in depth analytics of load distribution and simulation of network changes.  
This project focused on the development of an application in the field of analytics to provide information about the general network health state and link saturation in case of topology changes.

<br>

## Technologies
The application is built using a monolithic architecture with ASP.Net Core. The backend is written entirely in C#, while the client-side application is implemented using JavaScript, HTML and Sass as well as vis.js as the graph visualization library. The client-server communication is managed by the web socket library SignalR.
{{% figure src="images/projects/project-lsp/technology_stack.png" alt="Technology Stack" caption="Technology Stack" width="600px" / %}}

<br>

## Features
### Feature 1: Link Quality Assessment
{{% figure src="images/projects/project-lsp/link_quality_assessment.jpg" alt="Example: Link Quality Assessment" caption="Example: Link Quality Assessment" class="rightInText" width="600px" %}}
##### 1. Color Coding  
Links are color coded based on their quality for different metrics (such as link delay, packet loss, etc.).
For example:
- <span style="color: #2B7CE8">Blue</span>: Low packet loss
- <span style="color: #FFA500">Orange</span>: Medium packet loss
- <span style="color: #FF0000">Red</span>: High packet loss

The assessment of the links (determening how much packet loss is to be considered low, medium or high) is done based on predefined thresholds.

##### 2. Link Thickness
The importance of a link is shown through its thickness. The thicker the link is, the more important it is. A link is considered to be more important than an other one, if it is used by a higher number of shortest paths.
{{% /figure %}}

### Feature 2: Link Saturation Prediction
{{% figure src="images/projects/project-lsp/link_saturation_prediction.png" alt="Example: Link Saturation Prediction" caption="Example: Link Saturation Prediction" class="rightInText" width="600px" %}}
The feature Link Saturation Prediction allows the user to **simulate** changes to the topology, such as:
- Removing/Adding links
- Removing/Adding nodes
- Adjusting properties of existing nodes and links

Simulating such an event requires several steps:

**Step 1:** The user is provided with a network map that is highlighted (color coded) by how saturated the links are (see example image).  
**Step 2:** The user makes a change to the topology through the WebUI (in the example image, simulates a link failure).  
**Step 3:** The application recalculates all shortest paths of the entire topology, including possible equal cost multipaths.  
**Step 4:** The application then redistributes the traffic along those paths according to the Segment Routing Traffic Matrix.  
**Step 5:** Now knowing how much traffic flows through each link in the updated topology, the application returns the newly highlighted network map to the user.

#### Performance
Calculating all shortest paths of a topology and then redistributing the traffic are very compute intesive operations. In fact, they both have a time complexity of **O(n<sup>2</sup> &times; log(n))**. Of course, this results in rapidly increasing calculation time the large the network is.

Nevertheless, through a custom implementation of Dijkstra and a for speed optimized algorithm to redistribute traffic, very impressive results could be obtained.
Performance testing on a personal computer for a network with 1'000 nodes shows it is possible in under two seconds with the given parameters (see following tables).

##### Parameters
{{% table class="w-50 minw-400" %}}
Parameter | Value
--- | ---
Hardware | i7 6700k 4x4GHz, 32GB RAM
Topology | 1'000 Nodes, 3'000 Edges
{{% /table %}}

##### Results
{{% table class="w-50 minw-400" %}}
Calculation | Execution Time
--- | ---
Calculation of all shortest paths | 0.7 seconds
Redistribution of traffic | 1.0 seconds
{{% /table %}}

{{% /figure %}}

## Result
The resulting application combines the features **Link Quality Assessment** and **Link Saturation Prediction** and provides a single user interface for both. It provides a visual representation of the network including all nodes (which can be clustered by region) and links. Through the color coding and varying link thickness, the user can assess the network health very quickly. With the help of control buttons, the user can interactively make changes to the topology and simulate its effect, such as simulating a link failure or drawing new links.

The application is scalable for networks consisting of up to a thousand routers.
{{% figure src="images/projects/project-lsp/sr-app-screenshot-full.png" alt="SR-App screenshot" caption="SR-App Screenshot" %}}

<br>

