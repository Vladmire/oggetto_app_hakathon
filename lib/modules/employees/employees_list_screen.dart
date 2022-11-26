import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:oggetto_app_hakathon/modules/router/app_router.dart';
import 'package:oggetto_app_hakathon/utils/localized_strings.dart';

import '../../managers/locator.dart';
import '../../utils/custom_widget_utils.dart';
import 'package:oggetto_app_hakathon/utils/images.dart';

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
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Form(
              key: _formKey,
              child: TextFormField(
                controller: _controller,
                // style: AppTextStyles.inputText,
                maxLines: 1,
                onChanged: _onChangedText,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0)
                  ),
                  labelText: AppStrings.of(context).locationString,
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  // labelStyle: AppTextStyles.textFieldLabel,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: AppStrings.of(context).locationString,
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
          Text('title'),
          Expanded(
            child: _buildList(),
          )
        ],
      ),
    );
  }

  Widget _buildList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: [
          ListTile(
            onTap: () => context.router.push(DetailsScreenRoute()),
            leading: CircleAvatar(
              backgroundImage: AppAssets.appIcon.image(),
              radius: 28.0,
            ),
            title: Text('data'),
            subtitle: Text('data'),
            tileColor: Color(0xFFFFF9ED),
          ),
        ],
      ),
    );
  }

  // Widget _buildBarcodes(
  //     BuildContext context,
  //     LastScreenModel model,
  //     ) {
  //   double size = 56.0;
  //   List<Widget> items = [];
  //   if (model.isLoading) {
  //     return const Center(
  //       child: CircularProgressIndicator(
  //         value: null,
  //       ),
  //     );
  //   } else {
  //     if (model.isScanTab) {
  //       for (var element in model.scannedItems) {
  //         if (element.listItemType == ListItemType.scan) {
  //           Widget item = ListTile(
  //             contentPadding: const EdgeInsets.fromLTRB(16, 14, 16, 12),
  //             onTap: () {
  //               context.router.push(
  //                 DetailScannerScreenRoute(
  //                     detailsModel: element.model!,
  //                     title: AppStrings.of(context).codeInfoTitle),
  //               );
  //             },
  //             leading: SizedBox(
  //               width: size,
  //               height: element.model!.codeType == CodeType.barcode
  //                   ? size / 2
  //                   : size,
  //               child: element.model!.imageSvgContent != null
  //                   ? SvgPicture.string(element.model!.imageSvgContent!)
  //                   : Container(
  //                 color: Colors.black,
  //                 child: const Center(
  //                   child: Text('error placeholder'),
  //                 ),
  //               ),
  //             ),
  //             title: Text(element.model!.data.toString()),
  //             subtitle: Text(element.date.toString()),
  //           );
  //           items.add(item);
  //           Widget divider = const Divider(
  //             indent: 88.0,
  //             endIndent: 16.0,
  //             thickness: 1.0,
  //             height: 1.0,
  //             color: Color.fromARGB(21, 33, 33, 33),
  //           );
  //           items.add(divider);
  //         } else if (element.listItemType == ListItemType.date) {
  //           Widget item = Container(
  //             padding:
  //             const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
  //             child: Text(
  //               element.date,
  //               style: AppTextStyles.settingsSectionTitle,
  //             ),
  //           );
  //           items.add(item);
  //         }
  //       }
  //     } else {
  //       for (var element in model.createdItems) {
  //         if (element.listItemType == ListItemType.scan) {
  //           Widget item = ListTile(
  //             contentPadding: const EdgeInsets.fromLTRB(16, 14, 16, 12),
  //             onTap: () {
  //               context.router.push(
  //                 DetailScannerScreenRoute(
  //                     detailsModel: element.model!,
  //                     title: AppStrings.of(context).codeInfoTitle),
  //               );
  //             },
  //             leading: SizedBox(
  //               width: size,
  //               height: element.model!.codeType == CodeType.barcode
  //                   ? size / 2
  //                   : size,
  //               child: element.model!.imageSvgContent != null
  //                   ? SvgPicture.string(element.model!.imageSvgContent!)
  //                   : Container(
  //                 color: Colors.black,
  //                 child: const Center(
  //                   child: Text('error placeholder'),
  //                 ),
  //               ),
  //             ),
  //             title: Text(element.model!.data.toString()),
  //             subtitle: Text(element.date.toString()),
  //           );
  //           items.add(item);
  //           Widget divider = const Divider(
  //             indent: 88.0,
  //             endIndent: 16.0,
  //             thickness: 1.0,
  //             height: 1.0,
  //             color: Color.fromARGB(21, 33, 33, 33),
  //           );
  //           items.add(divider);
  //         } else if (element.listItemType == ListItemType.date) {
  //           Widget item = Container(
  //             padding:
  //             const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
  //             child: Text(
  //               element.date,
  //               style: AppTextStyles.settingsSectionTitle,
  //             ),
  //           );
  //           items.add(item);
  //         }
  //       }
  //     }
  //     if (items.isEmpty) {
  //       return Center(
  //         child: Text(
  //           AppStrings.of(context).noCodesHereText,
  //           style: AppTextStyles.emptyListTitle,
  //         ),
  //       );
  //     } else {
  //       return NotificationListener(
  //         onNotification: (UserScrollNotification notification) {
  //           final ScrollDirection direction = notification.direction;
  //           handleScrollDirection(direction);
  //           return true;
  //         },
  //         child: ListView(
  //           children: items,
  //         ),
  //       );
  //     }
  //   }
  // }

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
