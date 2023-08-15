class User {
  final String email;
  final String firstName;
  final String lastName;
  final int age;
  final String displayName;
  final String uid;

  User(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.age,
      required this.displayName,
      required this.uid});

  Map<String, dynamic> toJson() => {
    'displayName': displayName,
    'first name': firstName,
    'last name': lastName,
    'age': age,
    'email': email,
    'uid': uid,
  };
}
