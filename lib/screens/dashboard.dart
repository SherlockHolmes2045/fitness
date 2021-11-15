import 'package:fitness/utils/hexcolor.dart';
import 'package:fitness/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Dashboard",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: SizeConfig.blockSizeHorizontal * 6.5),
                    ),
                    Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")))),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 3),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "17",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.blockSizeHorizontal * 6,
                                color: HexColor("#ACADFF")),
                          ),
                          const Text(
                            "Workous",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Completed",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const VerticalDivider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Text(
                            "245",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.blockSizeHorizontal * 6,
                                color: HexColor("#ACADFF")),
                          ),
                          const Text(
                            "Hours spent",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Training",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const VerticalDivider(
                        thickness: 0.5,
                        //width: SizeConfig.blockSizeHorizontal * 20,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Text(
                            "7",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.blockSizeHorizontal * 6,
                                color: HexColor("#ACADFF")),
                          ),
                          const Text(
                            "Challenges",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Participated in",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 3),
                child: Container(
                  height: SizeConfig.blockSizeVertical * 10,
                  decoration: BoxDecoration(
                    color: HexColor("#ACADFF"),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 1.9,
                            left: SizeConfig.blockSizeHorizontal * 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Waist cinching workout",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.85)),
                            ),
                            Text(
                              "75% completed",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.85)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: SizedBox(
                                height: SizeConfig.blockSizeVertical / 2,
                                width: SizeConfig.blockSizeHorizontal * 50,
                                child: LinearProgressIndicator(
                                  value: .75,
                                  backgroundColor: Colors.white,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      HexColor("#8587DC")),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 6),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Continue",
                            style: TextStyle(color: HexColor("#8587DC")),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 3,
              ),
              Text(
                "Activity",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.blockSizeHorizontal * 5),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical,
              ),
              const Text(
                "2 hours workout - 387 kcal - 2.6 km",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 3,
              ),
              SizedBox(
                height:SizeConfig.blockSizeVertical * 18 ,
                child: SfSparkBarChart(
                  color: HexColor("#8587DC").withOpacity(0.6),
                    data: const [2, 3, 4, 1, 3, 2, 2]),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
