import 'package:garage/shared/domain/domain.dart';

import '../../../../app/i18n/strings.g.dart';

enum Liquids {
  engineOil,
  transmissionOilFirst,
  transmissionOilSecond,
  brakeFluid,
  powerSteeringFluid,
  antifreeze,
  refrigerantAirConditioner;

  String toText(Translations i18n) {
    switch (this) {
      case Liquids.engineOil:
        return i18n.myGarage.engineOilLabel;
      case Liquids.transmissionOilFirst:
        return i18n.myGarage.transmissionOilFirstLabel;
      case Liquids.transmissionOilSecond:
        return i18n.myGarage.transmissionOilSecondLabel;
      case Liquids.brakeFluid:
        return i18n.myGarage.brakeFluidLabel;
      case Liquids.powerSteeringFluid:
        return i18n.myGarage.powerSteeringFluidLabel;
      case Liquids.antifreeze:
        return i18n.myGarage.antifreezeLabel;
      case Liquids.refrigerantAirConditioner:
        return i18n.myGarage.refrigerantAirConditionerLabel;
    }
  }

  LiquidForm toForm() {
    switch (this) {
      case Liquids.engineOil:
        return EngineOilForm.initial();
      case Liquids.transmissionOilFirst:
        return TransmissionOilForm.initial();
      case Liquids.transmissionOilSecond:
        return LiquidForm.initial();
      case Liquids.brakeFluid:
        return LiquidForm.initial();
      case Liquids.powerSteeringFluid:
        return LiquidForm.initial();
      case Liquids.antifreeze:
        return LiquidForm.initial();
      case Liquids.refrigerantAirConditioner:
        return LiquidForm.initial();
    }
  }
}
