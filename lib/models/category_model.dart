class CategoryModel {

  String name;
  String imagePath;

  CategoryModel({
    required this.name,
    required this.imagePath,
  });

 static List<CategoryModel> getCategories(){

      List<CategoryModel> categories = [
      CategoryModel(
        name: "Beauty",
        imagePath: "assets/images/beauty.jpg",
      ),
      CategoryModel(
        name: "Fashion",
        imagePath: "assets/images/fashion.jpg",
      ),
      CategoryModel(
        name: "Kids",
        imagePath: "assets/images/kids.jpg",
      ),
      CategoryModel(
        name: "Mens",
        imagePath: "assets/images/mens.jpg",
      ),
      CategoryModel(
        name: "Womens",
        imagePath: "assets/images/womens.jpg",
      ),
      CategoryModel(
        name: "Gifts",
        imagePath: "assets/images/gifts.jpg",
      )
    ];

    return categories;
  }

}