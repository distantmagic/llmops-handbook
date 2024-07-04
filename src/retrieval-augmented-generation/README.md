# Retrieval Augmented Generation

Retrieval Augmented Generation is a technique to improve the quality of the generated text. 

In practice, and in a significant simplification, RAG is about injecting data into [Large Language Model](/general-concepts/large-language-model) prompt. 

For example, let's say the user asks the LLM:
- `What are the latest articles on our website?` 

To augment the response, you need to intercept the user's question and tell LLM to respond in a way more or less like: 
- `You are a <inser persona here>. Tell the user that the latest articles on our site are <insert latest articles metadata here>`

That is greatly simplified, but generally, that is how it works. Along the way, [embeddings](/general-concepts/embeddings) and [vector databases](/general-concepts/vector-database) are involved.
