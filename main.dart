import 'package:play_dart/data/user/get_users.dart';

String greeting({required String name, required int age}) {
  return "Hello, $name and age: $age";
}

Future<void> main() async {
  print(greeting(name: "John", age: 20));

  try {
    final users = await fetchUsers();

    for (final user in users) {
      print('Name: ${user.name}, Email: ${user.email}');
    }
  } catch (e) {
    print(e.toString());
  }
}
