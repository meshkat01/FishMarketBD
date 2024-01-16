import 'package:fish_market_bd/utils/config.dart';
import 'package:fish_market_bd/utils/mycolors.dart';
import 'package:fish_market_bd/views/authentication/loginscreen/login_screen.dart';
import 'package:fish_market_bd/views/authentication/registerscreen/register_screen.dart';
import 'package:flutter/material.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/fish_market.png'),
              Column(
               children: [
                 Text(AppConfig.welcomeScreenTitle,
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontWeight: FontWeight.w800,
                     fontSize: 35.0,
                     color: MyColors.primaryColors,
                   ),
                 ),
                 Text(AppConfig.welcomeScreenSubTitle,
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 15.0,
                     color: MyColors.blackColors.withOpacity(.5),
                   ),
                 ),
               ],
             ),
              Container(
                    height: 60.0,
                    width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen(),),);
                        },
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: MyColors.primaryColors,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: MyColors.primaryColors.withOpacity(.4),
                                blurRadius: 3,
                              )
                            ],
                          ),
                          child: Center(
                            child: Text(AppConfig.welcomeScreenButtonLogin,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: MyColors.whiteColors,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> RegistrationScreen(),),);
                        },
                        child: SizedBox(
                          height: 60,
                          child: Center(
                            child: Text(AppConfig.welcomeScreenButtonReg,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: MyColors.blackColors,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
