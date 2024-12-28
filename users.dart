// User class
class User {
  int _id;
  String _name;
  int get id => _id;
  String get name => _name;

  User(this._id, this._name);
}

void displayUserInfo(User user) {
  print("UserID: ${user._id} - UserName: ${user._name}");
}
