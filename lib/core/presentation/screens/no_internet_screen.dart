import 'package:courses_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constants/app_images.dart';
import '../../network/connectivity_state.dart';
import '../../network/connectivity_cubit.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectivityCubit, ConnectivityState>(
      builder: (context, state) {
        if (state.isOnline) {
          return const SizedBox.shrink();
        } else {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildNoInternetContent(), const SizedBox(height: 20)],
            ),
          );
        }
      },
    );
  }

  Widget _buildNoInternetContent() {
    return Column(
      children: [
        Image.asset(Assets.signal, width: 250, height: 250),
        const SizedBox(height: 20),
        Text('لا يوجد اتصال بالإنترنت', style: AppTextStyles.font24BlackBold),
        const SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            'يرجى التحقق من اتصالك بالإنترنت والمحاولة مرة أخرى.',
            textAlign: TextAlign.center,
            style: AppTextStyles.font16GreyRegular,
          ),
        ),
      ],
    );
  }
}
