import 'package:flutter/material.dart';
import 'package:oggetto_app_hakathon/utils/images.dart';

import '../../managers/locator.dart';
import '../../utils/custom_widget_utils.dart';
import '../../utils/localized_strings.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({Key? key}) : super(key: key);

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  final CustomWidgetUtils _utils = locator<CustomWidgetUtils>();
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image(image: AppAssets.companyLogo.image()),
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _loginController,
                    // style: AppTextStyles.inputText,
                    maxLines: 1,
                    onChanged: _onChangedText,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0)
                      ),
                      labelText: AppStrings.of(context).emailString,
                      focusedBorder:OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      // labelStyle: AppTextStyles.textFieldLabel,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: AppStrings.of(context).emailString,
                      suffixIcon: _loginController.text.isEmpty
                          ? null
                          : IconButton(
                        onPressed: _onClearLogin,
                        icon: Icon(
                          Icons.cancel_outlined,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    // style: AppTextStyles.inputText,
                    maxLines: 1,
                    onChanged: _onChangedText,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0)
                      ),
                      labelText: AppStrings.of(context).passwordString,
                      focusedBorder:OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      // labelStyle: AppTextStyles.textFieldLabel,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: AppStrings.of(context).passwordString,
                      suffixIcon: _passwordController.text.isEmpty
                          ? null
                          : IconButton(
                        onPressed: _onClearPassword,
                        icon: Icon(
                          Icons.cancel_outlined,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextButton(
                    onPressed: () {
                      // _subscriptionManager.buySubscription(_selectedPlan);
                    },
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(vertical: 18)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xFFFFDD00)),
                        minimumSize: MaterialStateProperty.all<Size>(
                            const Size(double.infinity, 58)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ))),
                    child: Text(
                      AppStrings.of(context).enterString,
                      // style: AppTextStyles.onboardingContinueButton,
                    ),
                  ),
                  TextButton(onPressed: () {}, child: Text(AppStrings.of(context).forgetPasswordString)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text(AppStrings.of(context).noAccountString),
                    SizedBox(width: 5.0,),
                    TextButton(onPressed: () {}, child: Text(AppStrings.of(context).registerString)),
                  ],)
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
}
