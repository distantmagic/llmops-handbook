# Introduction

This handbook is a practical guide to LLMOps, providing a solid understanding of Large Language Models general concepts, deployment techniques, and software engineering practices. With this knowledge, you will be prepared to confidently maintain the entire stack.

It assumes you are interested in self-hosting open source [Large Language Models](/general-concepts/large-language-model). If you only want to use them through HTTP APIs, you can jump straight to the [application layer](/application-layer) best practices.

This is a living document, which means it will be updated regularly. If you want to follow us, visit our [GitHub repository](https://github.com/distantmagic/llmops-handbook).

## What is LLMOps?

`LLMOps` is a set of practices that deals with deploying, maintaining, and scaling [Large Language Models](/general-concepts/large-language-model). If you want to consider yourself an `LLMOps` practitioner, you should be able to, at minimum, deploy and maintain a scalable setup of multiple running LLM instances.

## New Class of Opportunities, New Class of Problems

Although there has been a recent trend of naming everything `*Ops` (`DevOps`, `Product Ops`, `MLOps`, `LLMOps`, `BizOps`, etc.), I think `LLMOps` and `MLOps` truly deserve their place as a standalone set of practices.

They deal with bridging the gap between the applications and AI models deployed in the infrastructure. They also deal with specific issues arising from using GPUs and TPUs, with the primary stress being [Input/Output](/general-concepts/input-output) optimizations.

