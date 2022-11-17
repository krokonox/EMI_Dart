import 'dart:io';

void displayCalendar(int month, int startingDay) {
  stdout.write("|Mo|Di|Mi|Do|Fr|Sa|So|");
  var daysList = [];
  var daysInMonth = getDaysInMonth(month);
  
  for (int i = 1; i <= startingDay; i++) {
    daysList.insert(0, ' ');
  }

  for (int i = 1; i <= daysInMonth; i++) {
    daysList.add(i.toString());
  }
  
  for (var i = 0; i < daysList.length; i++) {
    if (i % 7 == 0) {
        stdout.write('\n|');
    }
    if (daysList[i].length == 2) {
      stdout.write(daysList[i] + '|');
    }
    else stdout.write(daysList[i] + ' |');
    
  }
  
  // Kalendar auffüllen mit Leerzeichen
  if (daysList.length % 7 != 0) {
    for (int i = 0; i < 7 - (daysList.length % 7); i++) {
      stdout.write('  |');
    }
  }
}

int getDaysInMonth(int month) {
  if (month == 2) {
    return 28;
  } else if (month == 4 || month == 6 || month == 9 || month == 11) {
    return 30;
  } else {
    return 31;
  }
}

void main() {
  displayCalendar(2, 2);
}
