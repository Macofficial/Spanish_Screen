import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class gridItem extends StatefulWidget {
  String title;
  String data;

  gridItem(this.title, this.data);

  @override
  State<gridItem> createState() => _gridItemState();
}

class _gridItemState extends State<gridItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: EdgeInsets.all(10),
          color: Color.fromARGB(255, 238, 238, 238),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 40,
              ),
              Text(widget.data),
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  color: Colors.white,
                  child: SizedBox(
                    width: double.infinity,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        isDense: true,
                        selectedItemHighlightColor:
                            Color.fromARGB(255, 241, 241, 241),
                        hint: Text(
                          'Select Item',
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).hintColor,
                          ),
                        ),
                        items: items
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value as String;
                          });
                        },
                        buttonHeight: 40,
                        buttonWidth: 140,
                        itemHeight: 40,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
