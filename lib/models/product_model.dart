class ProductModel {
  final String imagePath;
  final String title;
  final String description;
  final double oldPrice;
  final double newPrice;
  final String discount;
  final double rating;
  final int ratingCount;

  ProductModel({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.oldPrice,
    required this.newPrice,
    required this.discount,
    required this.rating,
    required this.ratingCount,
  });

  static List<ProductModel> getProducts1() {
    List<ProductModel> products = [
      ProductModel(
        imagePath: 'assets/images/product1.png',
        title: 'Women Printed Kurta',
        description: 'Neque porro quisquam est qui dolorem ipsum quia',
        oldPrice: 2499,
        newPrice: 1500,
        discount: '40%Off',
        rating: 4,
        ratingCount: 56890
      ),
      ProductModel(
        imagePath: 'assets/images/product2.png',
        title: 'HRX by Hrithik Roshan',
        description: 'Neque porro quisquam est qui dolorem ipsum quia',
        oldPrice: 4999,
        newPrice: 2499,
        discount: '50%Off',
        rating: 3.5,
        ratingCount: 56890
      ),
       ProductModel(
        imagePath: 'assets/images/product3.png',
        title: 'Philips BHH880/10',
        description: 'Neque porro quisquam est qui dolorem ipsum quia',
        oldPrice: 1999,
        newPrice: 999,
        discount: '50%Off',
        rating: 4.5,
        ratingCount: 56890
      ),
       ProductModel(
        imagePath: 'assets/images/product4.png',
        title: 'TITAN Men Watch- 1806N',
        description: 'Neque porro quisquam est qui dolorem ipsum quia',
        oldPrice: 3500,
        newPrice: 1500,
        discount: '60%Off',
        rating: 5,
        ratingCount: 56890
      ),
    ];
    return products;
  }

  static List<ProductModel> getProducts2() {
    List<ProductModel> products = [
      ProductModel(
        imagePath: 'assets/images/product5.png',
        title: 'IWC Schaffhausen 2021 Pilot\'s Watch "SIHH 2019" 44mm',
        description: '',
        oldPrice: 1599,
        newPrice: 650,
        discount: '60%Off',
        rating: 4,
        ratingCount: 56890
      ),
      ProductModel(
        imagePath: 'assets/images/product6.png',
        title: 'Labbin White Sneakers For Men and Female',
        description: '',
        oldPrice: 1250,
        newPrice: 650,
        discount: '70%Off',
        rating: 3.5,
        ratingCount: 56890
      ),
       ProductModel(
        imagePath: 'assets/images/product7.png',
        title: 'Mammon Women\'s Handbag(Set of 3, Beige)',
        description: '',
        oldPrice: 1999,
        newPrice: 750,
        discount: '60%Off',
        rating: 4.5,
        ratingCount: 56890
      ),
       ProductModel(
        imagePath: 'assets/images/product8.png',
        title: 'Do Bhai Women Wedges Sandal (Butterfly)',
        description: '',
        oldPrice: 1499,
        newPrice: 750,
        discount: '50%Off',
        rating: 5,
        ratingCount: 56890
      ),
       ProductModel(
        imagePath: 'assets/images/product9.png',
        title: 'Lakme Enrich Matte Lipstick - Shade RM1(4.7gm)',
        description: '',
        oldPrice: 1990,
        newPrice: 950,
        discount: '60%Off',
        rating: 5,
        ratingCount: 56890
      ),
    ];
    return products;
  }



}
