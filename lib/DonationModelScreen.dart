import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scoped_model/scoped_model.dart';

class DonationModelScreen extends StatefulWidget{
  DonationModelScreen({Key key}): super(key:key);
  _DonationMdodelScreenState createState() => _DonationMdodelScreenState();
}

 class _DonationMdodelScreenState extends State<DonationModelScreen>{
    @override
    Widget build(BuildContext context){

      return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image:DecorationImage(
              fit:BoxFit.fill,
              image: NetworkImage("https://animalhow.com/wp-content/uploads/2019/01/puppy-in-cup.jpg"),
            )
          ),
          child : Container(
              child:Column(
                mainAxisAlignment : MainAxisAlignment.end,
                children: <Widget>[
                  Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),),
                      shadowColor: Color(0x802196F3),
                        child: _buildInitContent(),
                    )
                  
                ],

              )
          ),
      );
    }

   Widget _buildInitContent(){
      return Align(
          alignment : Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height:250.0,
            child: Column(children: <Widget>[
               _titleContainer(),
               _priceContainer(),
               _donateContainer(),
            ],)
          )
      );


    }

    Widget _titleContainer(){
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding : EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
              child : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children : <Widget>[
                      Text(
                        'STEWARD',
                        style : TextStyle(
                          color : Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,

                        )
                      ),
                      SizedBox(height:10.0),
                       Text(
                        'Dogs are Helpful, not Painful',
                        style : TextStyle(
                          color : Colors.blueGrey,
                          fontSize: 16.0,
                        )
                      ),
                    ]
                )
              ),
          ],)
      );
    }

  Widget _priceContainer() {
   return Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children : <Widget>[
          RawMaterialButton(
            onPressed: (){},
            child: Icon( Icons.keyboard_arrow_down, color: Color(0xffdd6b3d),
            size: 30.0,),
            shape: CircleBorder(),
            elevation: 2.0,
          fillColor: Color(0xffFAF4F2),
          padding: const EdgeInsets.all(10.0),
          ),
          Text(
            '\u0024 50',
            style: TextStyle(fontSize: 44.0, color : Colors.black)
          ),
          RawMaterialButton(
            onPressed: (){},
            child: Icon( Icons.keyboard_arrow_up, color: Color(0xffdd6b3d),
            size: 30.0,),
            shape: CircleBorder(),
            elevation: 2.0,
          fillColor: Color(0xffFAF4F2),
          padding: const EdgeInsets.all(10.0),
          ),
        ]
      ),
    );

  }

  _donateContainer() {
      return Padding(
        padding: EdgeInsets.only(top:25.0,left:10.0,right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              RaisedButton(
                textColor: Colors.white,
                color:Color(0xffdd6b3d),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                        Text("Donate",style: TextStyle(fontSize: 24.0)),
                        Icon(
                          FontAwesomeIcons.paw,
                          color: Colors.white,
                          size: 30.0,
                          )
                        ]
                    )),
                    onPressed: (){},
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  )
                ]
              )
            
          );
       
      }
 }
