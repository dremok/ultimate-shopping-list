import 'package:flutter/material.dart';

class ShopItem extends StatelessWidget {
  final String _itemText;
  final String _image;
  final bool _checked;
  final Function _checkboxChecked;

  ShopItem(this._itemText, this._image, this._checked, this._checkboxChecked);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(_image),
      title: Text(_itemText),
      trailing: Checkbox(
        value: _checked,
        onChanged: _checkboxChecked,
      ),
    );
  }
}
