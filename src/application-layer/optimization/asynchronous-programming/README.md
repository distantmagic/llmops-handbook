# Asynchronous Programming

By asynchronous programming, we mean the ability to execute multiple tasks concurrently without blocking the main thread; that does not necessarily involve using threads and processes. A good example is the JavaScript execution model, which is, by default, single-threaded but asynchronous. It does not offer parallelism (without worker threads), but it can still issue concurrent network requests, database queries, etc.

Considering that most of the bottlenecks related to working with Large Language Models stem from [Input/Output](/general-concepts/input-output) issues (primarily the LLM APIs response times and the time it takes to generate all the completion tokens) and not the CPU itself, asynchronous programming techniques are often the necessity when architecting the applications.

When it comes to network requests, large language models pose a different challenge than most web applications. While most of the [REST](https://en.wikipedia.org/wiki/REST) APIs tend to have consistent response times below 100ms, when working with large language model web APIs, the response times might easily reach 20-30 seconds until all the requested tokens are generated and streamed.

## Affected Runtimes

Scripting languages like PHP and Ruby are primarily affected because they are synchronous by default. That is especially cumbersome with PHP, which uses [FPM](https://www.php.net/manual/en/install.fpm.php) pool of workers as a common hosting method. For example, Debian's worker pool amounts to five workers by default. That means if each of them would be busy handling 30-second requests, the sixth request would have to wait for the first one to finish. That also means that you can easily run into a situation where your server's CPU is idling, but it can't accept more requests simultaneously.

## Coroutines, Promises to the Rescue

To mitigate the issue, you can use any programming language supporting async, which primarily manifests in supporting Promises (Futures) or Coroutines. That includes JavaScript, Golang, Python (with `asyncio`), and PHP (with `Swoole`). 

## Preemptive vs Cooperative Scheduling

It is also really important to understand the preemptive aspect of async languages. Although preemptiveness is an aspect primarily of threading, it plays a role when scheduling promises and coroutines. For example, PHP natively implements [Fibers](https://www.php.net/manual/en/language.fibers.php), which grants it some degree of asynchronicity, although they are not preemptive. This means if you try something silly in your code, like, for example:

```php
<?php

startCoroutine(function () {
    while (true) { echo 'hi'; }
});
```

PHP's built-in scheduler will never give time to other asynchronous functions, meaning your script will get stuck on that specific coroutine. The same applies to `Node.js` and JavaScript [Promises](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise).

On the other hand, Go is preemptive by default, meaning that the runtime will automatically switch between coroutines, and you don't have to worry about it. That is especially useful because you do not have to worry about infinite loops or blocking requests as long as you structure your code around coroutines.
