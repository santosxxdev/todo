import 'package:flutter/material.dart';
import 'package:todo_c8_sunday/shared/styles/app_colors.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Add New Task',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            textInputAction: TextInputAction.next ,
            decoration: InputDecoration(
                label: Text('Task Titel'),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.lightColor),
                  borderRadius: BorderRadius.circular(18),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.lightColor),
                  borderRadius: BorderRadius.circular(18),
                )),
          ),
          SizedBox(height: 15,),
          TextFormField(
            maxLines: 3,
            decoration: InputDecoration(
                label: Text('Task Description'),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.lightColor),
                  borderRadius: BorderRadius.circular(18),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.lightColor),
                  borderRadius: BorderRadius.circular(18),
                )),
          ),
          SizedBox(height: 15,),
          Container(
            width: double.infinity,
            child: Text('Select Date' , style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.start,),
          ),
          Text('20/6/2023' ,style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.black),),
          SizedBox(height: 25,),
          ElevatedButton(onPressed: (){}, child: Text('Add Task'))
        ],
      ),
    );
  }
}
