import 'package:flutter/material.dart';

class AddNewCar extends StatefulWidget {
  const AddNewCar({Key? key}) : super(key: key);

  @override
  State<AddNewCar> createState() => _AddNewCarState();
}

class _AddNewCarState extends State<AddNewCar> {
  TextEditingController marqueController = TextEditingController();
  TextEditingController modelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajouter une nouvelle véhicule',style: TextStyle(fontSize: 18,color: Colors.white),),
        elevation: 5.5,
        backgroundColor: Colors.deepPurpleAccent[100],
      ),
      body: SizedBox(
        height: 500,
        child: Column(
          children: [
            const SizedBox(height: 15,),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 18.0,right: 10),
                  child: Text('Marque:'),
                ),
         Expanded(
           child: TextFormField(
             controller: marqueController,
             decoration: const InputDecoration(
               border: UnderlineInputBorder(),
               filled: true,

               labelText: 'Marque',
               hintText: ' ',
             ),),
         )
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 18.0, right: 10),
                  child: Text('Modèle:'), // New label for Model
                ),
                Expanded(
                  child: TextFormField(
                    controller: modelController, // New controller for Model
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      filled: true,
                      labelText: 'Modèle',
                      hintText: '',
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
