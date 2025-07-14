#import table: cell, header

#set text(weight: "extrabold")

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
            text(
                size: 13pt,
            )[ #value.date ]
        )
    ]
    for index in range(0, value.train.len()) {
        box(rect(
            stroke: 1pt,
            fill: rgb(230, 230, 230),
            align(
                center + horizon,
                list(
                    marker: [--],
                    body-indent: 5pt,
                    value.train.at(index).type
                )
            )
        ))
        for round in ("1", "2", "3") {
            if round in value.train.at(index) and value.train.at(index).at(round) != "" {
                box(rect(
                    value.train.at(index).at(round)
                )) 
            }
            if (value.train.at(index).type == "Ходьба") {
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
            box(rect(
                [ #value.train.at(index).at("rest") мин. ] 
            ))
        }
        linebreak()
    }
}