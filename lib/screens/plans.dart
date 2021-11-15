import 'package:fitness/screens/payment.dart';
import 'package:fitness/utils/hexcolor.dart';
import 'package:fitness/utils/size_config.dart';
import 'package:flutter/material.dart';

class Plans extends StatefulWidget {
  const Plans({Key? key}) : super(key: key);

  @override
  _PlansState createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding:  EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 3,right: SizeConfig.blockSizeHorizontal * 3,top: SizeConfig.blockSizeVertical * 3),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.blockSizeVertical * 17,
                child: Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                  ),
                  color: HexColor("#ACADFF"),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children:  [
                          Padding(
                            padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 3,top: SizeConfig.blockSizeVertical * 2.5),
                            child: Text(
                                "Annuellement",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.blockSizeHorizontal * 4
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 1.5,left: SizeConfig.blockSizeHorizontal * 3, ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(text: TextSpan(
                                  text: "150k XAF",
                                  style: TextStyle(
                                    fontSize: SizeConfig.blockSizeHorizontal * 5
                                  ),
                                  children: const [
                                    TextSpan(
                                      text: "/an"
                                    )
                                  ]
                                )),
                                const Text(
                                  "10k XAF/mois",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 8,right: SizeConfig.blockSizeHorizontal * 2),
                        child: CircleAvatar(
                          radius: SizeConfig.blockSizeHorizontal * 3.5,
                          backgroundColor: Colors.grey.withOpacity(0.5),
                          child: Icon(
                            Icons.check,
                            size: SizeConfig.blockSizeHorizontal * 3.5,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),

              SizedBox(
                height: SizeConfig.blockSizeVertical * 17,
                child: Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)
                  ),
                  color: HexColor("#ACADFF"),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children:  [
                          Padding(
                            padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 3,top: SizeConfig.blockSizeVertical * 2.5),
                            child: Text(
                              "Mensuellement",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: SizeConfig.blockSizeHorizontal * 4
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 1.5,left: SizeConfig.blockSizeHorizontal * 2, ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(text: TextSpan(
                                    text: "15k XAF",
                                    style: TextStyle(
                                        fontSize: SizeConfig.blockSizeHorizontal * 5
                                    ),
                                    children: const [
                                      TextSpan(
                                          text: "/mois"
                                      )
                                    ]
                                )),
                                const Text(
                                  "1k XAF/jour",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 8,right: SizeConfig.blockSizeHorizontal * 2),
                        child: CircleAvatar(
                          radius: SizeConfig.blockSizeHorizontal * 3.5,
                          backgroundColor: Colors.grey.withOpacity(0.5),
                          child: Icon(
                            Icons.check,
                            size: SizeConfig.blockSizeHorizontal * 3.5,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),

              SizedBox(
                height: SizeConfig.blockSizeVertical * 17,
                child: Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)
                  ),
                  color: HexColor("#ACADFF"),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children:  [
                          Padding(
                            padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2.5),
                            child: Text(
                              "Hebdomadaire",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: SizeConfig.blockSizeHorizontal * 4
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 1.5,left: SizeConfig.blockSizeHorizontal * 2, ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(text: TextSpan(
                                    text: "5k XAF",
                                    style: TextStyle(
                                        fontSize: SizeConfig.blockSizeHorizontal * 5
                                    ),
                                    children: const [
                                      TextSpan(
                                          text: "/semaine"
                                      )
                                    ]
                                )),
                                const Text(
                                  "1k XAF/jour",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 8,right: SizeConfig.blockSizeHorizontal * 2),
                        child: CircleAvatar(
                          radius: SizeConfig.blockSizeHorizontal * 3.5,
                          backgroundColor: Colors.grey.withOpacity(0.5),
                          child: Icon(
                            Icons.check,
                            size: SizeConfig.blockSizeHorizontal * 3.5,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 8,),
                child: SizedBox(
                  height: SizeConfig.blockSizeVertical * 8,
                  width: SizeConfig.screenWidth / 1.2,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                          return RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(SizeConfig.blockSizeHorizontal * 3));
                        }),
                        backgroundColor: MaterialStateProperty.all<Color>(HexColor("#8587DC"))
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Payment()));
                    },
                    child: const Text(
                        "Souscrire"
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
