import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

// Class DropdownSearchPage
class DropdownSearch extends StatelessWidget {
  const DropdownSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("DropdownSearch Page"),
          centerTitle: true,
        ),
        drawer: const Drawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
//             DropdownSearch<String>(
//     popupProps: PopupProps.menu(
//         showSelectedItems: true,
//         disabledItemFn: (String s) => s.startsWith('I'),
//     ),
//     items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
//     dropdownSearchDecoration: InputDecoration(
//         labelText: "Menu mode",
//         hintText: "country in menu mode",
//     ),
//     onChanged: print,
//     selectedItem: "Brazil",
// )

// DropdownSearch<String>.multiSelection(
//     items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
//     popupProps: PopupPropsMultiSelection.menu(
//         showSelectedItems: true,
//         disabledItemFn: (String s) => s.startsWith('I'),
//     ),
//     onChanged: print,
//     selectedItems: ["Brazil"],
// )
          ],
        ));
  }
}
