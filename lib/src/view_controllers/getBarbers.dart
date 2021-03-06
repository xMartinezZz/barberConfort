import 'package:flutter/material.dart';
import 'package:BarberConfort/src/utils/firebase.dart';
import 'package:BarberConfort/src/widgets/barberCardv2.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

final Widget getBarbers = Expanded(
    child: FirebaseAnimatedList(
        query: fireDatabase.child('/Barbers'),
        itemBuilder: (context, snapshot, animation, index) {
          Map<dynamic, dynamic> values = snapshot.value;
          String key = snapshot.key;
          return barberCard(key, values["name"], values["avaliability"],
              values["time_Open"], context, values["avatar_Url"]);
        }));
