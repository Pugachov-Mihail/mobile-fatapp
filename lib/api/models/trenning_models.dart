class MainPageTrenning {
  final String title;
  final String description;
  final String image;
  late Trener trenerName;
  late double raiting;

  MainPageTrenning(this.title, this.description, this.image, this.trenerName, this.raiting);
}

class Trener{
  final String name;
  final String lastName;

  Trener(this.name, this.lastName);
}