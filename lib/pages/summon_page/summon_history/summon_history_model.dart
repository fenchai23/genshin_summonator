class SummonHistoryModel {
  final int index;
  final String item;
  final String type; // weapon or character
  final String rarity;
  final bool rateUpBanner;
  int constellation = 0;

  SummonHistoryModel(
    this.index,
    this.item,
    this.type,
    this.rarity,
    this.rateUpBanner,
    this.constellation,
  );
}
