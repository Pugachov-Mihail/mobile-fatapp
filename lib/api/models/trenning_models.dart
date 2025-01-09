class MainPageTrenning {
  late final String title;
  final String description;
  final String image;
  late Trener trenerInfo;
  late double raiting;
  List<TrenningInfo> trenningInfo;

  MainPageTrenning(this.title, this.description, this.image, this.trenerInfo, this.raiting, this.trenningInfo);
}

class Trener{
  final String name;
  final String lastName;

  Trener(this.name, this.lastName);
}

class TrenningInfo {
  String title;
  String avatar;
  List<int> approach;


  TrenningInfo(this.title, this.avatar, this.approach);
}