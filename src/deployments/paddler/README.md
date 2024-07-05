# Paddler

```admonish
Additional note from the author of the handbook: 

Paddler is my personal project and is not part of the llama.cpp, but I am including it here as it is a useful tool for deploying llama.cpp in production. It helped me, and I hope it helps you too.
```

```admonish
GitHub Repository: <https://github.com/distantmagic/paddler>
```

Paddler is an open-source, stateful load balancer and reverse proxy designed for servers running `llama.cpp`. Unlike typical strategies like round-robin or least connections, Paddler uses each server's available slots. 

It uses agents to monitor the health of `llama.cpp` instances and dynamically adjust to adding or removing servers, making it easier to integrate with autoscaling tools.
