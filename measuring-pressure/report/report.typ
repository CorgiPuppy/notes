#import table: cell, header

#let results = csv("../results.csv")
#let pressure-cell(value) = {
  if value != "" {
    let num = int(value.slice(0, count: 3))
    if num >= 150 {
      cell(value, fill: red)
    } else if num >= 140 and num < 150{ 
      cell(value, fill: orange)
    } else {
      value
    }
  } else {
    value
  }
}
#let pulse-cell(value) = {
  if value != "" {
    let num = int(value)
    if num >= 130 {
      cell(value, fill: red)
    } else if num >= 100 and num < 130{ 
      cell(value, fill: orange)
    } else {
      value
    }
  } else {
    value
  }
}
#show table.cell.where(x: 2, y: 10-5): set text(weight: "bold")
#table(
    columns: 9,
    align: (center + horizon),

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