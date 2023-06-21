import 'package:flutter/material.dart';

Widget defultButton({
  double width = double.infinity,
  Color background =Colors.blue,
  bool isUpperCase= true,
  double radius=10.0,
  required Function function,
  required String text,

})=> 
Container(

    width:width,
    height: 40.0,
    child: MaterialButton(
    onPressed: ()
    {
      function();
    },
                   
    // var result = await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: PasswordController.text);
                      
    // if(result!=null){
    //   Navigator.push(
    //     context, 
    //    MaterialPageRoute(builder: (context)=> hello()),  
    // );
    // }else{
    //   print('user not Found');
    // }
            
     child: Padding(
     padding: const EdgeInsets.all(120.0),
                      
    child: Text(
           isUpperCase ? text.toUpperCase():text,
         style: TextStyle(
         color: Colors.white,
       ),                   
      ),
     ),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        radius,
        ),
      color:background,
    ),
  );

Widget defultFormFiled({
  required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit,
  Function? onChange,
  bool isPassword=false, 
  required Function validate,
  required String label,
  required IconData prefix,
   IconData? suffix,
  Function? suffixPressed,
})=> 
    TextFormField(
        controller: controller,
        keyboardType: type,
        obscureText:isPassword,
        onFieldSubmitted:(s)
        {
          onSubmit;
        },
        onChanged: (s)
        {
          onChange;
        },
        validator:(s)
        {
          validate(s);
        },
        decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
        prefix,
      
      ),
      suffixIcon: suffix !=null ? IconButton(
        onPressed: (){
          suffixPressed!();
        },
        icon: Icon(
          suffix,
        ),
      ):null,
        border: OutlineInputBorder(),
    ),
  );  



Widget defultTextButton(
  {
    required Function function,
    required String text,
  }
  )=>
  TextButton(
    onPressed: (){
      function;
    },
     child: Text('text.toUpperCase',
     ),
     );

