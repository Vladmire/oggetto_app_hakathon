import 'package:flutter/material.dart';

import '../../managers/locator.dart';
import '../../utils/custom_widget_utils.dart';

class EmployeesScreen extends StatefulWidget {
  const EmployeesScreen({Key? key}) : super(key: key);

  @override
  State<EmployeesScreen> createState() => _EmployeesScreenState();
}

class _EmployeesScreenState extends State<EmployeesScreen> {
  final CustomWidgetUtils _utils = locator<CustomWidgetUtils>();
  final TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: Form(
              key: _formKey,
              child: TextFormField(
                controller: _controller,
                // style: AppTextStyles.inputText,
                maxLines: 1,
                onChanged: _onChangedText,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'labelText',
                  // labelStyle: AppTextStyles.textFieldLabel,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'hintText',
                  suffixIcon: _controller.text.isEmpty
                      ? null
                      : IconButton(
                          onPressed: _onClearTap,
                          icon: Icon(
                            Icons.cancel_outlined,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                ),
              ),
            ),
          ),
          ListView()
        ],
      ),
    );
  }

  void _onChangedText(String text) {
    setState(() {
      //todo: add search in models
    });
  }

  void _onClearTap() {
    setState(
      () {
        _controller.clear();
      },
    );
  }
}
