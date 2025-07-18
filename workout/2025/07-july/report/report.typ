#import table: cell, header

#set text(
	font: "New Computer Modern",
    weight: "extrabold"
)

#align(center, block[
	#outline(		
		title: "Оглавление",
	)
])

#pagebreak()

#set page(
    columns: 2,
    margin: (x: 0.8cm, y: 1.5cm),
    numbering: "1",
    paper: "a4",
)

#let jsonData = json("../results.json")
#for value in jsonData {
    set text(
        size: 10pt,
    )
    align(
        center,
    )[
        #rect(
            stroke: 1pt,
            fill: rgb(230, 230, 230),
            radius: 9pt,
            text(
                size: 11pt,
            )[ = #value.date ]
        )
    ]
    for index in range(0, value.train.len()) {
        set rect(radius: 5pt)

        box(rect(
            stroke: 1pt,
            fill: rgb(230, 230, 230),
            width: 6cm,
            align(
                center + horizon,
                list(
                    marker: [--],
                    body-indent: 5pt,
                    value.train.at(index).type
                )
            )
        ))
        h(3pt)
        for round in ("1", "2", "3") {
            if round in value.train.at(index) and value.train.at(index).at(round) != "" {
                box(rect(
                    value.train.at(index).at(round)
                )) 
                h(3pt)
            }
            if (value.train.at(index).type == "Ходьба" or value.train.at(index).type == "Бег") {
                box(rect(
                    [ #value.train.at(index).at("distance") км ]
                ))
                break
            }
        }
        linebreak()
        if ("rest" in value.train.at(index)) {
            box(rect(
                stroke: 1pt,
                fill: rgb(230, 230, 230),
                list(
                    marker: [--],
                    indent: 10pt,
                    [ Отдых]
                )
            ))
            h(3pt)
            box(rect(
                [ #value.train.at(index).at("rest") мин. ] 
            ))
        }
        linebreak()
    }
}