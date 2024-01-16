import 'package:fish_market_bd/helper/form_helper.dart';
import 'package:fish_market_bd/utils/config.dart';
import 'package:fish_market_bd/utils/mycolors.dart';
import 'package:flutter/material.dart';

import '../../../global_widget/custom_widget.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
       // isLeding: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        //title: AppConfig.appName,
        //action:[IconButton(onPressed: (){}, icon: Icon(Icons.search)), ],
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(AppConfig.loginScreenTitle,
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: MyColors.primaryColors,
              ),
              ),
              Text(AppConfig.loginScreenSubTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: MyColors.blackColors,
                ),
              ),

              const CustomTextFiled(
                hinText:'Email',
              ),
              SizedBox(height: 15.0,),
              CustomTextFiled(
                hinText: "Password",
                secqure: true,
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
