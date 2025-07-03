#import "../../../template.typ": *

#set page(
  paper: "a3",
  margin: (x: 0.8cm),
)

#show table.cell: set text(weight: "extrabold")

#let results = csv("../results.csv")
#figure(
    table(
        columns: 10,
        align: (center + horizon),

        // English version of the header
        
        cell([Date], rowspan: 3), cell([Sleep], colspan: 2), cell([Hygiene], colspan: 7), 
        cell([Lights out], rowspan: 2), cell([Getting up], rowspan: 2), cell([Afternoon], colspan: 3), cell([Evening], colspan: 4),
        [Brush], [Irrigator], [Mouthwash], [Brush], [Irrigator], [Mouthwash], [Mouth guards],
       
        // Russian version of the header
        /*
        cell([Дата], rowspan: 3), cell([Сон], colspan: 2), cell([Гигиена], colspan: 7), 
        cell([Отбой], rowspan: 2), cell([Подъём], rowspan: 2), cell([День], colspan: 3), cell([Вечер], colspan: 4),
        [Щётка], [Ирригатор], [Ополаскиватель], [Щётка], [Ирригатор], [Ополаскиватель], [Капы],
        */

        ..results.map(row => (
            cell(row.at(0)),
            lights-out-cell(row.at(1), row.at(0)),
            getting-up-cell(row.at(2), row.at(0)),
            brush-cell(row.at(3)),
            irrigator-cell(row.at(4)),
            mouthwash-cell(row.at(5)),
            brush-cell(row.at(6)),
            irrigator-cell(row.at(7)),
            mouthwash-cell(row.at(8)),
            mouth-guards-cell(row.at(9)),
        )).flatten()
    )
)