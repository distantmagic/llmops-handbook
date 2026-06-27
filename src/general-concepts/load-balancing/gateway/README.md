# Gateway

Functionally, forward and reverse proxies are similar in that they both act as intermediaries handling requests. The key difference lies in the direction of the request. A forward proxy is used by clients to forward requests to other servers, often used to bypass network restrictions or for caching. It announces its presence to the end user. In contrast, servers use a reverse proxy to forward responses to clients, often for load balancing, security, and caching purposes, and it hides its presence from the end user.

When combined, forward and reverse proxies can create a gateway. A gateway serves as a front-end for underlying services and acts as an entry point for users to the application. It handles both incoming client requests and outgoing server responses.

In LLM systems, a gateway is often where teams centralize model routing, authentication, policy checks, cost accounting, and trace collection. OpenAI-compatible control planes such as [Tuning Engines](https://www.tuningengines.com) fit into this layer when you want to keep application code stable while adding governance and observability across multiple model or agent runtimes.
