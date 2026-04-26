#set page(
	paper: "a4",
	margin: (x: 0.8cm, y: 1.5cm)
)

#set text(
	size: 14pt,
)

#set par(first-line-indent: (
	amount: 2em,
	all: true
))

#set heading(numbering: "1.1.1.")

#align(center, block[
	#text(size: 20pt, weight: "bold")[СОДЕРЖАНИЕ]
])

#columns(2, gutter: 8pt)[
	#outline(title: none)
]

#pagebreak()

#align(center, block[
	= Теория множеств
])
Числовые множества:

$A = {1, 2, 3, 4}$ - конечное множество, т.к. имеет конечное число эл-ов.

$B = {1, 1/2, 1/3, 1/4, ...}$ - бесконечное множество, т.к. не заканчивается на каком-то элементе.

Операции над множествами:

$A union B$ - объединение множеств A и B: содержит все элементы, которые принадлежат A или B.
Например, $A union B = {underline(1), 2, 3, 4, 1/2, 1/3, 1/4, ...}$
#align(center, block[
	== 
])
