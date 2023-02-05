// ignore_for_file: unnecessary_getters_setters
//Reminder Class
class Reminder{
  String _title;
  DateTime _dateTime;
  //TODO- Add a type for reminder notes here and create and get and set methods for it
  bool _control;

  String get title => _title;
  DateTime get dateTime => _dateTime;
  bool get control => _control;

  set title(String title){
    _title = title;
  }

  set dateTime(DateTime dateTime){
    _dateTime = dateTime;
  }

  Reminder({required String title,
    required DateTime dateTime,
    bool control = true})
  :
        _title = title,
        _dateTime = dateTime,
        _control = control;

  //TODO-Cupertino Switch (Reminder toggle)
  void toggleSwitch(){
    _control = !_control;
  }
}