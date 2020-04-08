import 'package:flutter/material.dart';
import 'package:lavalo/Help/widgets/parrafo.dart';
import 'package:lavalo/Widgets/button_purple.dart';
import 'package:url_launcher/url_launcher.dart';

class Help extends StatelessWidget {


  final title = Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 20),
    child: Text(
      "Un poco sobre nosotros...",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,

      ),
    ),
  );
  final title2 = Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 20),
    child: Text(
      "¿Cuál es nuestro fin social como empresa?",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,

      ),
    ),
  );
  final title3 = Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.only(left: 20, right: 20),
    child: Text(
      "Preguntas frecuentes:",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,

      ),
    ),
  );
  final title4 = Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.only(left: 20, right: 20),
    child: Text(
      "¿Qué pasa si deseo cambiar los horarios de reparto/entrega?",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,

      ),
    ),
  );
  final title5 = Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.only(left: 20, right: 20),
    child: Text(
      "Me olvide de agregar una prenda… ¿Qué hago?",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,

      ),
    ),
  );
  final title6 = Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.only(left: 20, right: 20),
    child: Text(
      "Agregué una prenda extra al pedido… ¿Qué hago?",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,

      ),
    ),
  );
  final title7 = Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.only(left: 20, right: 20),
    child: Text(
      "¿Hay algún tipo de prenda que no laven?",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  final title8 = Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.only(left: 20, right: 20),
    child: Text(
      "Me devolvieron la ropa en mal estado.",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  final title9 = Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.only(left: 20, right: 20),
    child: Text(
      "¿Cuentan con seguro que protejan mis prendas?",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  final title10 = Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.only(left: 20, right: 20),
    child: Text(
      "¿Utilizan siempre los mismos productos/procedimientos?",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ayuda"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 60),
            child: ListView(
              children: <Widget>[
                title,
                title2,
                Parrafo("-Lávalo es una aplicación que sirve como intermediaria/coordinadora entre Clientes que deseen lavar su ropa y los Laver’s; que están dispuestos a realizar dicho trabajo desde sus casas. Los Laver´s son personas que por motivos familiares/personales pasan gran tiempo de su día es sus hogares, no pudiendo generar ingresos. Desde lávalo nuestro objetivo es poder brindarle la oportunidad de que se reinserten en el mercado laboral, ayudándoles a generar nuevamente ingresos, sin descuidar a quienes más aman.  Además adoptamos un compromiso con el ambiente y somos la primera lavandería digital en adoptar todos nuestros productos 100% biodegradables. Y… ¡Se nos olvidaba! ¡Además somos un 25% más barato que una lavandería tradicional! ¿Alguna duda más de porque elegirnos?"),
                title3,
                title4,
                Parrafo("-Te debes comunicar con tu Laver designado. ¡Ambos  podrán acordar un día y horario diferente al establecido. No presenta cargo ni penalidades extras!"),
                title5,
                Parrafo("-No te preocupes, tu Laver la agregara del pedido. Se te cobrará el monto por el servicio de la prenda."),
                title6,
                Parrafo("-No te preocupes, tu Laver la eliminara del pedido. Se te rembolsara el dinero por dicha prenda."),
                title7,
                Parrafo("Por el momento ropa de cama. De todas formas puedes contactarte con tu Laver."),
                title8,
                Parrafo("-Ponte en contacto con Soporte. Te darán una solución al instante."),
                title9,
                Parrafo("-Sí, tranqui! Contamos con un seguro de responsabilidad civil."),
                title10,
                Parrafo("Todo está estandarizado. Los procesos de lavado y productos a utilizar son brindados por Lávalo"),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 5),
            child: ButtonPurple(buttonText: "Chatea con Soporte",
                onPressed: () async{
                  const url = 'https://wa.me/5491123904242';
                        await launch(url);
                }),
          )
        ],
      )
    );
  }
}
