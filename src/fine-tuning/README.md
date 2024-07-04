# Fine-tuning

Fine-tuning is taking a pre-trained model and further training it on a new task. This is typically useful when you want to repurpose a model trained on a large-scale dataset for a new task with less data available.

In practice, that means fine-tuning allows the model to adapt to the new data without forgetting what it has learned before. 

A good example might be the [sqlcoder](https://github.com/defog-ai/sqlcoder) model, which is a fine-tuned [starcoder](https://github.com/bigcode-project/starcoder) model (which is a general coding model) to be exceptionally good at producing SQL.
