import 'package:flutter/material.dart';
class BottomNavigationbarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarDemoState();
  }
}
class _BottomNavigationBarDemoState extends State<BottomNavigationbarDemo>{
 int _currentIndex=0;////自定义变量和函数
 void _onTapHandler (int index){
    setState((){
      _currentIndex=index;
    }

    );
 }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      currentIndex: _currentIndex,////当前item
      onTap: _onTapHandler,//点击调用
      type: BottomNavigationBarType.fixed,//底部导航栏超过4个就要设置这个type，不然不显示
      fixedColor: Colors.black,//激活状态的颜色
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text('Explore'),
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          title: Text('History'),
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('List'),
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('person'),
          ),
      ]
      );
  }
}