import 'dart:convert';

class FileName{
   int userId;
   int id;
   String title;
   bool completed;
   DataField dataField;
   Datadata datadata;
   DimanaBosku dimana_bosku;
   List<DataSederhana> dataSederhana;
FileName({
  required this.userId,
  required this.id,
  required this.title,
  required this.completed,
  required this.dataField,
  required this.datadata,
  required this.dimana_bosku,
  required this.dataSederhana,
});
Map<String, dynamic> toMap(){
return{
'userId': userId,
'id': id,
'title': title,
'completed': completed,
'dataField': dataField.toMap(),
'datadata': datadata.toMap(),
'dimana_bosku': dimana_bosku.toMap(),
'dataSederhana': dataSederhana.map((x)=> x.toMap()).toList(),
};
}

factory FileName.fromMap(Map<String, dynamic> map) {
return FileName(
userId: map['userId'] ?? 0,
id: map['id'] ?? 0,
title: map['title'] ?? '',
completed: map['completed'] ?? false,
dataField: DataField.fromMap(map['dataField']),
datadata: Datadata.fromMap(map['datadata']),
dimana_bosku: DimanaBosku.fromMap(map['dimana_bosku']),
dataSederhana: List<DataSederhana>.from(map['dataSederhana']?.map((x)=> DataSederhana.fromMap(x))),
);
}

String toJson() => json.encode(toMap());

factory FileName.fromJson(String source) => FileName.fromMap(json.decode(source));

}

class DataField{
   bool dataku;
   int dataField;
   String mainData;
DataField({
  required this.dataku,
  required this.dataField,
  required this.mainData,
});

Map<String, dynamic> toMap(){
return{
'dataku': dataku,
'dataField': dataField,
'mainData': mainData,
};
}

factory DataField.fromMap(Map<String, dynamic> map) {
return DataField(
dataku: map['dataku'] ?? false,
dataField: map['dataField'] ?? 0,
mainData: map['mainData'] ?? '',
);
}

String toJson() => json.encode(toMap());

factory DataField.fromJson(String source) => DataField.fromMap(json.decode(source));

}

class Datadata{
   double dataSatu;
   String dataDua;
Datadata({
  required this.dataSatu,
  required this.dataDua,
});

Map<String, dynamic> toMap(){
return{
'dataSatu': dataSatu,
'dataDua': dataDua,
};
}

factory Datadata.fromMap(Map<String, dynamic> map) {
return Datadata(
dataSatu: map['dataSatu'] ?? 0.0,
dataDua: map['dataDua'] ?? '',
);
}

String toJson() => json.encode(toMap());

factory Datadata.fromJson(String source) => Datadata.fromMap(json.decode(source));

}

class DimanaBosku{
   bool okeemantap;
DimanaBosku({
  required this.okeemantap,
});

Map<String, dynamic> toMap(){
return{
'okeemantap': okeemantap,
};
}

factory DimanaBosku.fromMap(Map<String, dynamic> map) {
return DimanaBosku(
okeemantap: map['okeemantap'] ?? false,
);
}

String toJson() => json.encode(toMap());

factory DimanaBosku.fromJson(String source) => DimanaBosku.fromMap(json.decode(source));

}

class DataSederhana{
   String dataku;
   bool valueku;
   double hasilDataku;
   AdaDataku adaDataku;
   List<TidakAda> tidakAda;
DataSederhana({
  required this.dataku,
  required this.valueku,
  required this.hasilDataku,
  required this.adaDataku,
  required this.tidakAda,
});

Map<String, dynamic> toMap(){
return{
'dataku': dataku,
'valueku': valueku,
'hasilDataku': hasilDataku,
'adaDataku': adaDataku.toMap(),
'tidakAda': tidakAda.map((x)=> x.toMap()).toList(),
};
}

factory DataSederhana.fromMap(Map<String, dynamic> map) {
return DataSederhana(
dataku: map['dataku'] ?? '',
valueku: map['valueku'] ?? false,
hasilDataku: map['hasilDataku'] ?? 0.0,
adaDataku: AdaDataku.fromMap(map['adaDataku']),
tidakAda: List<TidakAda>.from(map['tidakAda']?.map((x)=> TidakAda.fromMap(x))),
);
}

String toJson() => json.encode(toMap());

factory DataSederhana.fromJson(String source) => DataSederhana.fromMap(json.decode(source));

}

