import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../styles/styles.dart';
import 'localized_strings.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {

  @override
  Widget build(BuildContext context) {
        return Container(
          color: Theme.of(context).colorScheme.onPrimary,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BottomAppBar(
                elevation: 0.0,
                color: const Color(0xFFFFF1BA),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 88.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BottomBarItem(
                          icon: Icons.people_alt_rounded,
                          label: AppStrings.of(context).peopleString,
                          selected: widget.currentIndex == 0,
                          onPressed: () {
                            setState(() {
                              widget.onTap.call(0);
                            });
                          },
                        ),
                        BottomBarItem(
                          icon: Icons.games_outlined,
                          label: AppStrings.of(context).gamesString,
                          selected: widget.currentIndex == 1,
                          onPressed: () {
                            setState(() {
                              widget.onTap.call(1);
                            });
                          },
                        ),
                        BottomBarItem(
                          icon: Icons.person_rounded,
                          label: AppStrings.of(context).profileString,
                          selected: widget.currentIndex == 2,
                          onPressed: () {
                            setState(() {
                              widget.onTap.call(2);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );

  }
}

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.selected,
    required this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final bool selected;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: selected ? const Color(0xFFFFE251) : Colors.transparent,
            ),
            child: Icon(
              icon,
              color:
              selected ? const Color(0xFF1D192B) : const Color(0xFF49454F),
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),

          Text(
            label,
            style: selected
                ? AppTextStyles.tabBarTextSelected
                : AppTextStyles.tabBarText,
          )
        ],
      ),
    );
  }
}
