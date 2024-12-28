import 'books.dart';
import 'users.dart';

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
    if (book.isBorrowed) {
      book.isBorrowed = false;
    } else {
      print('Book is not borrowed');
    }
  }

  // borrow book method
  void borrowBook(Books book) {
    book.isBorrowed = true;
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
