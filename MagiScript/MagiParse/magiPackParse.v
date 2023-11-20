    0  $accept : file $end

    1  file : fileGuts
    2       | file fileGuts

    3  fileGuts : FINI


state 0
	$accept : . file $end

	FINI  shift 1

	file goto 2
	fileGuts goto 3


state 1
	fileGuts : FINI .  (3)

	.  reduce 3


state 2
	$accept : file . $end  (0)
	file : file . fileGuts

	$end  accept
	FINI  shift 1

	fileGuts goto 4


state 3
	file : fileGuts .  (1)

	.  reduce 1


state 4
	file : file fileGuts .  (2)

	.  reduce 2


3 tokens, 3 nonterminals
4 grammar rules, 5 states
