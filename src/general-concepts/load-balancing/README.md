# Load Balancing

Load balancing allows you to distribute the load (preferably evenly) among multiple servers.

In this handbook, we assume that you intend to use GPU or TPU servers for inference. TPU and GPU pose pretty much the same class of benefits and issues, so we will use the term GPU to cover all of them.

The interesting thing is that having some experience with 3D game development might help you get into LLMOps and resolve some GPU-related issues.

## Differences Between Balancing GPU and CPU Load

In the context of LLMOps, the primary factors we have to deal with this time are [Input/Output](/general-concepts/input-output) bottlenecks instead of the usual CPU bottlenecks. That forces us to adjust how we design our infrastructure and applications.

We will also often use a different set of metrics than traditional load balancing, which are usually closer to the application level (like the number of available context slots being used, the number of buffered application requests, and such).
