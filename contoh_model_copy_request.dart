class ContohModelCopy{
   int userId;
   int id;
   String title;
   bool completed;
   DataField dataField;
   Datadata datadata;
   List<DataSederhana> dataSederhana;
ContohModelCopy({
  required this.userId,
  required this.id,
  required this.title,
  required this.completed,
  required this.dataField,
  required this.datadata,
  required this.dataSederhana,
});
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

}

class Datadata{
   double dataSatu;
   String dataDua;
Datadata({
  required this.dataSatu,
  required this.dataDua,
});

}

class DataSederhana{
   String dataku;
   bool valueku;
   double hasilDataku;
DataSederhana({
  required this.dataku,
  required this.valueku,
  required this.hasilDataku,
});

}

