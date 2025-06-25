#import "../../../template.typ": *

#show table.cell: set text(weight: "extrabold")

#let results = csv("../results.csv")
#figure(
    table(
        columns: 6,
        align: center + horizon,
        fill: (x, y) => if calc.even(x) or y < 2 {
            rgb(230, 230, 230)
        },
        
        // English version of the header
        /*
        cell([Date], rowspan: 2),
        cell([Bible], colspan: 5),
        cell([Old Testament], colspan: 2), cell([New Testament], colspan: 2), [Morning Revival],
        */

        // Russian version of the header
        cell([Дата], rowspan: 2),
        cell([Библия], colspan: 5),
        cell([Ветхий Завет], colspan: 2), cell([Новый Завет], colspan: 2), [Утреннее оживление],

        ..results.map(row => (
            cell(row.at(0)),
            old-testament-cell(row.at(1)),
            cell(row.at(2)),
            new-testament-cell(row.at(3)),
            cell(row.at(4)),
            morning-revival-cell(row.at(5)),
        )).flatten()
    )
)