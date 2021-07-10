import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFCC99),
      body: Center(
        child: RegisterForm(),
      ),
    );
  }
}

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 843,
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "注册",
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: "Monaco",
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Container(
            height: 6,
            child: null,
          ),
          Row(
            children: [
              Container(
                width: 136,
                height: 23,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "用户名",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide:
                              BorderSide(color: Colors.black, width: 1))),
                ),
              ),
              Container(
                width: 4,
              ),
              Container(
                width: 136,
                height: 23,
                color: Colors.white,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "密码",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide:
                              BorderSide(color: Colors.black, width: 1))),
                ),
              ),
              Container(
                width: 4,
              ),
              Container(
                width: 136,
                height: 23,
                color: Colors.white,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "确认密码",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide:
                              BorderSide(color: Colors.black, width: 1))),
                ),
              ),
              Container(
                width: 4,
              ),
              Container(
                width: 136,
                height: 23,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "邮箱",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide:
                              BorderSide(color: Colors.black, width: 1))),
                ),
              ),
              Container(
                width: 4,
              ),
              Container(
                  width: 69,
                  height: 23,
                  child: TextButton(
                      onPressed: sendcheckcode,
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFEFEFEF),
                          side: BorderSide(color: Colors.black, width: 0.2),
                          shape: BeveledRectangleBorder()),
                      child: Text("发送验证码",
                          style: TextStyle(
                              fontSize: 13.3,
                              fontFamily: "Monaco",
                              color: Color(0xFF000000))))),
              Container(
                width: 4,
              ),
              Container(
                width: 136,
                height: 23,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "验证码",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide:
                              BorderSide(color: Colors.black, width: 1))),
                ),
              ),
              Container(
                width: 4,
              ),
              Container(
                  width: 30,
                  height: 23,
                  child: TextButton(
                      onPressed: sendcheckcode,
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFEFEFEF),
                          side: BorderSide(color: Colors.black, width: 0.2),
                          shape: BeveledRectangleBorder()),
                      child: Text("提交",
                          style: TextStyle(
                              fontSize: 13.3,
                              fontFamily: "Monaco",
                              color: Color(0xFF000000))))),
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
      ),
    );
  }

  void sendcheckcode() {}
}
