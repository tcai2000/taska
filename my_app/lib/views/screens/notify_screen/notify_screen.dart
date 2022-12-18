import 'package:flutter/material.dart';
import 'package:my_app/views/constants/constants_export.dart';

import 'widgets/notify_exports.dart';

class NotifyScreen extends StatelessWidget {
  const NotifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 14),
          Row(
            children: const [
              Text(
                AppStrings.notification,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 14),
                  Row(
                    children: const [
                      Text(
                        AppStrings.news,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  NotifyItem(),
                  NotifyRequestItem(),
                  NotifyItem(),
                  NotifyItem(),
                  Row(
                    children: const [
                      Text(
                        AppStrings.before,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                  NotifyItem(),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
