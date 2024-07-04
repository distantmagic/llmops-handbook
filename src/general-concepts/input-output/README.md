# Input/Output

In the broad sense, an application can either wait for a CPU to finish processing something or for some external operation to complete (like a long-running HTTP request or waiting for some specific device to be ready).

While the primary bottleneck in traditional applications and setups is often the CPU, when working with LLMs, it is the GPU and general Input/Output issues.

For example, when working with an LLM's HTTP API, requests can take multiple seconds to complete. The same endpoints can have vastly varying response times. This can be due to the GPU being busy, the model being swapped out of memory, or the prompt itself.

A lot of LLMOps issues are about working around those issues.

## Infrastructure

Regarding the infrastructure, IO issues require us to use a different set of metrics than with CPU-bound applications.

For example, if you are running `llama.cpp` server with 8 available slots, using even 2-3 of them might put your GPU at a strain. The fact is, thanks to  [Continuous Batching](/continuous-batching/README.md) and caching of generated tokens, the server might easily handle 5 more parallel requests, but the metrics like percentage of hardware usage will suggest that you have to scale up, which is not the case and might be a waste of resources.

## Application Layer

While LLMOps primarily focuses on the infrastructure; on the application layer, Input/Output issues make it extremely important to pick a programming language that supports concurrency or parallelism—either asynchronicity or threaded execution to not block your application's execution (languages like JavaScript, Golang, Python with [asyncio](https://docs.python.org/3/library/asyncio.html), and Rust are perfect choices here). 

PHP can also be used, but I recommend [Swoole](https://swoole.com/) language extension (which gives PHP Go-like coroutines) or [AMPHP](https://amphp.org/) library to complement it - by default, PHP is synchronous and combined with [FPM](https://www.php.net/manual/en/install.fpm.php) it relies on a worker pool. Let's say you have 32 synchronous workers running in your application. It is possible to block all of them when handling 32 requests in parallel and executing 20-second+ HTTP requests in all of them. You might be in a situation where your CPU is almost idling, but your server cannot handle more requests. 

The same applies to Python, but it has more mature built-in solutions to handle the same issues and gives easier access to multiprocessing and threading.

You can read more in the [Application Layer](/application-layer/README.md) section.
