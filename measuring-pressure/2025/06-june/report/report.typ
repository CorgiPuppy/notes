#import table: cell, header

#let results = csv("../results.csv")
#let pressure-cell(value) = {
  if value != "" {
    let num = int(value.slice(0, count: 3))
    if num >= 150 {
      cell(value, fill: red)
    } else if num >= 140 and num < 150{ 
      cell(value, fill: orange)
    } else if num >= 130 and num < 140{ 
      cell(value, fill: yellow)
    } else {
      cell(text(weight: "bold", value), fill: green)
    }
  } else {
    value
  }
}
#let pulse-cell(value) = {
  if value != "" {
    let num = int(value)
    if num >= 120 {
      cell(value, fill: red)
    } else if num >= 100 and num < 120{ 
      cell(value, fill: orange)
    } else if num >= 90 and num < 100{ 
      cell(value, fill: yellow)
    } else {
      cell(value, fill: green)
    }
  } else {
    value
  }
}
#show table.cell: set text(weight: "extrabold")
#table(
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