import 'myApp_list.dart';
import 'package:flutter/Material.dart';

class Regist extends StatefulWidget {
  @override
  _RegistState createState() => _RegistState();
}

class _RegistState extends State<Regist> with SingleTickerProviderStateMixin {
  TextEditingController _uNameController = new TextEditingController();
  TextEditingController _passWordController = new TextEditingController();
  GlobalKey _globalKey = new GlobalKey<FormState>();

  AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animationController.forward();
    _animationController.addListener(() => setState(() => {}));
    super.initState();
  }

  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormFiledTest'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Center(
          child: Column(
            children: <Widget>[
              register(context),
              // LinearProgress(),
            ],
          ),
        ),
      ),
    );
  }

  Widget register(BuildContext context) {
    return Form(
      // autovalidate: false,
      key: _globalKey,
      child: Column(
        // mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            controller: _uNameController,
            decoration: InputDecoration(
              labelText: '用户名',
              hintText: '请输入用户名',
              prefixIcon: Icon(Icons.person),
            ),
            validator: (v) {
              return v.trim().length > 0 ? null : '用户名不能为空';
            },
          ),
          TextFormField(
            controller: _passWordController,
            decoration: InputDecoration(
              labelText: '密码',
              hintText: '请输入密码',
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
            validator: (v) {
              return v.trim().length < 6 ? '密码不能小于6为数' : null;
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      child: Text('登录'),
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      onPressed: () {
                        if ((_globalKey.currentState as FormState).validate()) {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage(
                                        title: "App list",
                                      )),
                              (route) => (route) == null);
                        }
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget linearProgress() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          LinearProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: ColorTween(begin: Colors.grey, end: Colors.blue)
                .animate(_animationController),
            value: _animationController.value,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: CircularProgressIndicator(
              backgroundColor: Colors.grey,
              valueColor: ColorTween(begin: Colors.grey, end: Colors.blue)
                  .animate(_animationController),
              value: _animationController.value,
              strokeWidth: 5.0,
            ),
          ),
        ],
      ),
    );
  }
}
