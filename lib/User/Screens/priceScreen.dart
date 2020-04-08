import 'package:flutter/material.dart';


class Pricescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabla de Precios"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Table(
              children: [
                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text("Prendas",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      child: Text("Lavado",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      child: Text("Planchado",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Remera",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("6",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("3",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Jeans",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("17",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("8",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                 TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Par de medias",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("4",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("2",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),
                 TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Ropa interior",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("5",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("3",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Shorts",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("14",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("7",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Buzo algodón",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("17",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("8",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Sweater",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("17",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("8",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Pantalón algodón",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("17",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("8",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Chomba",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("7",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("4",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Pantalón de vetir",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("17",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("8",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Camisa",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("11",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("6",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Calza",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("9",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("5",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Corpiño",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("8",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("4",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Campera algodón",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("17",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("8",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Remera deportiva",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("6",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("3",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Campera",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("36",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("18",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Jersey",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("36",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("18",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Pollera",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("14",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("7",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Vestido",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("36",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("18",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Uniforme",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("36",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("18",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Traje de baño",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("12",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("6",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Bufanda",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("13",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("7",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Guantes",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("11",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("6",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Chaleco",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("31",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("15",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Falda",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("13",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("7",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Top",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("5",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("3",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Body/Enterito",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("16",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("8",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Cancanes",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("5",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("3",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Toallas",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("13",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("6",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Blusa",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("10",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("5",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Zapatillas",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("60",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),

                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("Sábana",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("80",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      )),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top:20),
                      child: Text("60",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                      ),
                      ))
                  ]
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}