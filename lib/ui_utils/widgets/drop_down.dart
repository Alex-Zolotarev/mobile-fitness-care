import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class DropdownItems extends StatefulWidget {
  const DropdownItems({Key? key}) : super(key: key);

  @override
  State<DropdownItems> createState() => _DropdownItemsState();

}

class _DropdownItemsState extends State<DropdownItems> {
  late String selectedValue;

  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Women"),value: "Women"),
      DropdownMenuItem(child: Text("Men"),value: "Men")

    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(top: 28,left: 30, right: 30),
        child: DropdownButtonFormField(
            hint: const Text("Choose Gender"),
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  'assets/images/people.svg',
                ),
              ), // prefixIcon: Icon(Icons.add_circle)
            ),
            //value: selectedValue,
            items: dropdownItems,
            onChanged: (String? value) { setState(() {
              selectedValue = value!;
            });
            },
          ),
      ),
    );
  }
}
