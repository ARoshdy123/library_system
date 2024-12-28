import 'books.dart';
import 'users.dart';
import 'library.dart';

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
  library.borrowBook(book3);
  library.displayInfo();
  library.returnBook(book3);
  library.displayInfo();
}
