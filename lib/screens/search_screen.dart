import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickbook/utils/app_styles.dart';
import 'package:tickbook/widgets/icon_text_widget.dart';

import '../utils/app_layout.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(

        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for?",style: Styles.headLineStyle1.copyWith(fontSize:  AppLayout.getWidth(40)),),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              //child: Text("hi"),
              child: Row(
                children: [

                  /*
                airline tickets*/

                  Container(

                    width: size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50)),),
                        color: Colors.white
                    ),
                    child: Center(child: Text("Airline Tickets"),),

                  ),
                  /*
                hotels
                */
                  Container(

                    width: size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50)),),
                        color: Colors.transparent
                    ),
                    child: Center(child: Text("Hotels"),),

                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
                  color: const Color(0xFFF4F6FD)
              ),
            ),
          ),
           Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getWidth(18),
              horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              color: Color(
                0xD91130CE
              ),
               borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),

    ),
            child: Center(
              child: Text(
                "find tickets",
                style: Styles.textStyle.copyWith(color: Colors.white, ),
              ),
            ),
            ),




        ],
      ),
    );
  }
}
