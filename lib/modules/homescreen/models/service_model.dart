class ServiceModel {
  final String title;
  final String description;
  final String icon;
  final String image;

  ServiceModel({
    required this.title,
    required this.description,
    required this.icon,
    required this.image,
  });

  factory ServiceModel.fromMap(Map<String, dynamic> map) {
    return ServiceModel(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      icon: map['icon'] ?? '',
      image: map['image'] ?? '',
    );
  }
}