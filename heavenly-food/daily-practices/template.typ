#import table: cell, header

#let old-testament-cell(value) = {
  if value != "" {
    let num = int(value)
    if num == 0 {
      cell(value, fill: rgb(255, 0, 0))
    } else if num == 1 { 
      cell(value, fill: rgb(255, 165, 0))
    } else if num == 2 { 
      cell(value, fill: rgb(255, 255, 0))
    } else if num == 3 {
      cell(value, fill: rgb(0, 255, 0))
    } else if num == 4 {
      cell(value, fill: rgb(0, 255, 255))
    } else {
      cell(value, fill: rgb(201, 255, 229))
    }

  } else {
    value
  }
}
#let new-testament-cell(value) = {
  if value != "" {
    let num = int(value)
    if num == 0 {
      cell(value, fill: rgb(255, 0, 0))
    } else if num == 1 {
      cell(value, fill: rgb(0, 255, 0))
    } else if num == 2{
      cell(value, fill: rgb(0, 255, 255))
    } else {
      cell(value, fill: rgb(201, 255, 229))
    }
  } else {
    value
  }
}
#let morning-revival-cell(value) = {
  if value != "" {
    let num = float(value)
    if num == 0 {
      cell(value, fill: rgb(255, 0, 0))
    } else if num == 0.5 {
      cell(value, fill: rgb(255, 165, 0))
    } else {
      cell(value, fill: rgb(0, 255, 0))
    }
  } else {
    value
  }
}
#let books-cell(value) = {
  if value != "" {
    let num = float(value)
    if num == 0 {
      cell(value, fill: rgb(255, 0, 0))
    } else if num == 0.5 {
      cell(value, fill: rgb(255, 165, 0))
    } else {
      cell(value, fill: rgb(0, 255, 0))
    }
  } else {
    value
  }
}
#let life-study-cell(value) = {
  if value != "" {
    let num = float(value)
    if num == 0 {
      cell(value, fill: rgb(255, 0, 0))
    } else if num == 0.5 {
      cell(value, fill: rgb(255, 165, 0))
    } else {
      cell(value, fill: rgb(0, 255, 0))
    }
  } else {
    value
  }
}