void main() {
  Student newstudent = Student();
  newstudent.name = 'jeslin';
  print(newstudent.name);
}

class Student {
  String _name = '';

  void set name(String name) {
    _name = name;
  }

  String get name {
    return _name;
  }
}
