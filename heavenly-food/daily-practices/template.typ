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
    } else if num == 3 {
      cell(value, fill: green)
    } else if num == 4 {
      cell(value, fill: aqua)
    } else {
      cell(value, fill: blue)
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
    } else if num == 1 {
      cell(value, fill: green)
    } else if num == 2{
      cell(value, fill: aqua)
    } else {
      cell(value, fill: blue)
    }
  } else {
    value
  }
}
#let morning-revival-cell(value) = {
  if value != "" {
    let num = float(value)
    if num == 0 {
      cell(value, fill: red)
    } else if num == 0.5 {
      cell(value, fill: orange)
    } else {
      cell(value, fill: green)
    }
  } else {
    value
  }
}
#let books-cell(value) = {
  if value != "" {
    let num = float(value)
    if num == 0 {
      cell(value, fill: red)
    } else if num == 0.5 {
      cell(value, fill: orange)
    } else {
      cell(value, fill: green)
    }
  } else {
    value
  }
}
#let life-study-cell(value) = {
  if value != "" {
    let num = float(value)
    if num == 0 {
      cell(value, fill: red)
    } else if num == 0.5 {
      cell(value, fill: orange)
    } else {
      cell(value, fill: green)
    }
  } else {
    value
  }
}