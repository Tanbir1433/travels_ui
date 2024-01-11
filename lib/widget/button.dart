import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/color/color.dart';
import 'package:flutter_cubit/widget/app_text.dart';

class ResponsibButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsibButton({super.key, this.isResponsive = false, this.width = 120});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                    margin: EdgeInsets.only(left: 20),
                    child: AppText(
                      text: "Book Trip Now",
                      color: Colors.white,
                    ))
                : Container(),
            Image.asset('img/button-one.png')
          ],
        ),
      ),
    );
  }
}
