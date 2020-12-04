class Category {
  final String name;
  final int numOfCourses;
  final String image;

  Category(this.name, this.numOfCourses, this.image);
}

List<Category> categories = categoriesData
    .map((item) => Category(item['name'], item['courses'], item['image']))
    .toList();

var categoriesData = [
  {"name": "Original", 'courses': 7, 'image': "assets/images/originalboba.png"},
  {"name": "Milk Boba", 'courses': 5, 'image': "assets/images/bobamilkl.png"},
  {"name": "Recomended", 'courses': 2, 'image': "assets/images/recomended.png"},
  {"name": "Rasa Baru", 'courses': 11, 'image': "assets/images/rasabaruu.png"},
  {"name": "Milk Boba", 'courses': 5, 'image': "assets/images/bobamilkl.png"},
  {"name": "Boba Ceria", 'courses': 2, 'image': "assets/images/rasabaru.png"},
  {"name": "Milk Boba", 'courses': 5, 'image': "assets/images/rasabaruu.png"},
];
