void main() {
  Book book_1 = Book('Майстер і Маргарита', 'Михайло Булгаков', 1967);
  Book book_2 = Book('1984', 'Джордж Орвел', 1949);

  book_1.showInfo();
  book_2.showInfo();
}

class Book {
  String title;
  String author;
  int year;

  Book(this.title, this.author, this.year);

  void showInfo() {
    print('Назва: $title\nАвтор: $author\nРік публікації: $year\n');
  }
}