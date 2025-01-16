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

  static List<ProductModel> getProductSet1() {
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

  static List<ProductModel> getProductSet2() {
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

  static List<ProductModel> getProductSet3() {
    List<ProductModel> products = [
      ProductModel(
          imagePath: 'assets/images/product10.png',
          title: 'Black Winter...',
          description: 'Autumn And Winter Casual cotton-padded jacket...',
          oldPrice: 1599,
          newPrice: 650,
          discount: '60%Off',
          rating: 4,
          ratingCount: 56890
      ),
      ProductModel(
          imagePath: 'assets/images/product11.png',
          title: 'Mens Starry',
          description: 'Mens Starry Sky Printed Shirt 100% Cotton Fabric',
          oldPrice: 1250,
          newPrice: 650,
          discount: '70%Off',
          rating: 3.5,
          ratingCount: 56890
      ),
      ProductModel(
          imagePath: 'assets/images/product12.png',
          title: 'Black Dress',
          description: 'Solid Black Dress for Women, Sexy Chain Shorts Ladi...',
          oldPrice: 1999,
          newPrice: 750,
          discount: '60%Off',
          rating: 4.5,
          ratingCount: 56890
      ),
      ProductModel(
          imagePath: 'assets/images/product13.png',
          title: 'Pink Embroidered Dress',
          description: 'EARTHEN Rose Pink Embroidered Tiered Max...',
          oldPrice: 1499,
          newPrice: 750,
          discount: '50%Off',
          rating: 5,
          ratingCount: 56890
      ),
      ProductModel(
          imagePath: 'assets/images/product14.png',
          title: 'Flare Dress',
          description: 'Antheaa Black & Rust Orange Floral Print Tiered Midi F...',
          oldPrice: 1990,
          newPrice: 950,
          discount: '60%Off',
          rating: 5,
          ratingCount: 56890
      ),  ProductModel(
          imagePath: 'assets/images/product15.png',
          title: 'Denim Dress',
          description: 'Blue cotton denim dress Look 2 Printed cotton dr...',
          oldPrice: 1599,
          newPrice: 650,
          discount: '60%Off',
          rating: 4,
          ratingCount: 56890
      ),
      ProductModel(
          imagePath: 'assets/images/product16.png',
          title: 'Jordan Stay',
          description: 'The classic Air Jordan 12 to create a shoe that\'s fres...',
          oldPrice: 1250,
          newPrice: 650,
          discount: '70%Off',
          rating: 3.5,
          ratingCount: 56890
      ),
      ProductModel(
          imagePath: 'assets/images/product17.png',
          title: 'Realme 7 ',
          description: '6 GB RAM | 64 GB ROM | Expandable Upto 256...',
          oldPrice: 1999,
          newPrice: 750,
          discount: '60%Off',
          rating: 4.5,
          ratingCount: 56890
      ),
      ProductModel(
          imagePath: 'assets/images/product18.png',
          title: 'Sony PS4',
          description: 'Sony PS4 Console, 1TB Slim with 3 Games: Gran Turis...',
          oldPrice: 1499,
          newPrice: 750,
          discount: '50%Off',
          rating: 5,
          ratingCount: 56890
      ),
      ProductModel(
          imagePath: 'assets/images/product19.png',
          title: 'Black Jacket 12...',
          description: 'This warm and comfortable jacket is great for learni...',
          oldPrice: 1990,
          newPrice: 950,
          discount: '60%Off',
          rating: 5,
          ratingCount: 56890
      ), ProductModel(
          imagePath: 'assets/images/product20.png',
          title: 'D7200 Digital C...',
          description: 'D7200 Digital Camera (Nikon) In New Area...',
          oldPrice: 1250,
          newPrice: 650,
          discount: '70%Off',
          rating: 3.5,
          ratingCount: 56890
      ),
      ProductModel(
          imagePath: 'assets/images/product21.png',
          title: 'men’s & boys brown Shoes',
          description: 'George Walker Derby Brown Formal Shoes',
          oldPrice: 1999,
          newPrice: 750,
          discount: '60%Off',
          rating: 4.5,
          ratingCount: 56890
      ),
      ProductModel(
          imagePath: 'assets/images/product22.png',
          title: 'Muscle Blaze...',
          description: 'NUTRITIONAL POWERHOUSE: MuscleBl...',
          oldPrice: 1499,
          newPrice: 750,
          discount: '50%Off',
          rating: 5,
          ratingCount: 56890
      ),
      ProductModel(
          imagePath: 'assets/images/product23.png',
          title: 'Hot chocolate',
          description: 'chocolate with ashwagandha and get a coconu...',
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
