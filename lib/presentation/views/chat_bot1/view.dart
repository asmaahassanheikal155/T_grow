import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_grow/app/app_colors.dart';
import 'package:t_grow/app/app_icons.dart';

import '../../../app/app_images.dart';

class ChatBot1 extends StatefulWidget {
  const ChatBot1({super.key});

  @override
  State<ChatBot1> createState() => _ChatBot1State();
}

class _ChatBot1State extends State<ChatBot1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:  InkWell(onTap: (){
        Navigator.pop(context);
      },
          child: Icon(Icons.arrow_back_ios, color: Colors.green[900])),backgroundColor: AppColors.AColor),
      body:Stack(alignment: Alignment.bottomCenter,
        children: [
          Container(

          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage(AppImages.Background_chat),fit: BoxFit.fill
    ),
    ),),

         SizedBox(height: MediaQuery.of(context).size.height-200,
           child: ListView(
             children: [
               Column(
                 children: [

                   Padding(
                     padding: const EdgeInsets.only(top: 20),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Image.asset(
                           AppImages.chatbot1,
                         )
                       ],
                     ),
                   ),
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 10, right: 10),
                         child: Image.asset(AppImages.ChatBot),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           width: 200,
                           height: 50,
                           decoration: const BoxDecoration(
                               color: AppColors.container_chatbot,
                               borderRadius: BorderRadius.only(
                                   topRight: Radius.circular(20),
                                   bottomLeft: Radius.circular(20),
                                   bottomRight: Radius.circular(20))),
                           child: const Padding(
                             padding:  EdgeInsets.all(8.0),
                             child: Text(
                               'Hello I am your virtual guide and will  help you in planting',
                               style: TextStyle(
                                   fontSize: 12, fontWeight: FontWeight.bold),
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 210, top: 20, right: 10),
                     child: Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Padding(
                           padding:  const EdgeInsets.all(8.0),
                           child: Container(
                             decoration: const BoxDecoration(
                                 color: AppColors.Chatbot,
                                 borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(20),
                                     bottomLeft: Radius.circular(20),
                                     bottomRight: Radius.circular(20))),
                             child: const Padding(
                               padding: EdgeInsets.all(8.0),
                               child: Text(
                                 'Let’s go',
                                 style: TextStyle(
                                     fontSize: 12,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white),
                               ),
                             ),
                           ),
                         ),
                         Image.asset(AppImages.person_image)
                       ],
                     ),
                   ),
                   const Padding(
                     padding: EdgeInsets.only(right: 70),
                     child: Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Text(
                           '09:25 AM',
                           style: TextStyle(color: Colors.grey, fontSize: 10),
                         )
                       ],
                     ),
                   ),
                   Row(
                     children: [
                       Image.asset(AppImages.ChatBot),
                       Padding(
                         padding: const EdgeInsets.only(right: 50),
                         child: Container(
                           width: 200.w,
                           height: 50.h,
                           decoration: const BoxDecoration(
                               color: AppColors.container_chatbot,
                               borderRadius: BorderRadius.only(
                                   topRight: Radius.circular(20),
                                   bottomLeft: Radius.circular(20),
                                   bottomRight: Radius.circular(20))),
                           child: const Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Text(
                               "Excellent! I can help you in planting healthy plants. ",
                               style: TextStyle(
                                   fontSize: 12, fontWeight: FontWeight.bold),
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 210, top: 20, right: 10),
                     child: Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             decoration: const BoxDecoration(
                                 color: AppColors.Chatbot,
                                 borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(20),
                                     bottomLeft: Radius.circular(20),
                                     bottomRight: Radius.circular(20))),
                             child: const Padding(
                               padding: EdgeInsets.all(8.0),
                               child: Text(
                                 'Let’s go',
                                 style: TextStyle(
                                     fontSize: 12,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white),
                               ),
                             ),
                           ),
                         ),
                         Image.asset(AppImages.person_image)
                       ],
                     ),
                   ),
                   const Padding(
                     padding: EdgeInsets.only(right: 70),
                     child: Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Text(
                           '09:25 AM',
                           style: TextStyle(color: Colors.grey, fontSize: 10),
                         )
                       ],
                     ),
                   ),
                   Row(
                     children: [
                       Padding(
                         padding: EdgeInsets.only(left: 10, right: 10),
                         child: Image.asset(AppImages.ChatBot),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           width: 188,
                           height: 109,
                           decoration: BoxDecoration(
                               color: AppColors.container_chatbot,
                               borderRadius: BorderRadius.only(
                                   topRight: Radius.circular(20),
                                   bottomLeft: Radius.circular(20),
                                   bottomRight: Radius.circular(20))),
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text(
                               "It's important to keep in mind that managing late blight is crucial for both commercial and home garden tomato growers to prevent the rapid spread of the disease and protect their crops.",
                               style: TextStyle(
                                   fontSize: 12, fontWeight: FontWeight.bold),
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                   Padding(
                     padding: EdgeInsets.only(left: 210, top: 20, right: 10),
                     child: Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             decoration: BoxDecoration(
                                 color: AppColors.Chatbot,
                                 borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(20),
                                     bottomLeft: Radius.circular(20),
                                     bottomRight: Radius.circular(20))),
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text(
                                 'Let’s go',
                                 style: TextStyle(
                                     fontSize: 12,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white),
                               ),
                             ),
                           ),
                         ),
                         Image.asset(AppImages.person_image)
                       ],
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(left: 210, top: 20, right: 10),
                     child: Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             decoration: BoxDecoration(
                                 color: AppColors.Chatbot,
                                 borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(20),
                                     bottomLeft: Radius.circular(20),
                                     bottomRight: Radius.circular(20))),
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text(
                                 'Let’s go',
                                 style: TextStyle(
                                     fontSize: 12,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white),
                               ),
                             ),
                           ),
                         ),
                         Image.asset(AppImages.person_image)
                       ],
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(left: 210, top: 20, right: 10),
                     child: Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             decoration: BoxDecoration(
                                 color: AppColors.Chatbot,
                                 borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(20),
                                     bottomLeft: Radius.circular(20),
                                     bottomRight: Radius.circular(20))),
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text(
                                 'Let’s go',
                                 style: TextStyle(
                                     fontSize: 12,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white),
                               ),
                             ),
                           ),
                         ),
                         Image.asset(AppImages.person_image)
                       ],
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(left: 210, top: 20, right: 10),
                     child: Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             decoration: BoxDecoration(
                                 color: AppColors.Chatbot,
                                 borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(20),
                                     bottomLeft: Radius.circular(20),
                                     bottomRight: Radius.circular(20))),
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text(
                                 'Let’s go',
                                 style: TextStyle(
                                     fontSize: 12,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white),
                               ),
                             ),
                           ),
                         ),
                         Image.asset(AppImages.person_image)
                       ],
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(left: 210, top: 20, right: 10),
                     child: Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             decoration: BoxDecoration(
                                 color: AppColors.Chatbot,
                                 borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(20),
                                     bottomLeft: Radius.circular(20),
                                     bottomRight: Radius.circular(20))),
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text(
                                 'Let’s go',
                                 style: TextStyle(
                                     fontSize: 12,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white),
                               ),
                             ),
                           ),
                         ),
                         Image.asset(AppImages.person_image)
                       ],
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(left: 210, top: 20, right: 10),
                     child: Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             decoration: BoxDecoration(
                                 color: AppColors.Chatbot,
                                 borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(20),
                                     bottomLeft: Radius.circular(20),
                                     bottomRight: Radius.circular(20))),
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text(
                                 'Let’s go',
                                 style: TextStyle(
                                     fontSize: 12,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white),
                               ),
                             ),
                           ),
                         ),
                         Image.asset(AppImages.person_image)
                       ],
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(right: 70),
                     child: Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Text(
                           '09:25 AM',
                           style: TextStyle(color: Colors.grey, fontSize: 10),
                         )
                       ],
                     ),
                   ),
                   SizedBox(
                     height: 40,
                   ),

                 ],
               )
             ],
           ),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
           child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              filled: true,
              hintText: "Write Your Message",
              suffixIcon:Icon(Icons.file_copy),
              fillColor: AppColors.container_chatbot,
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(40),
              ),
              labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
                   ),
         ),
    ]
      ),
    );
  }
}
