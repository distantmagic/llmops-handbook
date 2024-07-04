# Embedding

Formally, embedding represents a word (or a phrase) in a vector space. In this space, words with similar meanings are close to each other. 

For example, the words "dog" and "cat" might be close to each other in the vector space because they are both animals. 

## RGB Analogy

Because embeddings can be vectors with 4096 or more dimensions, it might be hard to imagine them and get a good intuition on how they work in practice.

A good analogy for getting an intuition about embeddings is to imagine them as points in 3D space first. 

Let's assume a color represented by RGB is our embedding. It is a 3D vector with 3 values: red, green, and blue representing 3 dimensions. Similar colors in that space are placed near each other. Red is close to orange, blue and green are close to teal, etc.

Embeddings work similarly. Words and phrases are represented by vectors, and similar words are placed close to each other in the vector space.

Searching through similar embeddings to a given one means we are looking for vectors that are placed close to the given embedding.

![RGB Space](https://upload.wikimedia.org/wikipedia/commons/8/83/RGB_Cube_Show_lowgamma_cutout_b.png)
