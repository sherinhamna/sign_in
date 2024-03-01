import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: BackButton(
            onPressed: ()=> Navigator.of(context).pop(),
          ),
        title: Text("sign In",style: TextStyle(fontSize: 28,color: Colors.red),),
    backgroundColor: Colors.white,
    ),
          body:Padding(
            padding: const EdgeInsets.only(left: 100,right: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,width: 30,),

                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'email',
                    ),
                  ),
                SizedBox(height: 20,width: 30,),

                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: 'password',
                  ),
                ),
                SizedBox(height: 50,width: 30,),
                ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.red,fixedSize: Size(200, 50)) ,onPressed: (){}, child: Text("login",style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                ),
                Text("OR"),
                ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.blue,fixedSize: Size(200, 50)) ,onPressed: (){}, child: Text("facebook login",style: TextStyle(fontSize:20,color: Colors.white ),),),
              ],
            ),
          ),
        ),
    );
  }
}
