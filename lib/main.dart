import 'package:flutter/material.dart';


void main() => runApp(MyApp());

var _mode = Brightness.light;

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: MyHomePage(),
     theme: ThemeData(
       primarySwatch: Colors.amber,
       brightness: _mode
     ),
     
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
  
  
}


class _MyHomePageState extends State<MyHomePage> {

  void _modechange() {
    setState(() {
      _mode = Brightness.dark;
      
    });
    MyApp();
  }
  
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Practice App"),
        actions: <Widget>[
          IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed:()=> print("object")
                  ),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image(image: AssetImage("images/image1.jpg")),
                Padding(
                  padding: EdgeInsets.only(top: 30.0 ,left: 20.0),
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage("images/icon.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 120.0 ,left: 20.0),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                   
                      Text(" codeJaan Official",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(top:5.0,left: 5.0,bottom: 5.0, right: 5.0),
                          child: Text("github.com/codejaan"),
                        ),
                      )
                    ],

                  ) 
              
                  
                )
              ],
            ),
            Padding(
                  padding: EdgeInsets.only(top: 0.0 ,left: 0.0,),
                  
                  child: 

            ListView(
              shrinkWrap: true,
              children: <Widget>[
                 Card(
                 child:ListTile(
                  
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                  onTap: (){
                    print("object1");
                  },

                )
            ),
            Card(
                 child:ListTile(
                  
                  leading: Icon(Icons.adb),
                  title: Text("Apps"),
                  onTap: (){
                    print("object2");
                  },

                )
            ),
            Card(
                 child:ListTile(
                  
                  leading: Icon(Icons.book),
                  title: Text("Libraries"),
                  onTap: (){
                    print("object3");
                  },

                )
            )
              ],
            ),
            )
            


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit,color: Colors.white),
        onPressed: () {
          
          print("fab pressed");
          
        },
        backgroundColor: Colors.lightBlueAccent,
        
      ),
      
      body: Center (
        child: Column(

        children: <Widget>[
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.android),
                    onPressed:()=> print("object")
                  ),

                  Expanded(
                    child: Text("Vineet J K"),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed:()=> print("add")
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.web),
                    onPressed:()=> print("object")
                  ),

                  Expanded(
                    child: Text("Chirag H S"),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed:()=> print("add")
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.android),
                    onPressed:()=> print("object")
                  ),
                  IconButton(
                    icon: Icon(Icons.web),
                    onPressed:()=> print("object")
                  ),

                  Expanded(
                    child: Text("Santhosh M"),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed:()=> print("add")
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.web),
                    onPressed:()=> print("object")
                  ),
                  IconButton(
                    icon: Icon(Icons.insert_chart),
                    onPressed:()=> print("object")
                  ),

                  Expanded(
                    child: Text("Vinay N M"),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed:()=> print("add")
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.web),
                    onPressed:()=> print("object")
                  ),

                  Expanded(
                    child: Text("Vinay N"),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed:()=> print("add")
                  ),
                ],
              ),
            ),
          ),
          
        ],

      ),
      
    )
    );
    
  }
}
