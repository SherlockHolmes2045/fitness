import 'package:fitness/utils/hexcolor.dart';
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
                  Container(

                  )
                ],
              ),
            )));
  }
}