class AdaDataku{
   int okeeSiapp;
   bool siapapanya;
AdaDataku({
  required this.okeeSiapp,
  required this.siapapanya,
});

Map<String, dynamic> toMap(){
return{
'okeeSiapp': okeeSiapp,
'siapapanya': siapapanya,
};
}

factory AdaDataku.fromMap(Map<String, dynamic> map) {
return AdaDataku(
okeeSiapp: map['okeeSiapp'] ?? 0,
siapapanya: map['siapapanya'] ?? false,
);
}

String toJson() => json.encode(toMap());

factory AdaDataku.fromJson(String source) => AdaDataku.fromMap(json.decode(source));

}

class TidakAda{
   bool okeeada;
   double adakadabra;
   Adakah adakah;
TidakAda({
  required this.okeeada,
  required this.adakadabra,
  required this.adakah,
});

Map<String, dynamic> toMap(){
return{
'okeeada': okeeada,
'adakadabra': adakadabra,
'adakah': adakah.toMap(),
};
}

factory TidakAda.fromMap(Map<String, dynamic> map) {
return TidakAda(
okeeada: map['okeeada'] ?? false,
adakadabra: map['adakadabra'] ?? 0.0,
adakah: Adakah.fromMap(map['adakah']),
);
}

String toJson() => json.encode(toMap());

factory TidakAda.fromJson(String source) => TidakAda.fromMap(json.decode(source));

}

class Adakah{
   bool datadata;
   CobainDeh cobainDeh;
Adakah({
  required this.datadata,
  required this.cobainDeh,
});

Map<String, dynamic> toMap(){
return{
'datadata': datadata,
'cobainDeh': cobainDeh.toMap(),
};
}

factory Adakah.fromMap(Map<String, dynamic> map) {
return Adakah(
datadata: map['datadata'] ?? false,
cobainDeh: CobainDeh.fromMap(map['cobainDeh']),
);
}

String toJson() => json.encode(toMap());

factory Adakah.fromJson(String source) => Adakah.fromMap(json.decode(source));

}

class CobainDeh{
   List<Anjayy> anjayy;
CobainDeh({
  required this.anjayy,
});

Map<String, dynamic> toMap(){
return{
'anjayy': anjayy.map((x)=> x.toMap()).toList(),
};
}

factory CobainDeh.fromMap(Map<String, dynamic> map) {
return CobainDeh(
anjayy: List<Anjayy>.from(map['anjayy']?.map((x)=> Anjayy.fromMap(x))),
);
}

String toJson() => json.encode(toMap());

factory CobainDeh.fromJson(String source) => CobainDeh.fromMap(json.decode(source));

}

class Anjayy{
   String anjayMabar;
   bool okee;
   Siappp siappp;
Anjayy({
  required this.anjayMabar,
  required this.okee,
  required this.siappp,
});

Map<String, dynamic> toMap(){
return{
'anjayMabar': anjayMabar,
'okee': okee,
'siappp': siappp.toMap(),
};
}

factory Anjayy.fromMap(Map<String, dynamic> map) {
return Anjayy(
anjayMabar: map['anjayMabar'] ?? '',
okee: map['okee'] ?? false,
siappp: Siappp.fromMap(map['siappp']),
);
}

String toJson() => json.encode(toMap());

factory Anjayy.fromJson(String source) => Anjayy.fromMap(json.decode(source));

}

class Siappp{
   double dimana;
   List<Siapa> siapa;
Siappp({
  required this.dimana,
  required this.siapa,
});

Map<String, dynamic> toMap(){
return{
'dimana': dimana,
'siapa': siapa.map((x)=> x.toMap()).toList(),
};
}

factory Siappp.fromMap(Map<String, dynamic> map) {
return Siappp(
dimana: map['dimana'] ?? 0.0,
siapa: List<Siapa>.from(map['siapa']?.map((x)=> Siapa.fromMap(x))),
);
}

String toJson() => json.encode(toMap());

factory Siappp.fromJson(String source) => Siappp.fromMap(json.decode(source));

}

