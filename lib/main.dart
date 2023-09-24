import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///This programme how to creat a stateful widget and how it work
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageView();
  }
}
class HomePageView extends State<HomePage> {
  var count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count:\n$count'),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
                setState(() {
                  count+=1;
                });
                if(count==5){
                  showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text("Button pressed 5 times"),
                          actions: [
                            TextButton(onPressed: (){}, child: Text('Close')),
                          ],
                        );
                      }
                  );
                }
            }, child: Text('+')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                count-=1;
              });
              if(count==5){
                showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Button pressed 5 times"),
                        actions: [
                          TextButton(onPressed: (){}, child: Text('Close')),
                        ],
                      );
                    }
                );
              }

            }, child: Text('-')),

          ],

        ),
      ),
    );
  }
}
