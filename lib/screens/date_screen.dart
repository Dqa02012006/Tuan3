
import 'package:flutter/material.dart';

class DatePickerScreen extends StatefulWidget {
  const DatePickerScreen({super.key});

  @override
  State<DatePickerScreen> createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  DateTime? selectedDate;

  Future<void> pickDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime(2026, 10, 18),
      firstDate: DateTime(1900),
      lastDate: DateTime(2026, 12, 31),
      initialDatePickerMode: DatePickerMode.year,
    );

    if (date != null) {
      setState(() {
        selectedDate = date;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DatePicker"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDate == null
                  ? "Chưa chọn ngày"
                  : "Ngày đã chọn: "
                    "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",
              style: const TextStyle(fontSize: 22),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: pickDate,
              child: const Text("Chọn ngày"),
            ),
          ],
        ),
      ),
    );
  }
}
