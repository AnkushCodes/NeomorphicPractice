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
      home: Design(),
      
      
    );
    
  }
}

class Design extends StatelessWidget {
  const Design({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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
    body: ListView(
      padding: EdgeInsets.symmetric(horizontal:20),
      children: <Widget>[
        Container(
          height:100,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height:70,
                width:MediaQuery.of(context).size.width,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      offset:Offset(3,3),
                      color:Colors.black12,
                      blurRadius:5
                    ),
                  BoxShadow(
                      offset:Offset(-3,-3),
                      color:Colors.black12,
                      blurRadius:5
                    ),
                  ]
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal:20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Period",
                          style:TextStyle(
                            fontWeight:FontWeight.bold,
                            color:Theme.of(context).textTheme.caption.color
                          ),
                          ),
                          SizedBox(width: 30,),
                          Text("Last 30 days",
                          style:TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold))
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Colors.white,
                          boxShadow: [
                            BoxShadow(
                            offset:Offset(3,3),
                            color:Colors.black12,
                            blurRadius: 5.0
                          ),
                          BoxShadow(
                            offset:Offset(-3,-3),
                            color:Colors.white,
                            blurRadius: 5.0
                          )
                          ]
                        ),
                        child: Icon(Icons.arrow_forward_ios,
                        size: 14,),
                      )
                    ],
                  ),
                  
                ),
              )
            ],)
        ),
        SizedBox(height:20),
        Container(
          height:300,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height:280,
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  color:Colors.white,
                   boxShadow: [
                            BoxShadow(
                            offset:Offset(3,3),
                            color:Colors.black12,
                            blurRadius: 5.0
                          ),
                          BoxShadow(
                            offset:Offset(-3,-3),
                            color:Colors.white,
                            blurRadius: 5.0
                          )
                          ]
                ),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.laptop_windows,
                      size:250,
                      ),
                    )
                    
                  ],
                ),
              )

            ],)
        )
      ],
    ),  
    );
  }
}