import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../managers/locator.dart';
import '../../styles/styles.dart';
import '../../utils/custom_widget_utils.dart';

import '../../utils/images.dart';
import '../../utils/localized_strings.dart';
import '../router/app_router.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final CustomWidgetUtils _utils = locator<CustomWidgetUtils>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 40.0,
          ),
          Image(image: AppAssets.greetings.image(), height: screenWidth - 90,),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const Text('Добро пожаловать!', style: AppTextStyles.greetingTitle,),
                  SizedBox(height: 25.0,),
                  _utils.createTextField(
                    context: context,
                    labelText: AppStrings.of(context).nameString,
                    hintText: AppStrings.of(context).nameString,
                    controller: _nameController,
                    maxLines: 1,
                    textType: TextInputType.name,
                    onChanged: _onChangedText,
                    validator: validator,
                    onTap: _onClearName,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  _utils.createTextField(
                    context: context,
                    labelText: AppStrings.of(context).emailString,
                    hintText: AppStrings.of(context).emailString,
                    controller: _loginController,
                    maxLines: 1,
                    textType: TextInputType.emailAddress,
                    onChanged: _onChangedText,
                    validator: validator,
                    onTap: _onClearLogin,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  _utils.createTextField(
                    context: context,
                    labelText: AppStrings.of(context).passwordString,
                    hintText: AppStrings.of(context).passwordString,
                    controller: _passwordController,
                    maxLines: 1,
                    textType: TextInputType.visiblePassword,
                    onChanged: _onChangedText,
                    validator: validator,
                    onTap: _onClearPassword,
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  TextButton(
                    onPressed: () async => {
                      if (_formKey.currentState!.validate()) {
                        FocusScope.of(context).requestFocus(FocusNode()),
                        context.router.replace(const MainScreenRoute()),
                      }
                    },
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(vertical: 18)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(const Color(0xFFFFDD00)),
                        minimumSize: MaterialStateProperty.all<Size>(
                            const Size(double.infinity, 58)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ))),
                    child: Text(
                      AppStrings.of(context).enterString,
                      // style: AppTextStyles.onboardingContinueButton,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onChangedText(String text) {
    setState(() {
      if (text.isEmpty) {
        // _isSaveButtonEnabled = false;
      }
      // _isSaveButtonEnabled = _controller1.text.isNotEmpty || _controller2.text.isNotEmpty;
    });
  }

  void _onClearName() {
    setState(() {
      _nameController.clear();
    });
  }

  void _onClearLogin() {
    setState(() {
      _loginController.clear();
    });
  }

  void _onClearPassword() {
    setState(() {
      _passwordController.clear();
    });
  }

  String? validator(String? text) {
    if (text == null || text.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }
}
