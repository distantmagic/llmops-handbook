# Introduction

This handbook aims to provide a pragmatic guide to LLMOps. It provides a sufficient understanding of [Large Language Models](/general-concepts/large-language-model), [deployment](/deployments) techniques, and [software engineering](/application-layer) practices to maintain the entire stack.

It assumes you are interested in self-hosting open source [Large Language Models](/general-concepts/large-language-model). If you only want to use them through HTTP APIs, you can jump straight to the [application layer](/application-layer) best practices.

## What is LLMOps?

`LLMOps` is a set of practices that deal with the deployment, maintenance and scaling of [Large Language Models](/general-concepts/large-language-model). If you want to consider yourself an `LLMOps` practitioner, you should be able to, at minimum, be able to deploy and maintain a scalable setup of multiple running LLM instances.

## New Class of Opportunities, New Class of Problems

Although there has been a recent trend of naming everything `*Ops` (`DevOps`, `Product Ops`, `MLOps`, `LLMOps`, `BizOps`, etc.), I think `LLMOps` and `MLOps` truly deserve their place as a standalone set of practices.

The issues they deal with is bridging the gap between the applications and AI models deployed in the infrastructure. They also deal with very specific set of issues arising from using GPUs and TPUs and the primary stress being [Input/Output](/general-concepts/input-output) optimizations.

