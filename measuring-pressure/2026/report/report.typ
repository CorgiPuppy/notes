#import "../../template.typ": *

#show table.cell: set text(weight: "extrabold")

#let createTable(results) = {
    table(
        columns: 9,
        align: (center + horizon),
        fill: (x, y) => if x == 0 or y < 3 {
        rgb(230, 230, 230)
        },

        // English version of the header
        cell([*Date*], rowspan: 3), cell([*Afternoon*], colspan: 4), cell([*Evening*], colspan: 4),
        cell([*Left hand*], colspan: 2), cell([*Right hand*], colspan: 2), cell([*Left hand*], colspan: 2), cell([*Right hand*], colspan: 2),
        [*Blood pressure*], [*Pulse*], [*Blood pressure*], [*Pulse*], [*Blood pressure*], [*Pulse*], [*Blood pressure*], [*Pulse*],

        // Russian version of the header
        /*
        cell([*Дата*], rowspan: 3), cell([*День*], colspan: 4), cell([*Вечер*], colspan: 4),
        cell([*Левая рука*], colspan: 2), cell([*Правая рука*], colspan: 2), cell([*Левая рука*], colspan: 2), cell([*Правая рука*], colspan: 2),
        [*Давление*], [*Пульс*], [*Давление*], [*Пульс*], [*Давление*], [*Пульс*], [*Давление*], [*Пульс*],
        */
        
        ..results.map(row => (
        cell(row.at(0)),
        pressure-cell(row.at(1)),
        pulse-cell(row.at(2)),
        pressure-cell(row.at(3)),
        pulse-cell(row.at(4)),
        pressure-cell(row.at(5)),
        pulse-cell(row.at(6)),
        pressure-cell(row.at(7)),
        pulse-cell(row.at(8))
        )).flatten()
    )   
}

#let path = ".."
#let allMonths = (
    "01-january",
    "02-february"
)
#let resultsFileName = "results.csv"
#for month in allMonths {
    createTable(csv(path + "/" + month + "/" + resultsFileName))
    if month != allMonths.last() {
        pagebreak()
    }
}
