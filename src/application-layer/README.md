# Application Layer

This chapter is not strictly related to LLMOps, but discussing the best practices for architecting and developing applications that use them would be a good idea.

Those applications have to deal with some issues that are not typically met in traditional web development, primarily long-running HTTP requests or MLOps - using custom models for inference.

Up until [Large Language Models](/general-concepts/large-language-model) became mainstream and in demand by a variety of applications, the issue of dealing with long-running requests was much less prevalent. Typically, due to functional requirements, all the microservice requests normally would take 10ms or less, while waiting for a [Large Language Models](/general-concepts/large-language-model) to complete the inference can take multiple seconds.

That calls for some adjustments in the application architecture, non-blocking [Input/Output](/general-concepts/input-output) and [asynchronous programming](/application-layer/optimization/asynchronous-programming). 

This is where asynchronous programming languages shine, like Python with its `asyncio` library or Rust with its `tokio` library, Go with its goroutines, etc. 

Programming languages like `PHP`, which are synchronous by default, might struggle unless supplemented by extensions like [Swoole](https://swoole.com/) (which essentially gives PHP Go-like coroutines) or libraries like [AMPHP](https://amphp.org/). Introducing support for asynchronous programming in PHP can be a challenge, but it is possible. 
