import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish_app/models/offer_model.dart';
import 'package:stylish_app/widgets/rounded_button.dart';


class OffersPager extends StatelessWidget {
  final PageController pageController;
  final List<OfferModel> offers;

  const OffersPager({
    super.key,
    required this.pageController,
    required this.offers,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              itemCount: offers.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(offers[index].imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            offers[index].heading,
                            style: const TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            offers[index].description,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          RoundedButton(
                            onPressed: () {
                              Fluttertoast.showToast(
                                msg: "Button Pressed",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                              );
                            },
                            text: 'Shop Now',
                            radius: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          SmoothPageIndicator(
            controller: pageController,
            count: offers.length,
            effect: const WormEffect(
              dotColor: Colors.grey,
              activeDotColor: Color(0xFFFFA3B3),
              dotHeight: 8,
              dotWidth: 8,
            ),
          ),
        ],
      ),
    );
  }
}

