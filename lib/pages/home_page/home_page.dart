import 'package:flutter/material.dart';
import 'package:stylish_app/models/category_model.dart';
import 'package:stylish_app/models/offer_model.dart';
import 'package:stylish_app/models/product_model.dart';
import 'package:stylish_app/widgets/horizontal_product_list.dart';
import 'package:stylish_app/widgets/offer_pager.dart';
import 'package:stylish_app/widgets/rounded_button.dart';
import 'package:stylish_app/widgets/search_bar.dart';
import 'package:stylish_app/widgets/small_banner.dart';
import 'package:stylish_app/widgets/sort_filter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;

  List<CategoryModel> _categories = [];
  List<OfferModel> _offers = [];
  List<ProductModel> _products_1 = [];
  List<ProductModel> _products_2 = [];

  @override
  void initState() {
    super.initState();
    _getInitialInfo();
    _pageController = PageController(initialPage: (_offers.length / 2).floor());
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _getInitialInfo() {
    _categories = CategoryModel.getCategories();
    _offers = OfferModel.getOffers();
    _products_1 = ProductModel.getProducts1();
    _products_2 = ProductModel.getProducts2();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 15),
      children: [
        Column(
          children: [
            const SearchField(hintText: 'Search any Product'),
            SortAndFilterSection(
                label: 'All Featured',
                onSortPressed: () =>
                    Fluttertoast.showToast(msg: "Sort Pressed"),
                onFilterPressed: () =>
                    Fluttertoast.showToast(msg: "Filter Pressed")),
            categorySection(),
            OffersPager(
              pageController: _pageController,
              offers: _offers,
            ),
            SmallBanner(
                title: 'Deal of the Day',
                description: '22h 55m 20s remaining',
                iconPath: 'assets/icons/ic_clock.svg',
                backgroundColor: const Color(0xFF4392F9),
                textColor: Colors.white,
                borderRadius: 15.0,
                actionButton: RoundedButton(
                  text: 'View all',
                  onPressed: () =>
                      Fluttertoast.showToast(msg: "Button Pressed"),
                  radius: 10.0,
                )
            ),
            HorizontalProductList(products: _products_1, showRating: true, showDescription: true),
            specialOffer(),
            largeBanner_1(),
            SmallBanner(
                title: 'Trending Products',
                description: 'Last Date 29/02/22',
                iconPath: 'assets/icons/ic_calendar.svg',
                backgroundColor: const Color(0xFFFD6E87),
                textColor: Colors.white,
                borderRadius: 15.0,
                actionButton: RoundedButton(
                  text: 'View all',
                  onPressed: () =>
                      Fluttertoast.showToast(msg: "Button Pressed"),
                  radius: 10.0,
                )
            ),
            HorizontalProductList(products: _products_2,showRating: false, showDescription: false),
            largeBanner_2(),
            sponseredSegment()
          ],
        )
      ],
    );
  }

  Padding categorySection() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 120,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 10, right: 10),
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: ()=> Fluttertoast.showToast(msg: _categories[index].name),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        _categories[index].imagePath,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      _categories[index].name,
                      style: const TextStyle(
                          color: Color(0xFF21003D),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(width: 10),
          itemCount: _categories.length,
        ),
      ),
    );
  }

  Padding specialOffer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 150,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/specialOffer.png',
              width: 145,
            ),
            const SizedBox(width: 15),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Special Offers',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 35,
                      height: 35,
                      child: Image.asset(
                        'assets/images/shockedEmoji.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'We make sure you get the offer you need at best prices',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }

  Padding largeBanner_1() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 0),
      child: Container(
        height: 200,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/largeBanner1.png'),
                fit: BoxFit.cover)),
        child: Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Special Offers',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Stand a chance to get rewarded',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RoundedButton(
                  text: 'Visit now',
                  borderColor: Colors.transparent,
                  backgroundColor: const Color(0xFFF83758),
                  onPressed: () =>
                      Fluttertoast.showToast(msg: "Button Pressed"),
                  radius: 10.0,
                )
              ],
            ),
          ],
        )),
      ),
    );
  }

  Padding largeBanner_2() {
    return Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        child: Container(
            height: 300,
            decoration: const BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(
                    'assets/images/largeBanner2.png',
                    height: 225,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                          'New Arrivals',
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 18,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                          ),
                          SizedBox(height: 5),
                          // Second Text
                          Text(
                            'Summer\' 25 Collections',
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 14,
                              overflow: TextOverflow.ellipsis,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      RoundedButton(
                        text: 'View all',
                        onPressed: () => Fluttertoast.showToast(msg: "Button Pressed"),
                        borderColor: Colors.transparent,
                        backgroundColor:  const Color(0xFFF83758),
                        radius: 10.0,
                      )
                    ],
                  ),
                )
              ],
            )));
  }

  Padding sponseredSegment(){
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: Expanded(
        child: InkWell(
          onTap: ()=> Fluttertoast.showToast(msg: "Sponsered tapped"),
          child: Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                   child: Text(
                    'Sponsered',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 20,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                 ),
                  ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(12)),
                        child: Image.asset(
                          'assets/images/sponsered.png',
                          height: 310,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                  ),
                   const Padding(
                     padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                          Text(
                          'up to 50% Off',
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 20,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios)
                      ],
                                     ),
                   )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
