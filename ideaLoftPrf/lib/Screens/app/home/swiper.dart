import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class NewSetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> steps = [
      _step0(),
      _step1(),
      _step2(),
    ];
    return Container(
      // top: true,
      // bottom: true,
      margin: EdgeInsets.only(top: 90),
      height: 230,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return steps[index];
        },
        loop: false,
        itemCount: steps.length,
        viewportFraction: 0.8,
        pagination: new SwiperPagination(
            margin: new EdgeInsets.only(top: 5.0, bottom: 5),
            builder: new DotSwiperPaginationBuilder(
                color: Color(0xFFDCE6F0), activeColor: Color(0xFF2CC197))),
        // control: new SwiperControl(),
      ),
    );
  }

  Widget _step0() {
    return Image.asset("images/card.png");
  }

  Widget _step1() {
    return Image.asset("images/card1.png");
  }

  Widget _step2() {
    return Image.asset("images/card.png");
  }
}
