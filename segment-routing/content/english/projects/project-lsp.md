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
{{% figure src="images/projects/project-lsp/sr-app-screenshot.png" alt="SR-App screenshot" caption="SR-App Screenshot" class="leftInText" width="500px" %}}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed finibus eget ipsum vel suscipit. Morbi quis augue eu nisi imperdiet placerat. Vivamus condimentum leo sed cursus imperdiet. Curabitur molestie libero id libero sagittis, nec vulputate libero congue. Aliquam malesuada nisl a risus finibus, eget congue ex aliquet. Aliquam ut justo ac lacus finibus consequat ut vitae mauris. Maecenas eget felis non nisi eleifend vehicula a at lorem. Phasellus quis sodales massa. Aenean iaculis suscipit nunc, ut sagittis nunc hendrerit non. In a tempus odio. Proin a arcu lacus. Nam at libero dui. Fusce ac aliquet arcu, non imperdiet neque.

Nullam condimentum venenatis quam, et pellentesque nibh pulvinar sed. Mauris non risus leo. Quisque sodales ac odio sit amet interdum. Cras et metus tempus, malesuada lectus eu, iaculis elit. Fusce fringilla urna nec mi tincidunt condimentum. Suspendisse tristique tempus varius. Vestibulum placerat auctor lectus at egestas. Nullam gravida tellus sed vehicula facilisis. Praesent efficitur sit amet lacus a tempus. Nullam vitae urna non enim ultrices rutrum. Integer posuere sem nec massa pharetra gravida.

Sed hendrerit efficitur mi, ac sollicitudin velit. Nullam egestas ligula vel risus feugiat ullamcorper. Etiam nec blandit metus. Mauris magna est, tristique vel libero scelerisque, blandit dictum metus. Ut aliquet mauris tristique diam condimentum, et ultrices nisl eleifend. Pellentesque vitae odio posuere, ultricies sem vitae, gravida erat. Aenean ultrices ligula in mauris faucibus efficitur. Cras ante dolor, mollis eget nulla vitae, tristique iaculis purus. Nunc volutpat nunc vel fringilla porttitor. Aenean in ex id sapien molestie ultrices.
{{% /figure %}}

<br>

