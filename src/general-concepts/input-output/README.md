# Input/Output

In the broad sense, an application can either wait for a CPU to finish processing something or wait for some external operation to complete (like a long-running HTTP request or waiting for some specific device to be ready).

While in traditional applications and setups, the primary bottleneck is often the CPU, when working with LLMs it is GPU and general Input/Output issues.

For example, when working with HTTP API of an LLM, the requests can take multiple seconds to complete.
