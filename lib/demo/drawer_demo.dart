import 'package:flutter/material.dart';
class Drawerdemo extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child:ListView(
        padding:EdgeInsets.zero,
        children:<Widget>[
          /*DrawerHeader(
            child:Text('header'.toUpperCase()),
            decoration: BoxDecoration(
              color:Colors.grey[100],
            ),
          ),*/
          UserAccountsDrawerHeader(//头部账户
            accountName: Text('wanghao',style:TextStyle(fontWeight:FontWeight.bold)),
            accountEmail: Text('wanghao@ninghao.net'),
            currentAccountPicture:CircleAvatar(
              backgroundImage: NetworkImage('https://resources.ninghao.org/images/wanghao.jpg'),
            ),
            decoration: BoxDecoration(//头部账户背景
              color:Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                fit: BoxFit.cover,//填充方式，全部填满
                colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight),//滤镜
                ),
            ),

          ),
          
          ListTile(
            title:Text('Messages',textAlign:TextAlign.right),
            trailing: Icon(Icons.message,color:Colors.black12,size:22.0),
            onTap:() =>Navigator.pop(context),
          ),
          ListTile(
            title:Text('Favorite',textAlign:TextAlign.right),
            leading: Icon(Icons.favorite,color:Colors.black12,size:22.0),
            onTap:() =>Navigator.pop(context),
          ),
          ListTile(
            title:Text('Setting',textAlign:TextAlign.right),
            trailing: Icon(Icons.settings,color:Colors.black12,size:22.0),
            onTap:() =>Navigator.pop(context),
          )
        ]
      )
    );
  }
}