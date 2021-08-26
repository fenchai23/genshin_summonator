class StandardPool {
  final List<dynamic> fiveStarCharacterPool;
  final List<dynamic> fourStarCharacterPool;
  final List<dynamic> threeStarWeaponPool;
  final List<dynamic> fourStarWeaponPool;
  final Map<dynamic, dynamic> nameMap;
  final Map<dynamic, dynamic> images;

  StandardPool(
    this.fiveStarCharacterPool,
    this.fourStarCharacterPool,
    this.threeStarWeaponPool,
    this.fourStarWeaponPool,
    this.nameMap,
    this.images,
  );
}

class EventPool {
  final List<dynamic> wonfiveStarCharacterPool;
  final List<dynamic> lostfiveStarCharacterPool;
  final List<dynamic> wonfourStarCharacterPool;
  final List<dynamic> lostfourStarCharacterPool;
  final List<dynamic> threeStarWeaponPool;
  final List<dynamic> fourStarWeaponPool;
  final Map<dynamic, dynamic> nameMap;
  final Map<dynamic, dynamic> images;

  EventPool(
    this.wonfiveStarCharacterPool,
    this.lostfiveStarCharacterPool,
    this.wonfourStarCharacterPool,
    this.lostfourStarCharacterPool,
    this.threeStarWeaponPool,
    this.fourStarWeaponPool,
    this.nameMap,
    this.images,
  );
}
