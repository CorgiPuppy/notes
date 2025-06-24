#import table: cell, header

#let pressure-cell(value) = {
  if value != "" {
    let num = int(value.slice(0, count: 3))
    if num >= 150 {
      cell(value, fill: red)
    } else if num >= 140 and num < 150{ 
      cell(value, fill: orange)
    } else if num >= 130 and num < 140{ 
      cell(value, fill: yellow)
    } else if num < 110{ 
      cell(value, fill: blue)
    } else {
      cell(value, fill: green)
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