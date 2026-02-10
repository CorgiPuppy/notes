#import "../../../template.typ": *

#set page(
	paper: "a3",
    margin: (x: 3cm, y: 3cm),
)

#show table.cell: set text(weight: "extrabold")

#let results = csv("../results.csv")
#figure(
    table(
        columns: 11,
        align: center + horizon,
        fill: (x, y) => if calc.even(x) or y < 2 {
            rgb(230, 230, 230)
        },
        
        // English version of the header
        /*
        cell([Date], rowspan: 2),
        cell([Bible], colspan: 8),
        cell([Old Testament], colspan: 2), cell([New Testament], colspan: 2), cell([Morning Revival], colspan: 2), cell([Books], colspan: 2),
        */
        
        // Russian version of the header
        cell([Дата], rowspan: 2),
        cell([Библия], colspan: 10),
        cell([Ветхий Завет], colspan: 2), cell([Новый Завет], colspan: 2), cell([Утреннее оживление], colspan: 2), cell([Книга служения], colspan: 4), 

        ..results.map(row => (
            cell(row.at(0)),
            old-testament-cell(row.at(1)),
            cell(row.at(2)),
            new-testament-cell(row.at(3)),
            cell(row.at(4)),
            morning-revival-cell(row.at(5)),
            cell(row.at(6)),
            books-cell(row.at(7)),
            cell(row.at(8)),
            life-study-cell(row.at(9)),
            cell(row.at(10)),
        )).flatten()
    )
)