class Siapa{
   int okeoke;
   int dimanaAda;
   Okeboss okeboss;
Siapa({
  required this.okeoke,
  required this.dimanaAda,
  required this.okeboss,
});

Map<String, dynamic> toMap(){
return{
'okeoke': okeoke,
'dimanaAda': dimanaAda,
'okeboss': okeboss.toMap(),
};
}

factory Siapa.fromMap(Map<String, dynamic> map) {
return Siapa(
okeoke: map['okeoke'] ?? 0,
dimanaAda: map['dimanaAda'] ?? 0,
okeboss: Okeboss.fromMap(map['okeboss']),
);
}

String toJson() => json.encode(toMap());

factory Siapa.fromJson(String source) => Siapa.fromMap(json.decode(source));

}

class Okeboss{
   String siapp;
   List<DimanaBoss> dimanaBoss;
Okeboss({
  required this.siapp,
  required this.dimanaBoss,
});

Map<String, dynamic> toMap(){
return{
'siapp': siapp,
'dimanaBoss': dimanaBoss.map((x)=> x.toMap()).toList(),
};
}

factory Okeboss.fromMap(Map<String, dynamic> map) {
return Okeboss(
siapp: map['siapp'] ?? '',
dimanaBoss: List<DimanaBoss>.from(map['dimanaBoss']?.map((x)=> DimanaBoss.fromMap(x))),
);
}

String toJson() => json.encode(toMap());

factory Okeboss.fromJson(String source) => Okeboss.fromMap(json.decode(source));

}

class DimanaBoss{
   String adamikah;
   String dimanaiPle;
   Jadi jadi;
DimanaBoss({
  required this.adamikah,
  required this.dimanaiPle,
  required this.jadi,
});

Map<String, dynamic> toMap(){
return{
'adamikah': adamikah,
'dimanaiPle': dimanaiPle,
'jadi': jadi.toMap(),
};
}

factory DimanaBoss.fromMap(Map<String, dynamic> map) {
return DimanaBoss(
adamikah: map['adamikah'] ?? '',
dimanaiPle: map['dimanaiPle'] ?? '',
jadi: Jadi.fromMap(map['jadi']),
);
}

String toJson() => json.encode(toMap());

factory DimanaBoss.fromJson(String source) => DimanaBoss.fromMap(json.decode(source));

}

class Jadi{
   String okeehajarboss;
   String done;
   List<Sub> sub;
Jadi({
  required this.okeehajarboss,
  required this.done,
  required this.sub,
});

Map<String, dynamic> toMap(){
return{
'okeehajarboss': okeehajarboss,
'done': done,
'sub': sub.map((x)=> x.toMap()).toList(),
};
}

factory Jadi.fromMap(Map<String, dynamic> map) {
return Jadi(
okeehajarboss: map['okeehajarboss'] ?? '',
done: map['done'] ?? '',
sub: List<Sub>.from(map['sub']?.map((x)=> Sub.fromMap(x))),
);
}

String toJson() => json.encode(toMap());

factory Jadi.fromJson(String source) => Jadi.fromMap(json.decode(source));

}

class Sub{
   String datasub;
   String datadimana;
   List<Okeeboss> okeeboss;
Sub({
  required this.datasub,
  required this.datadimana,
  required this.okeeboss,
});

Map<String, dynamic> toMap(){
return{
'datasub': datasub,
'datadimana': datadimana,
'okeeboss': okeeboss.map((x)=> x.toMap()).toList(),
};
}

factory Sub.fromMap(Map<String, dynamic> map) {
return Sub(
datasub: map['datasub'] ?? '',
datadimana: map['datadimana'] ?? '',
okeeboss: List<Okeeboss>.from(map['okeeboss']?.map((x)=> Okeeboss.fromMap(x))),
);
}

String toJson() => json.encode(toMap());

factory Sub.fromJson(String source) => Sub.fromMap(json.decode(source));

}

class Okeeboss{
   String dimanaboss;
   bool siapp;
Okeeboss({
  required this.dimanaboss,
  required this.siapp,
});

Map<String, dynamic> toMap(){
return{
'dimanaboss': dimanaboss,
'siapp': siapp,
};
}

factory Okeeboss.fromMap(Map<String, dynamic> map) {
return Okeeboss(
dimanaboss: map['dimanaboss'] ?? '',
siapp: map['siapp'] ?? false,
);
}

String toJson() => json.encode(toMap());

factory Okeeboss.fromJson(String source) => Okeeboss.fromMap(json.decode(source));

}

