import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_demo/constants.dart';
import 'package:food_app_demo/detail.screen.dart';
import 'package:food_app_demo/widgets/category_title.dart';
import 'package:food_app_demo/widgets/food_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kWhiteColor,
        fontFamily: 'Poppins',
        primaryColor: kPrimaryColor,
        textTheme: const TextTheme(
          headline5: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          button: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: const EdgeInsets.all(9),
        width: 69,
        height: 69,
        decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(.3),
          shape: BoxShape.circle,
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset('assets/icons/plus.svg'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 19, top: 39),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
                height: 11,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(19),
            child: Text(
              'Simple way to find \nTasty food',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                CategoryTitle(
                  title: 'All',
                  active: true,
                ),
                CategoryTitle(title: 'Chinese'),
                CategoryTitle(title: 'Korean'),
                CategoryTitle(title: 'Vietnamese'),
                CategoryTitle(title: 'Italian'),
                CategoryTitle(title: 'Spanish'),
                CategoryTitle(title: 'French'),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 19,
            ),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 19),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              border: Border.all(color: kBorderColor),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/search.svg',
                  color: kTextColor.withOpacity(.6),
                ),
                const SizedBox(
                  width: 13,
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const DetailScreen();
                        },
                      ),
                    );
                  },
                  title: 'Vegan salad bowl',
                  image: 'assets/images/image_1.png',
                  calories: '420Kcal',
                  ingredient: 'With red tomato',
                  price: 20,
                  infos:
                      'This form allows you to generate random text strings. The randomness comes from atmospheric noise.',
                ),
                FoodCard(
                  press: () {},
                  title: 'Vegan salad bowl',
                  image: 'assets/images/image_2.png',
                  calories: '420Kcal',
                  ingredient: 'With red tomato',
                  price: 20,
                  infos:
                      'This form allows you to generate random text strings. The randomness comes from atmospheric noise.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
