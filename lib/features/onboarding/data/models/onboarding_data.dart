import 'onboarding_model.dart';
import 'package:courses_app/core/constants/app_images.dart';

class OnboardingData {
  static final List<OnboardingModel> pages = [
    OnboardingModel(
      image: Assets.onboarding1,
      title: "تعلّم بسهولة",
      description:
          "ابدأ رحلتك التعليمية معنا بخطوات بسيطة وسهلة. اكتشف مئات الكورسات في مجالات البرمجة، التصميم، التسويق، وغيرها الكثير، وتعلّم بالطريقة التي تناسبك.",
    ),
    OnboardingModel(
      image: Assets.onboarding2,
      title: "تعلم وقت ما تحب",
      description:
          "مع تطبيق كورساتي، تقدر تدرس في أي وقت وأي مكان حتى بدون اتصال بالإنترنت. كل الدروس متاحة لك بجودة عالية لتتعلم براحتك وعلى وتيرتك الخاصة.",
    ),
    OnboardingModel(
      image: Assets.onboarding3,
      title: "تقدّم بثقة",
      description:
          "تابع تقدمك خطوة بخطوة واحصل على شهادات معتمدة بعد كل دورة. حسّن مهاراتك المهنية وابدأ طريقك نحو مستقبل أفضل مع كورساتي.",
    ),
  ];
}
