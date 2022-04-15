import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_demo/constants.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 19,
          right: 19,
          top: 49,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: SvgPicture.asset(
                    'assets/icons/backward.svg',
                    height: 11,
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/menu.svg',
                  height: 11,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(6),
              margin: const EdgeInsets.symmetric(vertical: 19),
              width: 269,
              height: 269,
              decoration: const BoxDecoration(
                color: kSecondaryColor,
                shape: BoxShape.circle,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image_1_big.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Vegan salad bowl\n',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      TextSpan(
                        text: 'With red tomato',
                        style: TextStyle(
                          fontSize: 16,
                          color: kTextColor.withOpacity(.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '\$20',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: kPrimaryColor,
                      ),
                ),
              ],
            ),
            const SizedBox(
              height: 19,
            ),
            const Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
              textAlign: TextAlign.justify,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 13,
                      horizontal: 23,
                    ),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(.19),
                      borderRadius: BorderRadius.circular(23),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Add to bag',
                          style: Theme.of(context).textTheme.button,
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        SvgPicture.asset(
                          'assets/icons/forward.svg',
                          width: 16,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 69,
                    height: 69,
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(.19),
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 49,
                          height: 49,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: kPrimaryColor.withOpacity(.9),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/bag.svg',
                          ),
                        ),
                        Positioned(
                          bottom: 9,
                          right: 13,
                          child: Container(
                            alignment: Alignment.center,
                            width: 23,
                            height: 23,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhiteColor,
                            ),
                            child: Text(
                              '0',
                              style:
                                  Theme.of(context).textTheme.button?.copyWith(
                                        color: kPrimaryColor,
                                      ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
