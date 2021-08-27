class StandardPool {
  final List<dynamic> fiveStarCharacterPool;
  final List<dynamic> fourStarCharacterPool;
  final List<dynamic> fiveStarWeaponPool;
  final List<dynamic> fourStarWeaponPool;
  final List<dynamic> threeStarWeaponPool;

  StandardPool(
    this.fiveStarCharacterPool,
    this.fourStarCharacterPool,
    this.fiveStarWeaponPool,
    this.fourStarWeaponPool,
    this.threeStarWeaponPool,
  );
}

class EventPool {
  final List<dynamic> wonfiveStarCharacterPool;
  final List<dynamic> lostfiveStarCharacterPool;
  final List<dynamic> wonfourStarCharacterPool;
  final List<dynamic> lostfourStarCharacterPool;
  final List<dynamic> threeStarWeaponPool;
  final List<dynamic> fourStarWeaponPool;

  EventPool(
    this.wonfiveStarCharacterPool,
    this.lostfiveStarCharacterPool,
    this.wonfourStarCharacterPool,
    this.lostfourStarCharacterPool,
    this.threeStarWeaponPool,
    this.fourStarWeaponPool,
  );
}
