import 'package:flutter/material.dart';
import 'package:lavalo/Orders/Screens/add_order_iron.dart';
import 'package:lavalo/Orders/Screens/add_orders.dart';

class ButtonOrders extends StatefulWidget {

  final String text ;
  final String title;
  double width = 0.0;
  double height = 0.0;
  String userPayID;


  ButtonOrders({Key key, @required this.text, @required this.title, this.height, this.width, this.userPayID});

  @override
  _ButtonOrdersState createState() => _ButtonOrdersState();
}

class _ButtonOrdersState extends State<ButtonOrders> {
  @override
  Widget build(BuildContext context) {

    final lavar = Container(
      child: InkWell(
        onTap: (){
          Navigator.push(context,
              new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new AddOrders(userPayID: widget.userPayID,)
              )
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              top: 30.0,
              left: 10.0,
              right: 10.0
          ),
          width: widget.width ,
          height: widget.height ,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black54,
                    blurRadius: 7.0,
                    offset: Offset(1.0, 4.0)
                )
              ],
              gradient: LinearGradient(
                  colors: [
                    Color(0xFFffffff),//arriba
                    Color(0xFFffffff)//abajo
                  ],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp
              )
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Lato",
                  color: Colors.black38
              ),
            ),
          ),
        ),
      ),
    );

    final planchar = Container(
      child: InkWell(
        onTap: (){
          Navigator.push(context,
              new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new AddOrderIron(userPayID: widget.userPayID,)
              )
          );
        },
        child: Container(
          margin: EdgeInsets.only(
              top: 30.0,
              left: 0,
              right: 10.0
          ),
          width: widget.width ,
          height: widget.height ,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black54,
                    blurRadius: 7.0,
                    offset: Offset(1.0, 4.0)
                )
              ],
              gradient: LinearGradient(
                  colors: [
                    Color(0xFFffffff),//arriba
                    Color(0xFFffffff)//abajo
                  ],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp
              )
          ),
          child: Center(
            child: Text(
              widget.title,
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Lato",
                  color: Colors.black38
              ),
            ),
          ),
        ),
      ),
    );

    return Container(
      child: Row(
        children: <Widget>[
          lavar,
          planchar
        ],
      ),
    );
  }
}
