import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar.dart';
void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
return MaterialApp(
  debugShowCheckedModeBanner: false,
  home:Home(),//Home()自定义的
  theme:ThemeData(
    primarySwatch:Colors.yellow,//主题颜色
    highlightColor: Color.fromRGBO(255, 255, 255, 0.5),//白色，不透明度是0.5
    splashColor: Colors.white70//水波纹不透明度是70的白色
  )
);
  }
}
class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3, 
    child: Scaffold(
    appBar:AppBar(
      title:Text('NINGHAO'),
      elevation:30.0,//阴影默认4.0

      /*leading: IconButton(//  注释掉，就会默认把Draw添加上
        icon: Icon(Icons.menu), 
        tooltip: 'Navigation',
        onPressed: ()=>debugPrint('Navigation button is pressed')
        ),
      */
      actions: <Widget>[//actions: <Widget>里可以设置一组小部件
          IconButton(
            icon: Icon(Icons.search), 
            tooltip: 'search',
            onPressed: ()=>debugPrint('search button is pressed')
         ),
          IconButton(
            icon: Icon(Icons.more_horiz), 
            tooltip: 'more_horiz',
            onPressed: ()=>debugPrint('more_horiz button is pressed')
         ),
        ],
      bottom: TabBar(
        unselectedLabelColor: Colors.black38,
        indicatorColor: Colors.black54,//
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 1.0,
        tabs: <Widget>[
          Tab(icon: Icon(Icons.local_florist)),
          Tab(icon: Icon(Icons.change_history)),
          Tab(icon: Icon(Icons.directions_bike)),
        ],
        ),
    ),
    body:TabBarView(
      children: <Widget>[
        ListViewDemo(),
        Icon(Icons.local_florist,size:128.0,color:Colors.black12),
        Icon(Icons.directions_bike,size:128.0,color:Colors.black12),
      ],
    ),
    drawer: Drawerdemo(),

    bottomNavigationBar: BottomNavigationbarDemo(),

  ),
    );
  }
}

