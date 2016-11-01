# Syntaxnet

This is a Dockerfile descended from https://github.com/brianlow/syntaxnet-docker which builds [Google's SyntaxNet](https://github.com/tensorflow/models/tree/master/syntaxnet) Parser and POS tagger.  Most of the magic is in that parent Dockerfile, this one swaps out the tree output for outputting a CoNLL table, which is easier to work with as an intermediate form.

#CoNLL
CoNLL is a conference about computational natural language learning -- http://www.conll.org/ 

The CoNLL table output format here is from a challenge (shared task) they had around a decade ago.

Information on the CoNLL-U format emitted by this can be found here:  http://universaldependencies.org/format.html

#Usage

```shell
echo "This is descended from brianlow/syntaxnet-docker but modified to emit CONLL instead of a tree." | docker run --rm -i corprew/syntaxnet-conll
...
1	This	_	DET	DT	_	3	nsubjpass	_	_
2	is	_	VERB	VBZ	_	3	auxpass	_	_
3	descended	_	VERB	VBN	_	0	ROOT	_	_
4	from	_	ADP	IN	_	3	prep	_	_
5	brianlow/syntaxnet-docker	_	NOUN	NN	_	4	pobj	_	_
6	but	_	CONJ	CC	_	3	cc	_	_
7	modified	_	VERB	VBN	_	3	conj	_	_
8	to	_	PRT	TO	_	9	aux	_	_
9	emit	_	VERB	VB	_	7	xcomp	_	_
10	CONLL	_	NOUN	NNP	_	9	dobj	_	_
11	instead	_	ADV	RB	_	12	advmod	_	_
12	of	_	ADP	IN	_	9	prep	_	_
13	a	_	DET	DT	_	14	det	_	_
14	tree	_	NOUN	NN	_	12	pobj	_	_
15	.	_	.	.	_	3	punct	_	_
```



