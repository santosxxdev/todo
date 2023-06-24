import 'package:flutter/material.dart';
import 'package:todo_c8_sunday/shared/styles/app_colors.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Add New Task' ,style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),),

        TextFormField(
          decoration: InputDecoration(
            label: Text('Task Titel'),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.lightColor
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          ),
        )
      ],
    );
  }
}
