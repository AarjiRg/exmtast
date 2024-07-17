import 'package:exmtast/view/home%20_screen/home_screen.dart';
import 'package:exmtast/view/sign_up/sign_up.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final emailFormKey = GlobalKey<FormState>();
    final passwordFormKey = GlobalKey<FormState>();
    final email="aarji@gmail.com";
    final password="123456789";
    TextEditingController emailcontrollerr = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              SizedBox(height: 25,),
              Text("Sign in to Your Account",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 35),),
              SizedBox(height: 35,),
              Form(
                key: emailFormKey,
                child: TextFormField(
                   onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
                  controller: emailcontrollerr,
                  decoration: InputDecoration(
                    label: Text("Your Email Address",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)
                    )
                  ),
                   validator: (value) {
                        if(value!= null && value.contains("@")){
                          return null;
                        }else{
                          return ("enter a valid email address");
                        }
                      },
                ),
                
              ),
              SizedBox(
                height: 35,
              ),
              Form(
                key: passwordFormKey,

                child: TextFormField(
                   onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
                  controller: passwordcontroller,
                  
                  decoration: InputDecoration(
                    suffix: Icon(Icons.remove_red_eye),
                    label: Text("Your Password",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)
                    )
                  ),
                   validator: (value) {
                  if(value != null && value.length>=7){
                    return null;
                  }else {
                    return("Enter a valid Password");
                  }
                  
                },
                ),
              ),
              SizedBox(height: 35,),
              Container(
                child: Row(
                  
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(7)
                      ),
                      child:Icon(Icons.check)
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Remember Me",style: TextStyle(fontWeight: FontWeight.w800),),
                    ),
                    Expanded(child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Forgot Password",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.blue),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  if(emailFormKey.currentState!.validate() && passwordFormKey.currentState!.validate()){
if(emailcontrollerr.text == email && passwordcontroller.text == password){
  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeScreen()), (Route)=>false);
}else{


  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.all(20),
                  backgroundColor: Colors.red,
                  action: SnackBarAction(label: "retry", onPressed: (){}),
                  behavior: SnackBarBehavior.floating,
                  content: Text("failed")));   
}
                  }
                  else{
                    return null;
                  }
                  
                },
                child: Container(
                  height: 50,
                  decoration:BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text("Signup",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))),
                ),
              ),
              Expanded(child: SizedBox()),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                  TextButton(
                  
                    onPressed: () {
                      
                      Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.blue),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}