import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: ContainerGrid(),
        ),
      ),
    );
  }
}

class ContainerGrid extends StatelessWidget {
  const ContainerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildColumn([
            InkWell(
              onTap: () {
                 ScaffoldMessenger.of(context)
                 .showSnackBar(SnackBar(content: Text("Soy un cocodrilo roar")));
              },
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("../assets/cocodrilo.png"),),
                    shape: BoxShape.circle,
                  gradient: RadialGradient(center: Alignment.centerRight, radius: 0.8, colors: [Colors.blue.shade900, Colors.green.shade900]),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.yellow,
                        blurRadius: 15,
                        offset: Offset(5, -5),
                      ) 
                    ]),
                alignment: Alignment.center,
              )
              ),
        
            Container(
              width: 100,
              height: 50,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80)
                ),
                color: Colors.blue.shade900
                ),
             alignment: Alignment.center,
            ),
            Container(
              width: 70,
              height: 70,
              color: Colors.blue.shade900,
              child: Icon(
                Icons.dangerous,
                color: Colors.red.shade900,
                size: 30,
              ),
            ),
            Container(
              
              width: 200,
              height: 50,
              color: Colors.pink.shade900,
              child: Text(
              '¡Cordova es un buen estudiante!', textAlign: TextAlign.center,style: TextStyle(
                color: Colors.white, // Color del texto
                fontSize: 12.0,
              ),)
            ),
            createContainer(90, 70, Colors.green.shade900),
          ]),
          buildColumn([
            InkWell(
              onLongPress: () {
                 ScaffoldMessenger.of(context)
                 .showSnackBar(SnackBar(content: Text("Soy una ballena glup glup")));
              },
              child: Container(
                width: 145,
                height: 145,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("../assets/ballena.png"),),
                    shape: BoxShape.rectangle,
                  gradient: RadialGradient(center: Alignment.centerRight, radius: 0.8, colors: [Colors.blue.shade900, const Color.fromARGB(255, 69, 148, 238)]),
                    boxShadow: const [ 
                    ]),
                alignment: Alignment.centerLeft,
              )
              ),
            Container(
              width: 100,
              height: 50,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.circular(40)
                ),
                color: Colors.blue.shade900
                ),
             alignment: Alignment.center,
            ),
            Container(
              width: 100,
              height: 50,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(200, 500),
                  bottomRight: Radius.elliptical(500, 200)
                ),
                color: Colors.orange.shade900
                ),
             alignment: Alignment.center,
            ),
            Container(
              width: 100,
              height: 50,

              decoration: BoxDecoration(
                color: Colors.orange.shade900,
                boxShadow: const [
                      BoxShadow(
                        color: Colors.green,
                        blurRadius: 100,
                        offset: Offset(5, -5),
                      ) 
                    ]
                ),
             alignment: Alignment.center,
            ),
            createContainer(120,  70,  Colors.purple.shade900),
          ]),
          buildColumn([
            InkWell(
              onDoubleTap: () {
                 ScaffoldMessenger.of(context)
                 .showSnackBar(SnackBar(content: Text("Este dinosaurio se activa jaja")));
        },
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("../assets/dinosaurio.png"),),
                    shape: BoxShape.rectangle,
                  gradient: RadialGradient(center: Alignment.centerRight, radius: 0.5, colors: [ const Color.fromARGB(255, 4, 121, 49), Colors.brown.shade900]),
                    boxShadow: const [ 
                    ]),
                alignment: Alignment.centerLeft,
              )
              ),
            InkWell(
              onTap: () {
                 ScaffoldMessenger.of(context)
                 .showSnackBar(SnackBar(content: Text("Este es un helado muy delicioso")));
              },
              child: Container(
                width: 70,
                height: 70,

                  child: Icon(
                Icons.icecream,
                color: Colors.brown.shade900,
                size: 30,
              ),
                alignment: Alignment.center,
                color: Colors.orange.shade900,
              )
              ),
            InkWell(
              onTap: () {
                 ScaffoldMessenger.of(context)
                 .showSnackBar(SnackBar(content: Text("Solo soy un simbolo")));
              },
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red.shade900
                ),
                child: Icon(
                  Icons.help_outline,
                  color: Colors.brown.shade900,
                  size: 30,
              ),
                alignment: Alignment.center,
              )
              ),
            Container(
              
              width: 200,
              height: 50,
              color: Colors.blue.shade900,
              child: Text(
              '¡Cruz Azul sera campeon!', textAlign: TextAlign.center,style: TextStyle(
                color: Colors.white, // Color del texto
                fontSize: 12.0,
                fontFamily: "Roboto",
                  fontWeight: FontWeight.bold
              ),)
            ),
            createContainer( 150,  70, Colors.lime.shade500),
          ]),
        ],
      ),
    );
  }

  Widget buildColumn(List<Widget> containers) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: containers,
    );
  }

  Widget createContainer(double width, double height, Color color) {
    return Container(
      width: width,
      height: height,
      color: color,
      margin: const EdgeInsets.all(8.0),
    );
  }
}