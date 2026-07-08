class Book {
  String title;
  String author;
  double price;


  Book(this.title, this.author, this.price);

  void showDetail() {
    print('ชื่อหนังสือ: $title');
    print('ผู้แต่ง: $author');
    print('ราคา: $price บาท');
    print('---------------------');
  }
}

void main() {

  Book book1 = Book('Dart Programming', 'John Smith', 299.0);
  Book book2 = Book('Flutter for Beginners', 'Jane Doe', 450.0);

  book1.showDetail();
  book2.showDetail();
}