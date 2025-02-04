import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;
  const RoundButton({super.key, required this.title, required this.onTap, this.loading = false});

  @override
  Widget build(BuildContext context) {
       return InkWell(
         onTap: onTap,
         child: Container(
           height: 50,
           width: 350

           ,
           decoration: BoxDecoration(
             color: Colors.deepPurple,
             borderRadius: BorderRadius.circular(10),

           ),
               child: Center(child: loading ? CircularProgressIndicator():
               Center(child: Text(title, style: TextStyle(color: Colors.white,),),),
             ),
         )
       );
  }
}
