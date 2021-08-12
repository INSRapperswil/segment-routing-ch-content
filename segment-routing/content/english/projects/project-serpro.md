---
title: "SR-App: Service Programming"
date: 2021-02-20T08:00:00+02:00
# Date when the project page was last modified
lastmod: 2021-07-30
# when draft is set to true, it will only show up during development, but not when the website is deployed.
draft: false
image: "/images/projects/project-serpro/banner.png"

# This is the meta description used by search engines (see https://moz.com/learn/seo/meta-description)
# Recommended length: 50–160 characters (Google truncates snippets to ~155–160 characters)
description: "Dynamic service programming application which uses the functionalities of SRv6."
buttonLabel: "Check it out"
contributors:
  - "julian.klaiber@ost.ch"
  - "severin.dellsperger@ost.ch"
  
# This summary is used in the projects overview page.
summary: "Service Programming delivers a dynamic way to program a predefined path trough the network and solves the problem with static service consumption. The application calculates and deploys so called SR service policies to the network in order to steer the traffic through predefined services."
---

## Introduction
In the last few years, the IT network domain has changed fundamentally. New approaches and technologies were introduced, which has changed and is changing the future of this area radically. The results are modern and dynamic networks that  close the gap between networks, applications, and end-users. It permits creating applications that work closely with the  underlying network and create a network that fulfills customer needs entirely. Network services like firewall systems or  intrusion detection/prevention systems have become indispensable and are firmly anchored in computer networks. Nowadays, these services are not to assume away yet have also a massive disadvantage: they are consumed in a static manner. Service Programming is one of the outcomes in future networks and solves the problem of static service consumption. It allows configuring the network dynamically so that network services can process customer traffic according to their necessities. Following network services can be placed universally in the network - the service programming application will find the best services according to the traffic characteristics. Hence, networks with integrated service programming become more intelligent, economic and are prepared for future needs.

<br>

### Segment Routing as a game-changer
Segment Routing (SR) can combine service programming using single encapsulation. Other solutions require new encapsulation/protocols for the same use case. That leads to a very efficient and elegant solution in terms of SR service programming. Through the stateless approach of SR in which all the instructions/segments are carried in the packet header. SR provides a completely stateless solutions with no need to have a state on each intermediate router. That simplifies the complete routing and opens complete new possibilities to route traffic.  
  
The new approaches with SR also created complete new use cases. The most interesting one for this project is the possibility to create so-called service chains. Service chaining refers to the targeted concatenation of network services. It aims to allow the customer to configure which network flows should be treated by which different services. SR uses the source routing instead of the destination routing paradigm that means, that first router decides which path the packet should be steered through. This paradigms allows to simply define the service chain in a so-called SR service policy on the SR Policy headend router. 

<br>

## Our Solution
We can proudly announce, that we have developed the Segment Routing Service Programming application also called SerPro. SerPro allows the customer to program so-called steering policies over a dedicated GUI. The customer has the possibilities to select SR Policy headend, endpoint and metric/algorithm information together with services which are directly deployed in the network. The application will automatically calculate the best suitable path according to this specified parameters. The customer can then deploy this policy to the network if he wants to. The traffic will then be routed to the destination through the defined services. 
  
The application can react dynamically to changes in the connected network and can therefore always deliver the best policy that fits the altered topology. As a consequence, the user can always rely on the data on which he is working
{{% figure src="/images/projects/project-serpro/serpro.png" alt="SerPro Application" caption="SerPro Application" width="800px" / %}}

<br>

### Cloud-Native Architecture
{{% figure width="500px" src="/images/projects/project-serpro/serpro-deployment.png" alt="SerPro Architecture" caption="SerPro Architecture" class="rightInText" %}}
Since Segment Routing is nowadays mainly used in large networks, especially in provider networks, the application must handle extremely large topologies and many users. Due to this fact, the application had to be scalable and highly available. Therefore, a cloud-native approach came to the fore. The complete application was developed cloud-native in order to deploy it natively on a Kubernetes cluster, allowing the application to scale quickly and even allowing the possibility to activate autoscaling functions.  
  
Through the requirement to be highly available most of the core components like the messaging system and the caching system are clustered deployed. To this clustered core components the application can always rely that this components are available and therefore also all the data is everytime accessable for the user.  
{{% /figure %}}


## Customer Value
{{% figure width="450px" src="/images/projects/project-serpro/serpro-customer-value.png" alt="SerPro Customer Value" caption="SerPro Customer Value" class="leftInText" %}}
The application allows the customer to manage the different policies from a central location. The granular permission structure allows the customer to control: who is allowed to perform and what activities. Constant manual adjustment of the various  policies belongs to the past, thanks to automatic recalculation and redeployment. With the ability to dynamically route traffic through the various services, services such as a firewall or an intrusion detection/prevention system can now be utilized better and centrally deployed in the network.  

Through the standardized Application Programming Interface (API), all application functions can be controlled; a frontend can display the complete topology and inform the user dynamically about updates. The application can be seamlessly integrated into a cloud environment due to its cloud-native structure and can scale with the size of the network without any problems.
{{% /figure %}}