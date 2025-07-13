#import table: cell, header

#set text(weight: "extrabold")

#let jsonData = json("../results.json")
#for value in jsonData {
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
    for index in range(0, 8+1) {
        set text(
            size: 9pt,
        )
        box(rect(
            stroke: 1pt,
            fill: rgb(230, 230, 230),
            align(
                center + horizon,
                value.train.at(index).type
            )
        ))
        for round in ("1", "2", "3") {
            if value.train.at(index).type == "Подтягивания" {
                if round in value.train.at(index) and value.train.at(index).at(round) != "" {
                    box(square(
                        stroke: 1pt,
                        fill: if int(value.train.at(index).at(round)) == 10 {
                            rgb(0, 255, 0)
                        } else {
                            rgb(255, 0, 0)
                        },
                        align(
                            center + horizon,
                            value.train.at(index).at(round)
                        ) 
                    ))
                }  
            } else if value.train.at(index).type == "Отжимания на брусьях" {
                if round in value.train.at(index) and value.train.at(index).at(round) != "" {
                    box(square(
                        stroke: 1pt,
                        fill: if int(value.train.at(index).at(round)) == 10 {
                            rgb(0, 255, 0)
                        } else {
                            rgb(255, 0, 0)
                        },
                        align(
                            center + horizon,
                            value.train.at(index).at(round)
                        ) 
                    ))
                }
            } else if value.train.at(index).type == "Поднятие ног, согнутых в коленях, и их закручивание на 90 градусов в каждую сторону" {
                if round in value.train.at(index) and value.train.at(index).at(round) != "" {
                    box(square(
                        stroke: 1pt,
                        fill: if int(value.train.at(index).at(round)) == 10 {
                            rgb(0, 255, 0)
                        } else {
                            rgb(255, 0, 0)
                        },
                        align(
                            center + horizon,
                            value.train.at(index).at(round)
                        ) 
                    ))
                }
            } else {
                if round in value.train.at(index) and value.train.at(index).at(round) != "" {
                    box(square(
                        stroke: 1pt,
                        fill: if int(value.train.at(index).at(round)) == 10 {
                            rgb(0, 255, 0)
                        } else {
                            rgb(255, 0, 0)
                        },
                        align(
                            center + horizon,
                            value.train.at(index).at(round)
                        ) 
                    ))
                }
            }
        }
        linebreak()
    }
}