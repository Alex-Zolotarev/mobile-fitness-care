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
      child: DropdownButtonFormField(
        hint: const Text("Choose Gender"),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffF7F8F8), width: 2),
            borderRadius: BorderRadius.circular(14),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffF7F8F8), width: 2),
            borderRadius: BorderRadius.circular(14),

          ),
          fillColor: Color(0xffF7F8F8),
          filled: true,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset('assets/images/people.svg',),
          ),
        ),
        dropdownColor:  Color(0xffF7F8F8),

        icon: SvgPicture.asset('assets/images/stroke.svg',),
        //value: selectedValue,
        items: dropdownItems,
        onChanged: (String? value) { setState(() {
          selectedValue = value!;
        });
        },
      ),
    );
  }
}
