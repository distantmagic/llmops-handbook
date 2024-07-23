# Matching the Grammar

Some Large Language Model runners support [formal grammars](https://en.wikipedia.org/wiki/Formal_grammar). It can be used to force the output to follow a certain structure (for example, speaking only in emojis or outputting just the valid moves from the [Portable Game Notation](https://en.wikipedia.org/wiki/Portable_Game_Notation)).

It still does not guarantee that the output will be valid (in a semantic sense), but at least matching the formal grammar guarantees it will follow the correct structure.

One of the popular uses is to force a Large Language Model to match a specific [JSON Schema](/predictability/structured-outputs/matching-json-schema).

## llama.cpp

`llama.cpp` supports [GBNF formal grammars](https://github.com/ggerganov/llama.cpp/blob/master/grammars/README.md), which is an extension of [Backus-Naur form](https://en.wikipedia.org/wiki/Backus%E2%80%93Naur_form), but with the support of some [regular expressions](https://en.wikipedia.org/wiki/Regular_expression).
