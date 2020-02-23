import 'package:flutter/material.dart';

void main()=>runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.white)
      ),
      home: Scaffold(
        
        appBar: AppBar(leading:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height:40.0,
              width:40.0,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color:Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset:Offset(3,3),
                    color:Colors.black12,
                    blurRadius: 5
                  ),
                   BoxShadow(
                    offset:Offset(-3,-3),
                    color:Colors.white,
                    blurRadius: 5
                  )
                ]
                
              ),
              child: Icon(            
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 14,),
            )
          ],
          ),
          centerTitle: true,
          elevation: 0,
          title: Text('This is app',
          style:TextStyle(
            color: Colors.black,
            fontSize:25,
          fontWeight:FontWeight.w900)
          ),
          ),
        
      ),
      
      
    );
    
  }
}