import 'package:flutter/material.dart';
import 'package:next_one/config/config.dart';
import 'package:next_one/config/functions.dart';
import 'package:next_one/screens/package-page.dart';
import 'package:next_one/widgets/button.dart';
import 'package:next_one/widgets/custom-tab-view-page.dart';
import 'package:next_one/widgets/textField.dart';
import 'package:next_one/widgets/title.dart';

class Reservations extends StatefulWidget {
  const Reservations({super.key});

  @override
  State<Reservations> createState() => _ReservationsState();
}

class _ReservationsState extends State<Reservations> {
  int _selectTag = 0;
  String? days;

  var _value = "-1";

  String dropdownValue = '00:00';
  String dropdownValue2 = '2';

  void changeTab(int index) {
    setState(() {
      _selectTag = index;
    });
  }

  final sDateFormate = "dd/MM/yyyy";
  DateTime dateChose = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Réservation",
          style: TextStyle(
              fontSize: 20,
              color: Config.colors.textColor,
              fontFamily: "roboto"),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Config.colors.primaryColor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  width: width(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Trajet",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTabView(
                  index: _selectTag,
                  changeTab: changeTab,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CtextField(
                        hint: 'Lieu residence...',
                        prefixIcon: Icon(
                          Icons.apartment,
                          color: Config.colors.hintColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CtextField(
                        hint: 'Destination ou adresse...',
                        prefixIcon: Icon(
                          Icons.location_pin,
                          color: Config.colors.hintColor,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 1.5,
                        width: width(context),
                        decoration: BoxDecoration(
                          color: Config.colors.backgroundTextField,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: DropdownButtonFormField(
                                value: _value,
                                items: [
                                  DropdownMenuItem(
                                      child: Text("Place"), value: "-1"),
                                  DropdownMenuItem(
                                      child: Text("1"), value: "1"),
                                  DropdownMenuItem(
                                      child: Text("2"), value: "2"),
                                  DropdownMenuItem(
                                      child: Text("3"), value: "3"),
                                  DropdownMenuItem(
                                      child: Text("4"), value: "4"),
                                ],
                                onChanged: (v) {}),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: DropdownButtonFormField(
                                value: _value,
                                items: [
                                  DropdownMenuItem(
                                      child: Text("Adulte"), value: "-1"),
                                  DropdownMenuItem(
                                      child: Text("1"), value: "1"),
                                  DropdownMenuItem(
                                      child: Text("2"), value: "2"),
                                  DropdownMenuItem(
                                      child: Text("3"), value: "3"),
                                  DropdownMenuItem(
                                      child: Text("4"), value: "4"),
                                ],
                                onChanged: (v) {}),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DropdownButtonFormField(
                        value: _value,
                        items: [
                          DropdownMenuItem(child: Text("Enfants"), value: "-1"),
                          DropdownMenuItem(child: Text("1"), value: "1"),
                          DropdownMenuItem(child: Text("2"), value: "2"),
                          DropdownMenuItem(child: Text("3"), value: "3"),
                          DropdownMenuItem(child: Text("4"), value: "4"),
                        ],
                        onChanged: (v) {},
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.timer,
                                    size: 30,
                                    color: Config.colors.textColor,
                                  ),
                                  Text(
                                    "Heure de départ",
                                    style: TextStyle(
                                        color: Config.colors.textColor,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Config.colors.backgroundTextField,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 40, right: 40),
                                  child: DropdownButton<String>(
                                    // Step 3.
                                    value: dropdownValue,
                                    // Step 4.
                                    items: <String>[
                                      '00:00',
                                      '01:00',
                                      '02:00',
                                      '03:00',
                                      '04:00',
                                      '05:00',
                                      '06:00',
                                      '07:00',
                                      '08:00',
                                      '09:00',
                                      '10:00',
                                      '11:00',
                                      '12:00',
                                      '13:00',
                                      '14:00',
                                      '15:00',
                                      '16:00',
                                      '17:00',
                                      '18:00',
                                      '19:00',
                                      '20:00',
                                      '21:00',
                                      '22:00',
                                      '23:00',
                                      '24:00',
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      );
                                    }).toList(),
                                    // Step 5.
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //##########################Definir heure de retoure ###################################
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.timer,
                                    size: 30,
                                    color: Config.colors.textColor,
                                  ),
                                  Text(
                                    "Heure de Retour",
                                    style: TextStyle(
                                        color: Config.colors.textColor,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Config.colors.backgroundTextField,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 40, right: 40),
                                  child: DropdownButton<String>(
                                    // Step 3.
                                    value: dropdownValue,
                                    // Step 4.
                                    items: <String>[
                                      '00:00',
                                      '01:00',
                                      '02:00',
                                      '03:00',
                                      '04:00',
                                      '05:00',
                                      '06:00',
                                      '07:00',
                                      '08:00',
                                      '09:00',
                                      '10:00',
                                      '11:00',
                                      '12:00',
                                      '13:00',
                                      '14:00',
                                      '15:00',
                                      '16:00',
                                      '17:00',
                                      '18:00',
                                      '19:00',
                                      '20:00',
                                      '21:00',
                                      '22:00',
                                      '23:00',
                                      '24:00',
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      );
                                    }).toList(),
                                    // Step 5.
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          showDatePicker(
                            fieldHintText: sDateFormate,
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime(3000),
                          ).then((value) {
                            if (value == null) {
                              return;
                            }
                            setState(() {
                              dateChose = value;
                            });
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          width: width(context),
                          decoration: BoxDecoration(
                              color: Config.colors.backgroundTextField,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: Config.colors.hintColor,
                                size: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${dateChose}",
                              )
                            ],
                          ),
                        ),
                        // child: CtextField(
                        //   hint: 'Date Début',
                        //   prefixIcon: Icon(
                        // Icons.calendar_month,
                        // color: Config.colors.hintColor,
                        //   ),
                        // ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CButton(
                        title: 'Reservé',
                        onPressed: () {
                          route(context, ChosePackage(), close: false);
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
