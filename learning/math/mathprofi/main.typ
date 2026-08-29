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
	= Задания
])
#include("chapters/chapter-9/1Q.typ")
#include("chapters/chapter-16/1Q.typ")

#pagebreak()

#align(center, block[
	= Ответы 
])
#include("chapters/chapter-9/1A.typ")
#include("chapters/chapter-16/1A.typ")

