import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> textOption = [
      'Privacy Policy',
      'About Us',
      'Our Food',
      'Careers',
      'Terms and Conditions',
      'Menu',
      'Opportunities',
      'Family Activities',
    ];

    return Container(
      color: const Color.fromARGB(255, 255, 195, 0),
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/mcdelivery.png'),
          SvgPicture.asset('assets/images/google_play.svg', width: 500),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 400,
              height: 100,
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                childAspectRatio: 8,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: List.generate(
                  textOption.length,
                  (index) => Text(textOption[index]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
