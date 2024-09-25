class Book {
  // Properties
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  // Static property to keep track of total number of books
  static int totalBooks = 0;

  // Constructor
  Book(this.title, this.author, this.publicationYear, [this.pagesRead = 0]) {
    totalBooks++;
  }

  // Method to add pages read
  void read(int pages) {
    pagesRead += pages;
  }

  // Getter methods
  int getPagesRead() {
    return pagesRead;
  }

  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  // Method to calculate book's age
  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {
  // Create three book objects
  Book book1 = Book("The Great Gatsby", "F. Scott Fitzgerald", 1925);
  Book book2 = Book("1984", "George Orwell", 1949);
  Book book3 = Book("To Kill a Mockingbird", "Harper Lee", 1960);

  // Simulate reading different pages
  book1.read(50);
  book2.read(100);
  book3.read(150);

  // Display book details and pages read
  print("Book 1: ${book1.getTitle()} by ${book1.getAuthor()}");
  print("Published in: ${book1.getPublicationYear()}, Pages read: ${book1.getPagesRead()}");
  print("Book age: ${book1.getBookAge()} years\n");

  print("Book 2: ${book2.getTitle()} by ${book2.getAuthor()}");
  print("Published in: ${book2.getPublicationYear()}, Pages read: ${book2.getPagesRead()}");
  print("Book age: ${book2.getBookAge()} years\n");

  print("Book 3: ${book3.getTitle()} by ${book3.getAuthor()}");
  print("Published in: ${book3.getPublicationYear()}, Pages read: ${book3.getPagesRead()}");
  print("Book age: ${book3.getBookAge()} years\n");

  // Display total number of books created
  print("Total books created: ${Book.totalBooks}");
}
