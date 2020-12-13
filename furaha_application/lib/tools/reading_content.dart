class NewBookModel {
  String image;

  NewBookModel(this.image);
}

List<NewBookModel> newbooks =
    newBookData.map((item) => NewBookModel(item['image'])).toList();

var newBookData = [
  {"image": "assets/book1.jpeg"},
  {"image": "assets/book2.jpeg"},
  {"image": "assets/book3.jpg"},
  {"image": "assets/book4.jpg"},
  {"image": "assets/book5.jpg"},
  {"image": "assets/book6.jpg"},
];
