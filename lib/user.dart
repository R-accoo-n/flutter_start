class User{
  final String _fatherName;
  String name;
  String _surname;
  int currentAge = 0;

  User(this.name, this._fatherName, this._surname, this.currentAge);

  String get surname => _surname;

  String get fatherName => _fatherName;

  set surname(String value) {
    _surname = value;
  }

  void passYear() => currentAge++;

  @override
  String toString() => "Name = $name Surname = $surname Father name = $fatherName Age = $currentAge";

}