// class SummonPool {
//   final List<EventPool> eventPool;
//   final List<StandardPool> standardPool;

//   SummonPool(this.eventPool, this.standardPool);
// }

class StandardPool {
  final List<dynamic> fiveStarCharacterPool;
  final List<dynamic> fourStarCharacterPool;
  final List<dynamic> threeStarWeaponPool;
  final List<dynamic> fourStarWeaponPool;

  StandardPool(this.fiveStarCharacterPool, this.fourStarCharacterPool,
      this.threeStarWeaponPool, this.fourStarWeaponPool);
}

class EventPool {
  final List<dynamic> fiveStarCharacterPool;
  final List<dynamic> fourStarCharacterPool;
  final List<dynamic> threeStarWeaponPool;
  final List<dynamic> fourStarWeaponPool;
  final Map<dynamic, dynamic> images;

  EventPool(this.fiveStarCharacterPool, this.fourStarCharacterPool,
      this.threeStarWeaponPool, this.fourStarWeaponPool, this.images);
}
  // SummonPool.fromJson(Map<String, dynamic> json)
  //     : code = json['CODIGO'].trim(),
  //       desc = json['DESCRIPCION'].trim().replaceAll(trimSpacesRegex, ' '),
  //       invt = json['INVENT'].toString(),
  //       price = json['PRECIO'].toStringAsFixed(2),
  //       codealt = json['COD.ALT.'].trim().replaceAll(trimSpacesRegex, ' '),
  //       descalt = json['DESC.ALT.'].trim().replaceAll(trimSpacesRegex, ' '),
  //       group = json['GRUPO'],
  //       disc1 = (json['PRECIO'] * 0.85).toStringAsFixed(2),
  //       isSelected = false;

  // static const List canCompareMedidaGroups = [
  //   // 'MEDIDA DE PLATO/P', // PLATOS can't be exchanged
  //   'MEDIDA DE DISCO',
  // ];

  // static const List medidaGroups = [
  //   // 'MEDIDA DE PLATO/P',
  //   'MEDIDA DE DISCO',
  //   // 'MED /FILTRO AIRE',
  //   // 'MED/FILTRO ACEITE/DIESEL',
  //   // 'MEDIDA DE A/A',
  //   // 'MEDIDA F/A',
  // ];

  // static const List groups = [
  //   '10.FILTRO A/A',
  //   '11.FILTRO GAS. ESTUCHE',
  //   '12.FILTRO T/AUTOMATICA',
  //   '13.FILTRO AIRE',
  //   '14.FILTRO ACEITE',
  //   '15.FILTRO DIESEL',
  //   // '16.FILTRO GAS', // replaced by 15.FILTRO DIESEL
  //   '17.TACO',
  //   '18.DISCO',
  //   '19.PLATO',
  //   '20.ZAPATA',
  //   '21.BALINERA CLUTCH',
  //   '22.BALINERA RUEDA',
  //   '23.PUNTA FLECHA',
  //   '24.AXIAL',
  //   '25.CASQUILLO BANCADA',
  //   '26.CASQUILLO BIELA',
  //   '27.CORREA AP/BP',
  //   '28.CORREA PK',
  //   '29.CORREA SERIE 15/17/22',
  //   '30.CORREA TIEMPO',
  //   '31.FITRO AIRE DE EQUIPO PESADO',
  //   '32.FILTRO-H',
  //   'INTERCAMBIO CODIGO',
  //   'MEDIDA DE DISCO',
  //   'ESPECIAL',
  //   // 'MEDIDA DE PLATO/P',
  // ];

  // static const Map<String, String> groupImages = {
  //   '10.FILTRO A/A': StorageUrlPaths.cgi_filtro_cabima,
  //   '11.FILTRO GAS. ESTUCHE': StorageUrlPaths.cgi_filtro_estuche,
  //   '12.FILTRO T/AUTOMATICA': StorageUrlPaths.cgi_filtro_trans,
  //   '13.FILTRO AIRE': StorageUrlPaths.cgi_filtro_aire,
  //   '14.FILTRO ACEITE': StorageUrlPaths.cgi_filtro_aceite,
  //   '15.FILTRO DIESEL': StorageUrlPaths.cgi_filtro_diesel,
  //   // '16.FILTRO GAS': StorageUrlPaths.cgi_filtro_gas, // replaced by diesel
  //   '17.TACO': StorageUrlPaths.cgi_taco,
  //   '18.DISCO': StorageUrlPaths.cgi_disco,
  //   '19.PLATO': StorageUrlPaths.cgi_plato,
  //   '20.ZAPATA': StorageUrlPaths.cgi_zapata,
  //   '21.BALINERA CLUTCH': StorageUrlPaths.cgi_bal_clutch,
  //   '22.BALINERA RUEDA': StorageUrlPaths.cgi_bal_rueda,
  //   '23.PUNTA FLECHA': StorageUrlPaths.cgi_punta_flecha,
  //   '24.AXIAL': StorageUrlPaths.cgi_casq_axial,
  //   '25.CASQUILLO BANCADA': StorageUrlPaths.cgi_casq_banc,
  //   '26.CASQUILLO BIELA': StorageUrlPaths.cgi_casq_biela,
  //   '27.CORREA AP/BP': StorageUrlPaths.cgi_correa_apbp,
  //   '28.CORREA PK': StorageUrlPaths.cgi_correa_pk,
  //   '29.CORREA SERIE 15/17/22': StorageUrlPaths.cgi_correa_151722,
  //   '30.CORREA TIEMPO': StorageUrlPaths.cgi_correa_tiempo,
  //   '31.FITRO AIRE DE EQUIPO PESADO': StorageUrlPaths.cgi_filtro_pesado,
  //   'MEDIDA DE DISCO': StorageUrlPaths.cgi_disco,
  //   // 'MEDIDA DE PLATO/P':
  //   //     StorageUrlPaths.cgi_plato,
  // };

