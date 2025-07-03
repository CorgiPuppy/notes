#import table: cell, header

#let lights-out-cell(value, today-date) = {
    let dateParts-today = today-date.split(".")
    let date-today = datetime(
        year: int(dateParts-today.at(2)),
        month: int(dateParts-today.at(1)),
        day: int(dateParts-today.at(0)),
    )

    let parts = value.split(" ")
    let dateParts = parts.at(0).split("-")
    let timeParts = parts.at(1).split(":")
    let date = datetime(
        year: int(dateParts.at(0)),
        month: int(dateParts.at(1)),
        day: int(dateParts.at(2))
    )
    let time = datetime(
        hour: int(timeParts.at(0)),
        minute: int(timeParts.at(1)),
        second: int(timeParts.at(2))
    )

    if (date == date-today) and (time.hour() == 22 and time.minute() == 30) {
        cell(value, fill: green)
    } else if (date == date-today) and (time.hour() >= 22 and time.hour() < 23) {
        cell(value, fill: yellow)     
    } else if date == date-today and ((time.hour() >= 21 and time.hour() < 22) or time.hour() == 23) {
        cell(value, fill: orange)
    } else {
        cell(value, fill: red)
    }
}
#let getting-up-cell(value, today-date) = {
    let dateParts-today = today-date.split(".")
    let date-today = datetime(
        year: int(dateParts-today.at(2)),
        month: int(dateParts-today.at(1)),
        day: int(dateParts-today.at(0)),
    )

    let parts = value.split(" ")
    let dateParts = parts.at(0).split("-")
    let timeParts = parts.at(1).split(":")
    let date = datetime(
        year: int(dateParts.at(0)),
        month: int(dateParts.at(1)),
        day: int(dateParts.at(2))
    )
    let time = datetime(
        hour: int(timeParts.at(0)),
        minute: int(timeParts.at(1)),
        second: int(timeParts.at(2))
    )

    if (date == date-today) and (time.hour() == 06 and time.minute() == 00) {
        cell(value, fill: green)
    } else if (date == date-today) and ((time.hour() == 05 and time.minute() >= 30) or (time.hour() == 06 and time.minute() <= 30)) {
        cell(value, fill: yellow)     
    } else if (date == date-today) and ((time.hour() == 05 and time.minute() < 30) or (time.hour() == 06 and time.minute() > 30)) {
        cell(value, fill: orange)
    } else {
        cell(value, fill: red)
    }
}
#let brush-cell(value) = {
  if value != "" {
    let num = int(value)
    if num == 1 {
      cell(value, fill: green)
    } else {
      cell(value, fill: red)
    }
  } else {
    value
  }
}
#let irrigator-cell(value) = {
  if value != "" {
    let num = int(value)
    if num == 1 {
      cell(value, fill: green)
    } else {
      cell(value, fill: red)
    }
  } else {
    value
  }
}
#let mouthwash-cell(value) = {
  if value != "" {
    let num = int(value)
    if num == 1 {
      cell(value, fill: green)
    } else {
      cell(value, fill: red)
    }
  } else {
    value
  }
}
#let mouth-guards-cell(value) = {
  if value != "" {
    let num = int(value)
    if num == 1 {
      cell(value, fill: green)
    } else {
      cell(value, fill: red)
    }
  } else {
    value
  }
}