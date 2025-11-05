import 'package:courses_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hugeicons/hugeicons.dart';
import '../../../features/Home/ui/screens/home_screen.dart';
import '../../../features/collections/ui/screens/collections_screen.dart';
import '../../../features/search/ui/screens/search_screen.dart';
import '../../../features/settings/ui/screens/settings_screen.dart';
import '../../navigation/app_navigation.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final appNavigator = GetIt.I<AppMainNavigator>();
    return AnimatedBuilder(
      animation: appNavigator,
      builder: (context, _) {
        final currentIndex = AppTab.values.indexOf(appNavigator.currentTab);
        return Scaffold(
          body: IndexedStack(
            index: currentIndex,
            children: const [
              HomeScreen(),
              CollectionsScreen(),
              SearchScreen(),
              SettingsScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) => appNavigator.gotoTab(AppTab.values[index]),
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: Colors.grey.shade500,
            elevation: 2,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: [
              _buildBarItem(HugeIcons.strokeRoundedHome03, 'الرئيسية'),
              _buildBarItem(
                HugeIcons.strokeRoundedDashboardSquare01,
                'التصنيفات',
              ),
              _buildBarItem(HugeIcons.strokeRoundedSearch01, 'البحث'),
              _buildBarItem(HugeIcons.strokeRoundedUser, 'الإعدادت'),
            ],
          ),
        );
      },
    );
  }

  BottomNavigationBarItem _buildBarItem(
    List<List<dynamic>> icon,
    String label,
  ) {
    return BottomNavigationBarItem(
      label: label,
      icon: HugeIcon(icon: icon),
    );
  }
}
