# Library System

Simple library system. It allows you to manage books and users, and perform operations such as borrowing, returning books and add Books & Users.

### Books

Clarification of the book class.

- `id`: The ID of the book.
- `title`: The title of the book.
- `isBorrowed`: Indicates whether the book is borrowed or not.

#### Methods

- `addBook(Books book)`: Adds a book to the library.
- `addUser(User user)`: Adds a user to the library.
- `returnBook(Books book)`: Returns a borrowed book to the library.
- `borrowBook(Books book)`: Borrows a book from the library.
- `displayInfo()`: Displays information about all books and users in the library.
