# Introduction

This handbook is a practical and advanced guide to LLMOps. It provides a solid understanding of large language models' general concepts, deployment techniques, and software engineering practices. With this knowledge, you will be prepared to maintain the entire stack confidently.

This handbook focuses more on LLM runners like `llama.cpp` or `VLLM`, which can scale and behave predictably in the infrastructure, rather than runners focused more on casual use cases.

It will teach you how to use large language models in professional applications, self-host Open-Source models, and build software around them. It goes beyond just [Retrieval Augmented Generation](/customization/retrieval-augmented-generation) and [Fine Tuning](/customization/fine-tuning).

It assumes you are interested in self-hosting open source [Large Language Models](/general-concepts/large-language-model). If you only want to use them through HTTP APIs, you can jump straight to the [application layer](/application-layer) best practices.

This is a living document, which means it will be updated regularly. To follow us, visit our [GitHub repository](https://github.com/distantmagic/llmops-handbook).

## What is LLMOps?

`LLMOps` is a set of practices that deals with deploying, maintaining, and scaling [Large Language Models](/general-concepts/large-language-model). If you want to consider yourself an `LLMOps` practitioner, you should be able to, at minimum, deploy and maintain a scalable setup of multiple running LLM instances.

## New Class of Opportunities, New Class of Problems

Although there has been a recent trend of naming everything `*Ops` (`DevOps`, `Product Ops`, `MLOps`, `LLMOps`, `BizOps`, etc.), `LLMOps` and `MLOps` truly deserve their place as a standalone set of practices.

They bridge the gap between the applications and AI models deployed in the infrastructure. They also address specific issues arising from using GPUs and TPUs, with the primary stress being [Input/Output](/general concepts/input-output) optimizations.
