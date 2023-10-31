import 'package:imc_flutter/view/dashboard/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeightUnitSwitch extends StatelessWidget {
  const HeightUnitSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<BmiProvider, bool>(
        selector: (p0, p1) => p1.bmi.height.isCm,
        shouldRebuild: (p, c) => p != c,
        builder: (context, data, _) {
          return Switch(
            value: !data,
            onChanged: (value) {
              context.read<BmiProvider>().changeHeightUnit(!value);
            },
            inactiveTrackColor: Color.fromRGBO(196, 203, 233, 1),
            inactiveThumbColor: Color(0xFF3F51B5),
            activeTrackColor: Color.fromRGBO(196, 203, 233, 1),
            activeColor: Color(0xFF3F51B5),
            materialTapTargetSize: MaterialTapTargetSize.padded,
          );
        });
  }
}
