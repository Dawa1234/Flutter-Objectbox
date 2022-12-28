import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderScrenn extends StatefulWidget {
  const CalenderScrenn({Key? key}) : super(key: key);

  @override
  State<CalenderScrenn> createState() => _CalenderScrennState();
}

class _CalenderScrennState extends State<CalenderScrenn> {
  Map<String, List<Map<String, String>>> mySelectedEvent = {};
  var today = DateTime.now();
  String formattedDate = "";

  int count = 0;
  // void onDaySeleted(DateTime day, DateTime focusedDay) {
  //   setState(() {
  //     today = day;
  //   });
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    formattedDate = today.toString().split(" ")[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Selected day ${today.toString().split(" ")[0]}"),
          TableCalendar(
            eventLoader: (day) {
              if (mySelectedEvent[DateFormat("yyyy-MM-dd").format(day)] !=
                  null) {
                return mySelectedEvent[DateFormat("yyyy-MM-dd").format(day)]!;
              }
              return [];
            },
            rowHeight: 43,
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            focusedDay: today,
            selectedDayPredicate: (day) => isSameDay(day, today),
            availableGestures: AvailableGestures.all,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(20300, 10, 16),
            onDaySelected: ((selectedDay, focusedDay) {
              setState(() {
                today = selectedDay;
                formattedDate = today.toString().split(" ")[0];
              });
            }),
          ),
          mySelectedEvent[formattedDate] == null ||
                  mySelectedEvent[formattedDate]!.isEmpty
              ? const Center(child: Text("No Events"))
              : Expanded(
                  child: Container(
                  padding: const EdgeInsets.all(10),
                  color: const Color.fromARGB(255, 167, 255, 25),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      itemCount: mySelectedEvent[formattedDate]!.length,
                      itemBuilder: ((context, index) {
                        return ListTile(
                          trailing: IconButton(
                            onPressed: () {
                              setState(() {
                                mySelectedEvent[formattedDate]!.remove(
                                    mySelectedEvent[formattedDate]![index]);
                              });
                            },
                            icon: const Icon(Icons.delete),
                          ),
                          leading: const Icon(
                            Icons.check_box,
                            color: Colors.green,
                          ),
                          title: Text(
                              "${mySelectedEvent[formattedDate]![index]['Event Title']}"),
                          subtitle: Text(
                              "${mySelectedEvent[formattedDate]![index]['Event']}"),
                        );
                      })),
                ))
        ],
      ),
      floatingActionButton: SizedBox(
        width: 100,
        height: 50,
        child: FloatingActionButton(
          shape: const StadiumBorder(
              side: BorderSide(width: 0, color: Colors.white)),
          onPressed: () {
            setState(() {
              count += 1;
            });
            if (mySelectedEvent[formattedDate] == null) {
              mySelectedEvent.addAll({
                formattedDate: [
                  {
                    "Event Title": "EventA$count",
                    "Event": "A$count"
                  } // --> Map 1
                ]
              });
              return;
            }
            var events = mySelectedEvent[formattedDate]!;
            events.add({"Event Title": "EventA$count", "Event": "A$count"});
          },
          child: const Text("Add Event"),
        ),
      ),
    );
  }
}
