import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: HomePage(),
    );
  }

}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_HomePage();

}

class _HomePage extends State<HomePage>{
  var num1=TextEditingController();
  var num2=TextEditingController();
  var result=0.0;
  var Answer="Answer";
  void initiate()
  {
    setState(() {
      result=0.0;
      Answer="Result Cleared";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        titleTextStyle: TextStyle(fontFamily: "Fonts",fontWeight: FontWeight.bold,fontSize: 30),
      ),

      body: Center(
        child: Container(
          width:400,
          // height: 25,

          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("CALCULATOR",style: TextStyle(color: Colors.black,fontSize:35,fontWeight: FontWeight.bold),),

                  Image.asset("assets/images/flower.jpg"),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Wel-",style: TextStyle(color: Colors.deepOrange,fontFamily: "Fonts",fontSize:50,fontWeight: FontWeight.bold),),

                      Text("Come",style: TextStyle(color:Colors.amber,fontFamily: "Fonts",fontSize:50,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  TextField(
                    controller: num1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Number 1",
                        border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black,
                        width: 2
                    ),),
            ),
          ),
                  SizedBox(height: 11,),
                  TextField(
                    controller: num2,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Number 2",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 2
                        ),),
                    ),
                  ),
                  SizedBox(height: 11,width: 11,),
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        ElevatedButton(onPressed: (){
                          setState(() {
                            var n1=double.parse(num1.text.toString());
                            var n2=double.parse(num2.text.toString());
                            result=n1+n2;
                            Answer="Result of $n1 + $n2 =";
                          });
                        }, child:Text("+",style: TextStyle(fontSize: 20),)),

                        ElevatedButton(onPressed: (){
                          setState(() {
                            var n1=double.parse(num1.text.toString());
                            var n2=double.parse(num2.text.toString());
                            result=n1-n2;
                            Answer="Result of $n1 - $n2 =";
                          });
                        }, child:Text("-",style: TextStyle(fontSize: 20),)),

                        ElevatedButton(onPressed: (){
                          setState(() {
                            var n1=double.parse(num1.text.toString());
                            var n2=double.parse(num2.text.toString());
                            result=n1*n2;
                            Answer="Result of $n1 * $n2 =";
                          });
                        }, child:Text("*",style: TextStyle(fontSize: 20),)),

                        ElevatedButton(onPressed: (){
                          setState(() {
                            var n1=double.parse(num1.text.toString());
                            var n2=double.parse(num2.text.toString());
                            if(n2==0)
                              {
                                Answer="Divide by zero";
                                result = n1 / n2;
                              }
                            else {
                              result = n1 / n2;
                              Answer = "Result of $n1 / $n2 =";
                            }
                          });
                        }, child:Text("/",style: TextStyle(fontSize: 20),)),

                        ElevatedButton(onPressed: (){
                          initiate();
                        }, child:Text("Clear",style: TextStyle(fontSize: 20),)),

                      ],
                    ),
                  ),
                  Text("$Answer",style: TextStyle(fontSize: 20),),
                  Text("${result.toStringAsFixed(4)}",style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}