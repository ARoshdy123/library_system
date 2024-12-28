// Book class
class Books {
  int _id;
  String _title;
  bool _isBorrowed;
  Books(this._id, this._title, [this._isBorrowed = false]);
}

void displayBookInfo(Books book) {
  print(
      "BookID: ${book._id} - Title: ${book._title} - Is the book borrowed? ${book._isBorrowed}");
}

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

class Library {
  List<Books> _books = [];
  List<User> _users = [];
  Library();

  // add book method
  void addBook(Books book) {
    _books.add(book);
  }

  // add user method
  void addUser(User user) {
    _users.add(user);
  }

  // return book method
  void returnBook(Books book) {
    if (book._isBorrowed) {
      book._isBorrowed = false;
    } else {
      print('Book is not borrowed');
    }
  }

  // borrow book method
  void borrowBook(Books book) {
    book._isBorrowed = true;
  }

  // display books method
  void displayInfo() {
    print('Books informations:');
    for (var book in _books) {
      displayBookInfo(book);
    }
    print('Users data:');
    for (var user in _users) {
      displayUserInfo(user);
    }
  }
}

void main() {
  var book1 = Books(151, 'OOP');
  var book2 = Books(225, 'Flutter');
  var book3 = Books(380, 'Data Structures');
  var book4 = Books(381, 'Data Structures part2');
  var user1 = User(12, 'Ahmed');
  var user2 = User(24, 'Mohamed');
  var user3 = User(53, 'Roshdy');
  var library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);
  library.addBook(book4);
  library.addUser(user1);
  library.addUser(user2);
  library.addUser(user3);
  library.borrowBook(book1);
  library.borrowBook(book2);
  library.borrowBook(book3);
  library.displayInfo();
  library.returnBook(book1);
  library.displayInfo();
}
