import 'package:flutter/material.dart';
import 'package:food_app_demo/constants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String image;
  final int price;
  final String infos;
  final String ingredient;
  final String calories;
  final VoidCallback press;
  const FoodCard({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.infos,
    required this.ingredient,
    required this.calories,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(left: 19, right: 19),
        height: 399,
        width: 270,
        // color: Colors.teal,
        child: Stack(
          children: [
            //Big Background
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.06),
                  borderRadius: BorderRadius.circular(33),
                ),
              ),
            ),
            //Circle
            Positioned(
              top: 9,
              left: 9,
              child: Container(
                height: 179,
                width: 179,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.15),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            //Food image
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                width: 273,
                height: 183,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            //Price
            Positioned(
              right: 19,
              top: 93,
              child: Text(
                '\$$price',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: kPrimaryColor,
                    ),
              ),
            ),
            Positioned(
              top: 196,
              left: 39,
              child: Container(
                width: 183,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                            fontSize: 18,
                          ),
                    ),
                    Text(
                      ingredient,
                      style: TextStyle(
                        color: kTextColor.withOpacity(.4),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Text(
                      infos,
                      maxLines: 4,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: kTextColor.withOpacity(.66),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Text(calories),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
