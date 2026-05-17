class Person {
  String firstname;
  String lastname;
  Person(this.firstname, this.lastname);
  String get fullname => this.firstname + " " + this.lastname;
}

void main() {
  Person p1 = Person("Dara", "Veasna");
  print(p1.fullname);
}
