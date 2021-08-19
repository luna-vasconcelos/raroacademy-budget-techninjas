// import 'package:flutter/material.dart';

// class DropdownButtonWidget extends StatefulWidget {
//   final String initialValue;
//   final Widget gradient;
//   final List dropdownItens;
 

//   DropdownButtonWidget({
//   required this.initialValue,
//   required this.gradient, 
//   required this.dropdownItens});

//   @override
//   _DropdownButtonWidgetState createState() => _DropdownButtonWidgetState();


// @override

// class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
 
//     return DropdownButton(
//                         underline: Container(),
//                         onChanged: (value) {
//                           setState(() {
//                             _value = value as DropDownItemData;
//                           });
//                         },
//                         value: _value,
//                         selectedItemBuilder: (BuildContext context) {
//                           return list.map<Widget>((DropDownItemData item) {
//                             return Center(
//                               child: Container(
//                                 height: 18.0,
//                                 width: 18.0,
//                                 decoration: BoxDecoration(
//                                   color: _value.color,
//                                   shape: BoxShape.circle,
//                                 ),
//                               ),
//                             );
//                           }).toList();
//                         },
//                         focusColor: Colors.transparent,
//                         items: list
//                             .map(
//                               (e) => DropdownMenuItem(
//                                 value: e,
//                                 child: Center(
//                                   child: Container(
//                                     height: 18.0,
//                                     width: 18.0,
//                                     decoration: BoxDecoration(
//                                       color: e.color,
//                                       shape: BoxShape.circle,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             )
//                             .toList(),
//                       );
//   }}}
                  