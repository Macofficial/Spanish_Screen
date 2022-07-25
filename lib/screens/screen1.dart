import 'package:flutter/material.dart';
import 'package:flutter_broster/main.dart';

import '../model/data_model.dart';
import '../widget/cstmWidget.dart';

final List<dta> _data = [
  dta('Question 1 / 8',
      '?Esta experimentado alguno de estos sintomas?: Dificultad severa para respirar, dolo de pecho severo, sensacion de cansancio, reciente perdida de conocimiento, incapacidad para acostarse debido a dificultad para respirar. ?Otra condicion de salud que esta teniendo dificultad para manejar debido a su actual dificultad respiratoria?'),
  dta('Question 2 / 8',
      '?Ha tenido contacto cercano (a menos de 2 metros)con personas que esten enfermas con sintomas similares a la gripe en las ultimas 2 semanas?'),
  dta('Question 3 / 8',
      '?Ha tenido contacto cercano (a menos de 2 metros)con personas que esten enfermas con sintomas similares a la gripe en las ultimas 2 semanas?'),
  dta('Question 4 / 8',
      '?Ha tenido contacto cercano (a menos de 2 metros)con personas que esten enfermas con sintomas similares a la gripe en las ultimas 2 semanas?'),
  dta('Question 5 / 8',
      '?Ha tenido contacto cercano (a menos de 2 metros)con personas que esten enfermas con sintomas similares a la gripe en las ultimas 2 semanas?'),
  dta('Question 6 / 8',
      '?Ha tenido contacto cercano (a menos de 2 metros)con personas que esten enfermas con sintomas similares a la gripe en las ultimas 2 semanas?'),
  dta('Question 7 / 8',
      '?Ha tenido contacto cercano (a menos de 2 metros)con personas que esten enfermas con sintomas similares a la gripe en las ultimas 2 semanas?'),
  dta('Question 8 / 8',
      '?Ha tenido contacto cercano (a menos de 2 metros)con personas que esten enfermas con sintomas similares a la gripe en las ultimas 2 semanas?'),
];

class screen extends StatefulWidget {
  const screen({Key? key}) : super(key: key);

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 115, 194),
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          child: Container(
            color: Colors.white,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Text('Listas de Verificacion',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Question 1 / 8',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
              ),
              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 200, 198, 198),
              ),

              Container(
                height: MediaQuery.of(context).size.height / 1.4,
                width: double.infinity,
                child: ListView.builder(
                  itemBuilder: (context, i) {
                    return gridItem(_data[i].title, _data[i].data);
                  },
                  itemCount: _data.length,
                ),
              )
              // GridView.builder(
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 1,
              //       childAspectRatio: 2 / 2,
              //       crossAxisSpacing: 10,
              //       //mainAxisSpacing: 10
              //     ),
              //     itemCount: _data.length,
              //     itemBuilder: (context, i) =>
              //         gridItem(_data[i].title, _data[i].data)),
            ]),
          ),
        ),
      ),
    );
  }
}
