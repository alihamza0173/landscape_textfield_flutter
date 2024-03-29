import 'package:flutter/material.dart';

class LandScapeTextField extends StatefulWidget {
  const LandScapeTextField({super.key});

  @override
  State<LandScapeTextField> createState() => _LandScapeTextFieldState();
}

class _LandScapeTextFieldState extends State<LandScapeTextField> {
  late FocusNode _focusNode;
  late bool _isLandScape;

  @override
  void initState() {
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        Navigator.of(context).pop();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _isLandScape = MediaQuery.of(context).orientation == Orientation.landscape;
    return TextFormField(
      readOnly: _isLandScape,
      onTap: _isLandScape ? () => _showLandScapeTextField(context) : null,
    );
  }

  Future<Object?> _showLandScapeTextField(BuildContext context) {
    return showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: TextFormField(
            focusNode: _focusNode,
            autofocus: true,
            decoration: const InputDecoration(
              filled: true,
            ),
          ),
        );
      },
    );
  }
}
