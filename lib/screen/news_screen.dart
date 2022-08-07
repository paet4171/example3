import 'package:card_swiper/card_swiper.dart';
import 'package:example3/interface/my_slider.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<MySlider> banners = [
    MySlider(
      id: 1,
      title: "pdpa",
      image:
          "https://www.cmru.ac.th/assets/images/banners/th/10-05-2022/0cbb9fcbf628d81dfcd99d467cec92359cae3da4.png",
    ),
    MySlider(
      id: 2,
      title: "covid 19",
      image:
          "https://www.cmru.ac.th/assets/images/banners/th/02-05-2022/5b13d8b42e412d8c1c13d442701242d4a0cddbfb.png",
      link: "https://facebook.com",
    ),
    MySlider(
      id: 3,
      title: "วันแม่",
      image:
          "https://www.cmru.ac.th/assets/images/banners/th/03-08-2022/2e4d94c11d47ae8dfa8c31ddc0bdf652801cff56.png",
      link: "https://pantip.com",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          child: Column(
        children: [
          Container(
            height: 150,
            child: Swiper(
              itemBuilder: (context, index) {
                return Image.network(
                  banners[index].image,
                  fit: BoxFit.cover,
                );
              },
              indicatorLayout: PageIndicatorLayout.COLOR,
              autoplay: true,
              itemCount: banners.length,
              pagination: const SwiperPagination(),
              control: const SwiperControl(),
            ),
          )
        ],
      )),
    );
  }
}