# Predictability

The common issue with [Large Language Models](/general-concepts/large-language-model) is the consistency and structure of outputs.

## Software Engineering vs AI

The last few decades of IT developments have accustomed us to extreme predictability. Each time we call a specific API endpoint or use a specific button, the same thing happens consistently, under our complete control.

That is not the case with AI, which operates on probabilities. That stems from the approach to creating software. Neural network designers design just the network and the training process, but they do not design the actual reasoning. The reasoning is learned by the network during training, and it is not under the control of the designer.

That is totally different from the traditional software development process, where we design the reasoning and the process, and the software just executes it. 

That is why you might feed [Large Language Models](/general-concepts/large-language-model) with the same prompt multiple times and get different outputs each time. [Temperature](/general-concepts/temperature) parameter may be used to limit the "creativeness" of the model, but even setting it to zero does not guarantee predictable outputs.

## Structured Outputs

While LLMs not being completely predictable may cause some issues, but no technical solution is completely one-sided and we can turn that flexibility into our advantage.

LLMs are extremely good in understanding natural language. In practice we can finally communicate with computers in a similar way we communicate with other people. We can create systems that interpret such unstructured inputs and react to them in a structured and predictable way. This way we can use the good parts of LLMs to our advantage and mitigate most of the unredictability issues.

## Use Cases

Some use cases include (but are not limited to):
- Searching through unstructured documents (e.g., reports in .pdf, .doc, .csv, or plain text)
- Converting emails into actionable structures (e.g., converting requests for quotes into API calls with parameters for internal systems)
- Question answering systems that interpret the context of user queries
