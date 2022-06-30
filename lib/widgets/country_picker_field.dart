import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';

class CountryPickerField extends StatelessWidget {
  final TextEditingController controller;
  const CountryPickerField({
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: controller,
      validator: (value) {
        if (value?.isEmpty == true) {
          return 'Required field.';
        }
      },
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 8.0),
          child: CountryPickerDropdown(
            itemBuilder: (country) => _CountryPickerItem(country: country),
            selectedItemBuilder: (country) =>
                _CountryPickerItem(country: country),
            onValuePicked: (Country value) {},
          ),
        ),
        hintText: 'Eg. 812345678',
      ),
    );
  }
}

class _CountryPickerItem extends StatelessWidget {
  final Country country;
  const _CountryPickerItem({
    required this.country,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CountryPickerUtils.getDefaultFlagImage(country),
        const SizedBox(width: 6.0),
        Text(country.phoneCode),
      ],
    );
  }
}
