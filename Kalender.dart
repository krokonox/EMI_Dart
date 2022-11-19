import 'dart:io';

void displayCalendar(int month, int startingDay) {
  stdout.write("|Mo|Di|Mi|Do|Fr|Sa|So|");
  var daysList = [];
  var daysInMonth = getDaysInMonth(month);
  
  // Fill the first row with empty strings until the starting day  
  
  for (int i = 1; i <= startingDay; i++) {
    daysList.insert(0, ' ');
  }
  
  // Populate array with day numbers  

  for (int i = 1; i <= daysInMonth; i++) {
    daysList.add(i.toString());
  }
  
  // Print the calendar, go to next row if we have a new week
  
  for (var i = 0; i < daysList.length; i++) {
    if (i % 7 == 0) {
        stdout.write('\n|');
    }
    if (daysList[i].length == 2) {
      stdout.write(daysList[i] + '|');
    }
    else stdout.write(daysList[i] + ' |');
  }
  
  // Fill calendar with empty strings 
  
  if (daysList.length % 7 != 0) {
    for (int i = 0; i < 7 - (daysList.length % 7); i++) {
      stdout.write('  |');
    }
  }
  
  stdout.write('\n\n');
}

// Get number of days based on the month number 

int getDaysInMonth(int month) {
  if (month == 2) {
    return 28;
  } else if (month == 4 || month == 6 || month == 9 || month == 11) {
    return 30;
  } else {
    return 31;
  }
}

// Call displayCalendar function with multiple input parameters 

void main() {
  displayCalendar(2, 2);
  displayCalendar(1, 3);
  displayCalendar(12, 4);
}
