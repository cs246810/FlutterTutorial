import 'package:find_app/pc/forget_passwd.dart';
import 'package:find_app/pc/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFCC99),
      body: Center(
        child: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  TextEditingController userController = TextEditingController();
  TextEditingController passwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 450,
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "登陆",
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: "Monaco",
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              height: 6,
            ),
            Row(
              children: [
                Container(
                  width: 136,
                  height: 23,
                  color: Colors.white,
                  child: TextField(
                      controller: userController,
                      decoration: InputDecoration(
                          labelText: "用户名",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1)))),
                ),
                Container(
                  width: 4,
                  child: null,
                ),
                Container(
                  width: 136,
                  height: 23,
                  color: Colors.white,
                  child: TextField(
                      controller: passwdController,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "密码",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1)))),
                ),
                Container(
                  width: 4,
                  child: null,
                ),
                Container(
                  width: 30,
                  height: 23,
                  color: Colors.white,
//                  padding: EdgeInsets.all(0.0),
                  child: TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFFEFEFEF),
                      side: BorderSide(color: Colors.black, width: 0.2),
                      shape: BeveledRectangleBorder(),
                    ),
                    child: Text("登陆",
                        style: TextStyle(
                            fontSize: 13.3,
                            fontFamily: "Monaco",
                            color: Color(0xFF000000))),
                  ),
                ),
                Container(
                  width: 4,
                  child: null,
                ),
                Container(
                  width: 30.2,
                  height: 23,
                  color: Colors.white,
                  child: TextButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return RegisterPage();
                      // }));
                      Navigator.pushNamed(context, "register");
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFFEFEFEF),
                      side: BorderSide(color: Colors.black, width: 0.2),
                      shape: BeveledRectangleBorder(),
                    ),
                    child: Text("注册",
                        style: TextStyle(
                            fontSize: 13.3,
                            fontFamily: "Monaco",
                            color: Color(0xFF000000))),
                  ),
                ),
                Container(
                  width: 4,
                  child: null,
                ),
                Container(
                  width: 56.2,
                  height: 23,
                  color: Colors.white,
                  child: TextButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) {
                      //   return ForgetPasswordPage();
                      // }));
                      Navigator.pushNamed(context, "forget_passwd");
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFFEFEFEF),
                      side: BorderSide(color: Colors.black, width: 0.2),
                      shape: BeveledRectangleBorder(),
                    ),
                    child: Text("修改密码",
                        style: TextStyle(
                            fontSize: 13.3,
                            fontFamily: "Monaco",
                            color: Color(0xFF000000))),
                  ),
                ),
                Container(
                  width: 4,
                ),
                Container(
                    width: 30,
                    height: 23,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xFFEFEFEF),
                            side: BorderSide(color: Colors.black, width: 0.2),
                            shape: BeveledRectangleBorder()),
                        child: Text("返回",
                            style: TextStyle(
                                fontSize: 13.3,
                                fontFamily: "Monaco",
                                color: Color(0xFF000000))))),
              ],
            )
          ],
        ));
  }
}
