import 'package:flutter/cupertino.dart';
import 'package:flutter_cubit/color/color.dart';

class ResponsibButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsibButton({super.key, this.isResponsive = false, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset('img/button-one.png')],
      ),
    );
  }
}
