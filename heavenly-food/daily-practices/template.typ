#import table: cell, header

#let old-testament-cell(value) = {
  if value != "" {
    let num = int(value)
    if num == 0 {
      cell(value, fill: red)
    } else if num == 1 { 
      cell(value, fill: orange)
    } else if num == 2 { 
      cell(value, fill: yellow)
    } else {
      cell(value, fill: green)
    }
  } else {
    value
  }
}
#let new-testament-cell(value) = {
  if value != "" {
    let num = int(value)
    if num == 0 {
      cell(value, fill: red)
    } else {
      cell(value, fill: green)
    }
  } else {
    value
  }
}
#let morning-revival-cell(value) = {
  if value != "" {
    let num = int(value)
    if num == 0 {
      cell(value, fill: red)
    } else {
      cell(value, fill: green)
    }
  } else {
    value
  }
}