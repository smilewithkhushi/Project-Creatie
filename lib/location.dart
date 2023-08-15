import 'package:flutter/material.dart';
import 'model/location.dart';

class locationDetail extends StatelessWidget {
  // final Location location;

  // locationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Basic Flutter App")),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              section("Heading 1", "body 1",
                  const Color.fromARGB(255, 96, 174, 238)),
              section("Heading 2", "body 2", Color.fromARGB(255, 23, 156, 92)),
              section("Heading 3", "body 3", Color.fromARGB(255, 224, 39, 86)),
              _sectionTitle("Have a great day"),
              bannerImage(
                  "https://1.bp.blogspot.com/-kK7Fxm7U9o0/YN0bSIwSLvI/AAAAAAAACFk/aF4EI7XU_ashruTzTIpifBfNzb4thUivACLcBGAsYHQ/s1280/222.jpg",
                  300),

              // _renderFacts(location);
            ]));
  }
}

// List<Widget> _renderFacts(Location location){
//   var result = List <Widget>();
//   for (int i=0; i<location.facts.length; i++){
//     result.add(_sectionTitle(location.facts[i].title))
//     result.add(_sectionText(location.facts[i].title))
//   }
// }

Widget _sectionTitle(String text) {
  return Text(text);
}

Widget _sectionText(String text) {
  return Text(text);
}

// Widget _renderBody(BuildContext context, Location location){

// }

Widget bannerImage(String url, double height) {
  return Container(
      child: Container(
    constraints: BoxConstraints.tightFor(
      height: height,
    ),
    child: Image.network(
      url,
      fit: BoxFit.contain,
    ),
  ));
}

Widget section(String title, String body, Color color) {
  return Column(
    children: [
      Container(
        alignment: Alignment.center,
        height: 80,
        margin: const EdgeInsets.all(10),
        width: 200,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.white24)),
        child: Text(title),
      )
    ],
  );
}
