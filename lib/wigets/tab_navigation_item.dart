import 'package:fitness/screens/book.dart';
import 'package:fitness/screens/dashboard.dart';
import 'package:fitness/screens/plans.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class TabNavigationItem {
  final Widget page;
  final Icon icon;

  TabNavigationItem({
    required this.page,
    required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: const DashBoard(),
          icon: const Icon(
            Icons.home_filled,
            size: 30,
          ),
        ),
        TabNavigationItem(
            page: const Book(),
            icon: const Icon(
              Icons.book_outlined,
              size: 30,
            )),
        TabNavigationItem(
            page: const Plans(),
            icon: const Icon(
              Icons.account_balance_outlined,
              size: 30,
            ))
      ];
}
