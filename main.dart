import 'package:play_dart/data/user/get_users.dart';

Future<void> main() async {
  final users = await fetchUsers();

  for (final user in users) {
    print('Name: ${user.name}, Email: ${user.email}');
  }
}
