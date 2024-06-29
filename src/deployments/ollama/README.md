# Ollama

`Ollama` is a convenient and easy-to-use wrapper around `llama.cpp`.

It acts like a `llama.cpp` multiplexer. You can start a new conversation or request completion from a specific LLM without manually downloading weights and setting them up. 

For example, when you request completion from a model that is not yet loaded, it checks if it is possible to fit that new model into RAM or VRAM. If so, it internally starts a new `llama.cpp` instance and uses it to load the LLM. If the requested model has not yet been downloaded, it will download it for you.

In general terms, it acts like a `llama.cpp` [forward proxy](/general-concepts/load-balancing/forward-proxy.md) and a [supervisor](/general-concepts/load-balancing/supervisor.md).

## Viability for Production

Although the `Ollama` approach is convenient for local development, it causes some deployment problems (compared to `llama.cpp`).

With `llama.cpp`, it is easily possible to divide the context of the loaded model into a specific number of slots, which makes it extremely easy to predict how many parallel requests the current server can handle.

With `Ollama`, it is not that easy to predict. It manages the slots internally and does not expose the equivalent with the `llama.cpp` `/health` endpoint to monitor the currently used resources. Even if it did, it is always possible to have a few different models loaded simultaneously that share server resources. 

We might end up in a situation where `Ollama` keeps both [llama3](https://llama.meta.com/llama3/) (which is 70B parameter model) and [phi-3](https://azure.microsoft.com/en-us/blog/introducing-phi-3-redefining-whats-possible-with-slms/) (which is 3.8B parameter model). A completion request towards `llama3` will use many more resources than asking `phi-3` for completion. 8 slots of `llama3` require many more resources than 8 of `phi-3`. 

How can that be balanced effectively? As a software architect, you would have to plan an infrastructure that does not allow developers to randomly load models into memory and force a specific number of slots, which defeats the purpose of `Ollama`.

I greatly support `Ollama` because it makes it easy to start your journey with large language models. You can use `Ollama` in production deployments, but I think `llama.cpp` is a better choice because it is so predictable. 

I think `Ollama` is better suited than `llama.cpp` for end-user distributable applications. By that, I mean the applications that do not use an external server but are installed and run in their entirety on the user's device. The same thing that makes it less predictable when it comes to resource usage makes it more resilient to end-user errors. In that context, resource usage predictability is less important than on the server side. 

That is why this handbook is almost entirely based on [vanilla](https://en.wikipedia.org/wiki/Vanilla_software) `llama.cpp` as it is much better for server-side deployments (based on all the reasons above).

The situation might change with the future `Ollama` releases.
