import 'package:fitness/utils/hexcolor.dart';
import 'package:fitness/utils/size_config.dart';
import 'package:fitness/wigets/credit_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/glassmorphism_config.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
              elevation: 0,
              bottom: TabBar(
                indicatorColor: HexColor("#8587DC"),
                labelColor: HexColor("#8587DC"),
                unselectedLabelColor: HexColor("#ACADFF"),
                tabs: const [
                  Tab(text: "Payer par carte",),
                  Tab(text: "Payer par mobile money",),
                ],
              ),
            ),
              body: TabBarView(
                children: [
                  const CreditCard(),
                  SingleChildScrollView(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 5),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 7),
                            child: RichText(
                              text:  TextSpan(
                                text: "10k XAF",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: SizeConfig.blockSizeHorizontal * 5
                                ),
                                children: const [
                                  TextSpan(
                                    text: "/ mois"
                                  )
                                ]
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 10),
                            child: TextFormField(
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding:  EdgeInsets.only(left:SizeConfig.blockSizeHorizontal * 3),
                                    child: Icon(
                                      Icons.phone,
                                      color: HexColor("#8587DC"),
                                    ),
                                  ),
                                  labelText: "numéro de téléphone",
                                  labelStyle: TextStyle(
                                    color:  HexColor("#32586D"),
                                  ),
                                  contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color:  HexColor("#32586D")),
                                      borderRadius: BorderRadius.circular(10)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: HexColor("#32586D")),
                                      borderRadius: BorderRadius.circular(10)),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 5),
                            child: TextFormField(
                              initialValue: "10000",
                                enableInteractiveSelection: false, // will disable paste operation
                                enabled: false,
                                style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding:  EdgeInsets.only(left:SizeConfig.blockSizeHorizontal * 3),
                                    child: Icon(
                                      Icons.money,
                                      color: HexColor("#8587DC"),
                                    ),
                                  ),
                                  suffix: const Text(
                                    "XAF",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  labelText: "Montant",
                                  labelStyle: TextStyle(
                                    color:  HexColor("#32586D"),
                                  ),
                                  contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color:  HexColor("#32586D")),
                                      borderRadius: BorderRadius.circular(10)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: HexColor("#32586D")),
                                      borderRadius: BorderRadius.circular(10)),
                                )),
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
                                    "Payer"
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
