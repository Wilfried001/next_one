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

  bool? allDays = false,
      monday = false,
      tuesday = false,
      wednesday = false,
      thursday = false,
      friday = false,
      saturday = false,
      sunday = false;
  String? lundi = "lundi";
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
                      CheckboxListTile(
                        //checkbox positioned at left
                        value: allDays,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) {
                          setState(() {
                            // if (monday == true &&
                            //     tuesday == true &&
                            //     wednesday == true &&
                            //     thursday == true &&
                            //     friday == true &&
                            //     saturday == true &&
                            //     sunday == true) {
                            //   allDays = true;
                            // }
                            allDays = value;
                            if (allDays == true) {
                              monday = allDays;
                              tuesday = allDays;
                              wednesday = allDays;
                              thursday = allDays;
                              friday = allDays;
                              saturday = allDays;
                              sunday = allDays;
                            } else {
                              monday = false;
                              tuesday = false;
                              wednesday = false;
                              thursday = false;
                              friday = false;
                              saturday = false;
                              sunday = false;
                            }
                          });
                        },
                        title: Text(
                          "Tous les jours",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: CheckboxListTile(
                                //checkbox positioned at left
                                value: monday,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (bool? value) {
                                  setState(() {
                                    monday = value;
                                    if (monday == false) {
                                      allDays = false;
                                    }
                                  });
                                },
                                title: Text(
                                  "Lundi",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              flex: 1,
                              child: CheckboxListTile(
                                //checkbox positioned at left
                                value: friday,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (bool? value) {
                                  setState(() {
                                    friday = value;
                                    if (friday == false) {
                                      allDays = false;
                                    }
                                  });
                                },
                                title: Text(
                                  "Vendredi",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: CheckboxListTile(
                                //checkbox positioned at left
                                value: tuesday,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (bool? value) {
                                  setState(() {
                                    tuesday = value;
                                    if (tuesday == false) {
                                      allDays = false;
                                    }
                                  });
                                },
                                title: Text(
                                  "Mardi",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              flex: 1,
                              child: CheckboxListTile(
                                //checkbox positioned at left
                                value: saturday,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (bool? value) {
                                  setState(() {
                                    saturday = value;
                                    if (saturday == false) {
                                      allDays = false;
                                    }
                                  });
                                },
                                title: Text(
                                  "Samedi",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: CheckboxListTile(
                                //checkbox positioned at left
                                value: wednesday,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (bool? value) {
                                  setState(() {
                                    wednesday = value;
                                    if (wednesday == false) {
                                      allDays = false;
                                    }
                                  });
                                },
                                title: Text(
                                  "Mercredi",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              flex: 1,
                              child: CheckboxListTile(
                                //checkbox positioned at left
                                value: sunday,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (bool? value) {
                                  setState(() {
                                    sunday = value;
                                    if (sunday == false) {
                                      allDays = false;
                                    }
                                  });
                                },
                                title: Text(
                                  "Dimanche",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: CheckboxListTile(
                                //checkbox positioned at left
                                value: thursday,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (bool? value) {
                                  setState(() {
                                    thursday = value;
                                    if (thursday == false) {
                                      allDays = false;
                                    }
                                  });
                                },
                                title: Text(
                                  "Jeudi",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                          ],
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
                      Container(
                        width: width(context),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.timer,
                                      size: width(context) * 0.07,
                                      color: Config.colors.textColor,
                                    ),
                                    Text(
                                      "Heure de départ",
                                      style: TextStyle(
                                          color: Config.colors.textColor,
                                          fontSize: width(context) * 0.04),
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
                                    padding: EdgeInsets.only(
                                        left: width(context) * 0.1,
                                        right: width(context) * 0.1),
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
                                      size: width(context) * 0.07,
                                      color: Config.colors.textColor,
                                    ),
                                    Text(
                                      "Heure de Retour",
                                      style: TextStyle(
                                          color: Config.colors.textColor,
                                          fontSize: width(context) * 0.04),
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
                                    padding: EdgeInsets.only(
                                        left: width(context) * 0.1,
                                        right: width(context) * 0.1),
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
