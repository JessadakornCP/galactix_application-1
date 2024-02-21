class ImageConstants {
  ImageConstants._init();
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  //Icon
  String get completed => toIconPng('completed');
  String get home => toIconPng('home');
  String get parcel => toIconPng('parcel');

  //Image
  //Logo
  String get logo => toImagePng('logo');
  String get logoText => toImagePng('logo_text');
  String get galactix => toImagePng('galactix');

  String toIconPng(String name) => 'asset/icon/$name.png';
  String toImagePng(String name) => 'asset/image/$name.png';
}
