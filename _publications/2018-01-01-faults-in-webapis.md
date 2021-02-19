---
title: "An Exploratory Study on Faults in Web API Integration in a Large-Scale Payment Company"
link: "https://research.tudelft.nl/en/publications/an-exploratory-study-on-faults-in-web-api-integration-in-a-large-"
authors: "Joop Aué, Maurício Aniche, Maikel Lobbezoo, Arie van Deursen"
conference: "ICSE-SEIP '18: 40th International Conference on Software Engineering: Software Engineering in Practice Track"
doi: 10.1145/3183519.3183537
categories: ["publication", "conference", "icse", "monitoring", "api", "adyen", "selected-monitoring", "industry-collaboration"]
year: 2018
---

Service-oriented architectures are more popular than ever, and increasingly companies and organizations depend on services offered through Web APIs. The capabilities and complexity of Web APIs differ from service to service, and therefore the impact of API errors varies. API problem cases related to Adyen's payment service were found to have direct considerable impact on API consumer applications. With more than 60,000 daily API errors, the potential impact is enormous. 

In an effort to reduce the impact of API related problems, we analyze 2.43 million API error responses to identify the underlying faults. We quantify the occurrence of faults in terms of the frequency and impacted API consumers. We also challenge our quantitative results by means of a survey with 40 API consumers. 

Our results show that 1) faults in API integration can be grouped into 11 general causes: invalid user input, missing user input, expired request data, invalid request data, missing request data, insufficient permissions, double processing, configuration, missing server data, internal and third party, 2) most faults can be attributed to the invalid or missing request data, and most API consumers seem to be impacted by faults caused by invalid request data and third party integration; and 3) insufficient guidance on certain aspects of the integration and on how to recover from errors is an important challenge to developers.

