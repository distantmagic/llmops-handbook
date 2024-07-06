# Reverse Proxy

A reverse proxy server retrieves resources from one or more servers on a client's behalf. These resources are then returned to the client, appearing to originate from the source server itself. It abstracts your infrastructure setup from the end users, which is useful for implementing scaling, security middleware, and load balancing.

While forward and reverse proxies may seem functionally similar, their differences lie primarily in their use cases and perspectives. A forward proxy acts on behalf of clients seeking resources from various servers, often used for client privacy and access control. A reverse proxy acts on behalf of servers, making resources available to clients while hiding the backend server details.

That means a reverse proxy hides its presence from the clients and acts as an intermediary between them and the servers. When you communicate with a reverse proxy, it is as if you communicated directly with the target server. 

That is one of the primary differences between [forward proxy](/general-concepts/load-balancing/forward-proxy) and a reverse proxy.

You can combine both [forward proxy](/general-concepts/load-balancing/forward-proxy) and reverse proxy to create a [gateway](/general-concepts/load-balancing/gateway).

## Paddler

Paddler is a reverse proxy server and load balancer made specifically for `llama.cpp`. You can communicate with it like a regular `llama.cpp` instance. You can learn more on it's [dedicated page](/deployments/paddler).
