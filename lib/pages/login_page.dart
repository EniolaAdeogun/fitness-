import 'package:fitness_ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Container(
                height: (size.height - 60) * 0.5,
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    Text(
                      'Hey there,',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Welcome back',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: bgTextField,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.mail,
                              color: black.withOpacity(0.5),
                            ),
                            SizedBox(width: 15),
                            Flexible(
                              child: TextField(
                                cursorColor: black.withOpacity(0.5),
                                decoration: InputDecoration(
                                    hintText: 'Email',
                                    border: InputBorder.none),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                     Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: bgTextField,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.lock,
                              color: black.withOpacity(0.5),
                            ),
                            SizedBox(width: 15),
                            Flexible(
                              child: TextField(
                                cursorColor: black.withOpacity(0.5),
                                decoration: InputDecoration(
                                    hintText: 'Password',
                                    border: InputBorder.none),
                              ),
                            ),

                            IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye , color: black.withOpacity(0.5)))
                          ],
                        ),
                      ),
                    ),

              SizedBox(
                height: 20,
              ),
              Text('Forgot your password?' , style: TextStyle(
                fontSize: 13,
                decoration: TextDecoration.underline
              ),)
                  ],
                ),
              ),
Container(
  height: (size.height - 60) * 0.5,
  child: Column(
    children: [
      InkWell(
        onTap: (){
          Navigator.pushNamedAndRemoveUntil(context, '/root_app' , (route)=> false  );
        } ,
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [secondary,primary]
              ),
              borderRadius: BorderRadius.circular(30) 
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login', style: TextStyle(fontSize: 16, color: white , fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
      SizedBox(
height: 20,
      ),
      Row(
        children: [
          Flexible(
            child: Divider(
              thickness: 0.8,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text('Or'),
          SizedBox(
            width: 5,
          ),
          Flexible(
child: Divider(
  thickness: 0.8,
),

          )
        ],
      ),

      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: black.withOpacity(0.1)
              )
            ),
            child: Center(
              child: SvgPicture.asset('assets/images/google_icon.svg', width: 20,),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: black.withOpacity(0.1)
              )
            ),
            child: Center(
              child: SvgPicture.asset('assets/images/facebook_icon.svg' , width: 20,),
            ),
          )
        ],
      )


    ],
  ),
)
            ],
          ),
        ),
      ),
    );
  }
}
