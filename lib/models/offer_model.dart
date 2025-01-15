class OfferModel {

  String heading;
  String description;
  String imagePath;

  OfferModel({
    required this.heading,
    required this.description,
    required this.imagePath
  });

  static List<OfferModel> getOffers(){
      List<OfferModel> offers = [
         OfferModel(heading: '10-30% OFF', description: 'Now in (product)\n All colours', imagePath: 'assets/images/offer1.png'),
         OfferModel(heading: '50-40% OFF', description: 'Now in (product)\n All colours', imagePath: 'assets/images/offer2.jpg'),
         OfferModel(heading: 'Flat 90% OFF', description: 'Now in (product)\n All colours', imagePath: 'assets/images/offer3.jpg')
      ];

      return offers;
  }


}