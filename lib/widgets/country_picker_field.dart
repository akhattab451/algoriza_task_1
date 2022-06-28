import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:flutter/material.dart';

class CountryPickerField extends StatelessWidget {
  const CountryPickerField({
    Key? key,
    required TextEditingController phoneController,
  })  : _phoneController = phoneController,
        super(key: key);

  final TextEditingController _phoneController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _phoneController,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 8.0,
          ),
          child: CountryPickerDropdown(
            onValuePicked: (Country value) {},
          ),
        ),
        hintText: 'Eg. 812345678',
      ),
    );
  }
}
