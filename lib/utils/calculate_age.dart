calculateAge(DateTime birthDate) {
  DateTime currentDate = DateTime.now();
  int age = currentDate.year - birthDate.year;
  int currentMonth = currentDate.month;
  int birthMonth = birthDate.month;

  if (birthMonth > currentMonth) {
    age--;
  } else if (currentMonth == birthMonth) {
    int currentDay = currentDate.day;
    int birthDay = birthDate.day;
    if (birthDay > currentDay) {
      age--;
    }
  }
  return age;
}