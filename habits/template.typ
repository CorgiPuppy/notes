#import table: cell, header

#let lights-out-cell(value, today-date) = {
    if value != "" {
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

        if (date == date-today - duration(days: 1)) {
            if (time.hour() == 22 and time.minute() == 30) {
                cell(value, fill: rgb(0, 255, 0))
            } else if (time.hour() >= 22 and time.hour() < 23) {
                cell(value, fill: yellow)     
            } else if ((time.hour() >= 21 and time.hour() < 22) or time.hour() == 23) {
                cell(value, fill: rgb(255, 165, 0))
            }
        } else {
            cell(value, fill: rgb(255, 0, 0))
        }
    }
}
#let getting-up-cell(value, today-date) = {
    if value != "" {
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

        if (date == date-today) {
            if (time.hour() == 06 and time.minute() == 00) {
                cell(value, fill: rgb(0, 255, 0))
            } else if ((time.hour() == 05 and time.minute() >= 30) or (time.hour() == 06 and time.minute() <= 30)) {
                cell(value, fill: yellow)     
            } else if ((time.hour() == 05 and time.minute() < 30) or (time.hour() == 06 and time.minute() > 30)) {
                cell(value, fill: rgb(255, 165, 0))
            } else {
                cell(value, fill: rgb(255, 0, 0))
            }
        } else {
            cell(value, fill: rgb(255, 0, 0))
        }
    }
}
#let brush-cell(value) = {
  if value != "" {
    let num = int(value)
    if num == 0 {
      cell(value, fill: rgb(255, 0, 0))
    } else if num == 1 {
      cell(value, fill: rgb(0, 255, 0))
    } else {
      cell(value, fill: rgb(0, 255, 255))
    }
  } else {
    value
  }
}
#let irrigator-cell(value) = {
  if value != "" {
    let num = int(value)
    if num == 0 {
      cell(value, fill: rgb(255, 0, 0))
    } else if num == 1 {
      cell(value, fill: rgb(0, 255, 0))
    } else {
      cell(value, fill: rgb(0, 255, 255))
    }
  } else {
    value
  }
}
#let mouthwash-cell(value) = {
  if value != "" {
    let num = int(value)
    if num == 0 {
      cell(value, fill: rgb(255, 0, 0))
    } else if num == 1 {
      cell(value, fill: rgb(0, 255, 0))
    } else {
      cell(value, fill: rgb(0, 255, 255))
    }
  } else {
    value
  }
}
#let mouth-guards-cell(value) = {
  if value != "" {
    let num = int(value)
    if num == 0 {
      cell(value, fill: rgb(255, 0, 0))
    } else if num == 1 {
      cell(value, fill: rgb(0, 255, 0))
    } else {
      cell(value, fill: rgb(0, 255, 255))
    }
  } else {
    value
  }
}
#let learning-cell(value) = {
  if value != "" {
    let num = int(value)
    value = str(calc.round(duration(minutes: num).hours(), digits: 2))
    if num == 0 {
      cell(value, fill: rgb(255, 0, 0))
    } else if num > 0 and num < 120 {
      cell(value, fill: rgb(255, 165, 0))
    } else if num >= 120 and num < 240 {
      cell(value, fill: rgb(255, 205, 0))
    } else if num >= 240 and num < 360 {
      cell(value, fill: rgb(225, 225, 0))
    } else if num >= 360 and num < 480 {
      cell(value, fill: rgb(200, 255, 0))
    } else if num == 480 {
      cell(value, fill: rgb(0, 255, 0))
    } else {
      cell(value, fill: rgb(0, 255, 255))
    }
  } else {
    value
  }
}
#let workout-cell(value) = {
  if value != "" {
    let num = int(value)
    value = str(calc.round(duration(minutes: num).hours(), digits: 2))
    if num == 0 {
      cell(value, fill: rgb(255, 0, 0))
    } else if num > 0 and num < 15 {
      cell(value, fill: rgb(255, 165, 0))
    } else if num >= 15 and num < 30 {
      cell(value, fill: rgb(255, 205, 0))
    } else if num >= 30 and num < 45 {
      cell(value, fill: rgb(225, 225, 0))
    } else if num >= 45 and num < 60 {
      cell(value, fill: rgb(200, 255, 0))
    } else if num == 60 {
      cell(value, fill: rgb(0, 255, 0))
    } else {
      cell(value, fill: rgb(0, 255, 255))
    }
  } else {
    value
  }
}
