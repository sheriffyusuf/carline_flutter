import 'package:auto_route/auto_route.dart';
import 'package:carline_flutter/gen/assets.gen.dart';
import 'package:carline_flutter/gen/colors.gen.dart';
import 'package:carline_flutter/router/router.dart';
import 'package:carline_flutter/widgets/app_outlined_button/app_outlined_button.dart';
import 'package:carline_flutter/widgets/custom_button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:local_auth/local_auth.dart';
import 'package:nb_utils/nb_utils.dart';

class LocalAuthPage extends HookWidget {
  const LocalAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LocalAuthentication auth = useMemoized(() => LocalAuthentication());
    final biometricTypeName = useState('');
    final biometricType = useState<BiometricType?>(null);
    useEffect(() {
      void setup() async {
        final List<BiometricType> availableBiometrics =
            await auth.getAvailableBiometrics();
        log('availble bioms ${availableBiometrics.first}');
        if (availableBiometrics.contains(BiometricType.face)) {
          biometricTypeName.value = 'Face ID';
          biometricType.value = BiometricType.face;
        } else if (availableBiometrics.contains(BiometricType.fingerprint)) {
          biometricTypeName.value = 'Fingerprint';
          biometricType.value = BiometricType.fingerprint;
        }
      }

      setup();
      return null;
      //return null;
    }, []);
    return Scaffold(
        backgroundColor: Colors.white,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value:
              const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                104.height,
                biometricType.value == BiometricType.fingerprint
                    ? Assets.svgs.biometric.svg()
                    : Assets.svgs.faceId.svg(),
                32.height,
                Text(
                  "Use ${biometricTypeName.value} to login?",
                  textAlign: TextAlign.center,
                  style: context.textTheme.headline3
                      ?.copyWith(height: 1.30, fontSize: 28),
                ),
                8.height,
                Text(
                    'You can use ${biometricTypeName.value} to access your account, so you won’t need to type your password each time.',
                    style: context.textTheme.titleMedium
                        ?.copyWith(color: AppColor.gray500, height: 1.65)),
                const Spacer(),
                CarlineButton(
                  title: 'Use ${biometricTypeName.value}',
                  onPressed: () => context.pushRoute(const PickInterestRoute()),
                  variant: "primary",
                ),
                16.height,
                AppOutlinedButton(
                  title: 'No, Thanks',
                  onPressed: () => context.popRoute(),
                ),
                12.height,
              ],
            ).paddingSymmetric(horizontal: 24),
          ),
        ));
  }
}
