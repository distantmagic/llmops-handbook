# Continuous Batching

Continuous Batching is an algorithm that allows LLM runners like `llama.cpp` to better utilize GPU processing time.

It allows the server to handle multiple completion requests in parallel.

## Explanation and Demonstration 

The best person to explain how Continuous Batching is implemented in `llama.cpp` is the author of the library, Georgi Gerganov. Here is his tweet explaining the concept and demonstrating the algorithm's speed.

If you want to dig even deeper, you can check out the [GithHub discussion](https://github.com/ggerganov/llama.cpp/discussions/4130#discussioncomment-8053636) that further explains this.

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Serving 8 clients in parallel on A100 with llama.cpp<br><br>Model: Codellama 7B F16<br>System prompt: 305 tokens<br>Requests: 128<br>Max sequence length: 100<br>Continuous batching: enabled<br><br>Average speed ~484 t/s (including prompts and generated tokens) <a href="https://t.co/0yFX95GiKK">pic.twitter.com/0yFX95GiKK</a></p>&mdash; Georgi Gerganov (@ggerganov) <a href="https://twitter.com/ggerganov/status/1716737912929231346?ref_src=twsrc%5Etfw">October 24, 2023</a></blockquote>
