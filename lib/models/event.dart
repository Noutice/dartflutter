class Event {
  late String name;
  late String location;
  late String dateTime;
  Event({required String name,required String location, required String dateTime}){
    this.name = name;
    this.location = location;
    this.dateTime = dateTime;
  }
}