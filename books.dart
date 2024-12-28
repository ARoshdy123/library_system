// Book class
class Books {
  int _id;
  int get id => _id;
  String _title;

  bool isBorrowed = false;
  Books(this._id, this._title, [this.isBorrowed = false]);
}

void displayBookInfo(Books book) {
  print(
      "BookID: ${book._id} - Title: ${book._title} - Is the book borrowed? ${book.isBorrowed}");
}
