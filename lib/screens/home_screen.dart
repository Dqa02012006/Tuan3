
import 'package:flutter/material.dart';
import 'package:tuan_3/screens/date_screen.dart';
import 'package:tuan_3/screens/password_screen.dart';
import 'package:tuan_3/screens/radiobutton_screen.dart';
import 'package:tuan_3/screens/slider_screen.dart';
import 'package:tuan_3/screens/textfield_screen.dart';
import 'package:tuan_3/screens/toggle_screen.dart';
import 'package:tuan_3/screens/text_detail_screen.dart';
import 'package:tuan_3/screens/image_screen.dart';
import 'package:tuan_3/screens/button_screen.dart';
import 'package:tuan_3/screens/checkbox_screen.dart';
import 'package:tuan_3/screens/picker_screen.dart';
import 'package:tuan_3/screens/navigation_view_screen.dart';
import 'package:tuan_3/screens/tab_bar_screen.dart';
import 'package:tuan_3/screens/menu_screen.dart';
import 'package:tuan_3/screens/list_screen.dart';
import 'package:tuan_3/screens/card_screen.dart';
import 'package:tuan_3/screens/divider_screen.dart';
import 'package:tuan_3/screens/column_screen.dart';
import 'package:tuan_3/screens/row_screen.dart';
import 'package:tuan_3/screens/stack_screen.dart';
import 'package:tuan_3/screens/scroll_view_screen.dart';
import 'package:tuan_3/screens/spacer_screen.dart';
import 'package:tuan_3/screens/time_picker_screen.dart';
import 'package:tuan_3/screens/stepper_screen.dart';
import 'package:tuan_3/screens/chips_screen.dart';
import 'package:tuan_3/screens/search_bar_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Hàm tạo nút và chuyển màn hình
  Widget buildButton(BuildContext context, String title, Widget page) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Components List"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[100],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              "Display",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            buildButton(context, "Text", const TextDetailScreen()),
            const SizedBox(height: 10),
            buildButton(context, "Image", const ImageScreen()),

            const SizedBox(height: 20),

            const Text(
              "Input",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            buildButton(context, "TextField", const TextFieldScreen()),
            const SizedBox(height: 10),
            buildButton(context, "PasswordField", const PasswordFieldScreen()),
            const SizedBox(height: 10),
            buildButton(context, "Toggle", const ToggleButtonScreen()),
            const SizedBox(height: 10),
            buildButton(context, "Slider", const SliderScreen()),
            const SizedBox(height: 10),
            buildButton(context, "DatePicker", const DatePickerScreen()),
            const SizedBox(height: 10),
            buildButton(context, "TimePicker", const TimePickerScreen()),
            const SizedBox(height: 10),
            buildButton(context, "Searchbar", const SearchBarScreen()),

            const SizedBox(height: 20),

            const Text(
              "Selection",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            buildButton(context, "Button", const ButtonScreen() ),
            const SizedBox(height: 10),
            buildButton(context, "CheckBox", const CheckboxScreen()),
            const SizedBox(height: 10),
            buildButton(context, "RadioButton", const RadioButtonScreen()),
            const SizedBox(height: 10),
            buildButton(context, "Picker", const PickerScreen()),
            const SizedBox(height: 10),
            buildButton(context, "Stepper", const StepperScreen()),
            const SizedBox(height: 10),
            buildButton(context, "Chips", const ChipsScreen()),

            const SizedBox(height: 20),

            const Text(
              "Navigation",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            buildButton(context, "NavigationView", const NavigationViewScreen()),
            const SizedBox(height: 10),
            buildButton(context, "TabBar", const TabBarScreen()),
            const SizedBox(height: 10),
            buildButton(context, "Menu", const MenuScreen()),

            const SizedBox(height: 20),

            const Text(
              "Content",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            buildButton(context, "List", const ListScreen()),
            const SizedBox(height: 10),
            buildButton(context, "Card", const CardScreen()),
            const SizedBox(height: 10),
            buildButton(context, "Divider", const DividerScreen()),

            const SizedBox(height: 20),

            const Text(
              "Layout",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            buildButton(context, "Column", const ColumnScreen()),
            const SizedBox(height: 10),
            buildButton(context, "Row", const RowScreen()),
            const SizedBox(height: 10),
            buildButton(context, "Stack", const StackScreen()),
            const SizedBox(height: 10),
            buildButton(context, "ScrollView", const ScrollViewScreen()),
            const SizedBox(height: 10),
            buildButton(context, "Spacer", const SpacerScreen()),

            const SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
