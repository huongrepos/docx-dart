enum ShdType {
  nil,
  clear,
  solid,
  horzStripe,
  vertStripe,
  reverseDiagStripe,
  diagStripe,
  horzCross,
  diagCross,
  thinHorzStripe,
  thinVertStripe,
  thinReverseDiagStripe,
  thinDiagStripe,
  thinHorzCross,
  thinDiagCross,
  pct5,
  pct10,
  pct12,
  pct15,
  pct20,
  pct25,
  pct30,
  pct35,
  pct37,
  pct40,
  pct45,
  pct50,
  pct55,
  pct60,
  pct62,
  pct65,
  pct70,
  pct75,
  pct80,
  pct85,
  pct87,
  pct90,
  pct95,
}

extension ShdTypeExtension on ShdType {
  String toStringValue() {
    switch (this) {
      case ShdType.nil:
        return 'nil';
      case ShdType.clear:
        return 'clear';
      case ShdType.solid:
        return 'solid';
      case ShdType.horzStripe:
        return 'horzStripe';
      case ShdType.vertStripe:
        return 'vertStripe';
      case ShdType.reverseDiagStripe:
        return 'reverseDiagStripe';
      case ShdType.diagStripe:
        return 'diagStripe';
      case ShdType.horzCross:
        return 'horzCross';
      case ShdType.diagCross:
        return 'diagCross';
      case ShdType.thinHorzStripe:
        return 'thinHorzStripe';
      case ShdType.thinVertStripe:
        return 'thinVertStripe';
      case ShdType.thinReverseDiagStripe:
        return 'thinReverseDiagStripe';
      case ShdType.thinDiagStripe:
        return 'thinDiagStripe';
      case ShdType.thinHorzCross:
        return 'thinHorzCross';
      case ShdType.thinDiagCross:
        return 'thinDiagCross';
      case ShdType.pct5:
        return 'pct5';
      case ShdType.pct10:
        return 'pct10';
      case ShdType.pct12:
        return 'pct12';
      case ShdType.pct15:
        return 'pct15';
      case ShdType.pct20:
        return 'pct20';
      case ShdType.pct25:
        return 'pct25';
      case ShdType.pct30:
        return 'pct30';
      case ShdType.pct35:
        return 'pct35';
      case ShdType.pct37:
        return 'pct37';
      case ShdType.pct40:
        return 'pct40';
      case ShdType.pct45:
        return 'pct45';
      case ShdType.pct50:
        return 'pct50';
      case ShdType.pct55:
        return 'pct55';
      case ShdType.pct60:
        return 'pct60';
      case ShdType.pct62:
        return 'pct62';
      case ShdType.pct65:
        return 'pct65';
      case ShdType.pct70:
        return 'pct70';
      case ShdType.pct75:
        return 'pct75';
      case ShdType.pct80:
        return 'pct80';
      case ShdType.pct85:
        return 'pct85';
      case ShdType.pct87:
        return 'pct87';
      case ShdType.pct90:
        return 'pct90';
      case ShdType.pct95:
        return 'pct95';
    }
  }
}

extension StringShdTypeExtension on String {
  ShdType toShdType() {
    switch (this) {
      case 'nil':
        return ShdType.nil;
      case 'clear':
        return ShdType.clear;
      case 'solid':
        return ShdType.solid;
      case 'horzStripe':
        return ShdType.horzStripe;
      case 'vertStripe':
        return ShdType.vertStripe;
      case 'reverseDiagStripe':
        return ShdType.reverseDiagStripe;
      case 'diagStripe':
        return ShdType.diagStripe;
      case 'horzCross':
        return ShdType.horzCross;
      case 'diagCross':
        return ShdType.diagCross;
      case 'thinHorzStripe':
        return ShdType.thinHorzStripe;
      case 'thinVertStripe':
        return ShdType.thinVertStripe;
      case 'thinReverseDiagStripe':
        return ShdType.thinReverseDiagStripe;
      case 'thinDiagStripe':
        return ShdType.thinDiagStripe;
      case 'thinHorzCross':
        return ShdType.thinHorzCross;
      case 'thinDiagCross':
        return ShdType.thinDiagCross;
      case 'pct5':
        return ShdType.pct5;
      case 'pct10':
        return ShdType.pct10;
      case 'pct12':
        return ShdType.pct12;
      case 'pct15':
        return ShdType.pct15;
      case 'pct20':
        return ShdType.pct20;
      case 'pct25':
        return ShdType.pct25;
      case 'pct30':
        return ShdType.pct30;
      case 'pct35':
        return ShdType.pct35;
      case 'pct37':
        return ShdType.pct37;
      case 'pct40':
        return ShdType.pct40;
      case 'pct45':
        return ShdType.pct45;
      case 'pct50':
        return ShdType.pct50;
      case 'pct55':
        return ShdType.pct55;
      case 'pct60':
        return ShdType.pct60;
      case 'pct62':
        return ShdType.pct62;
      case 'pct65':
        return ShdType.pct65;
      case 'pct70':
        return ShdType.pct70;
      case 'pct75':
        return ShdType.pct75;
      case 'pct80':
        return ShdType.pct80;
      case 'pct85':
        return ShdType.pct85;
      case 'pct87':
        return ShdType.pct87;
      case 'pct90':
        return ShdType.pct90;
      case 'pct95':
        return ShdType.pct95;
      default:
        throw Error.unknown;
    }
  }
}

class Error implements Exception {
  final String message;

  const Error(this.message);

  static const unknown = Error('Unknown ShdType');
}