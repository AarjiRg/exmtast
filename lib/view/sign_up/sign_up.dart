import 'package:exmtast/view/sign_in/sign_in.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    
      final emailFormKey= GlobalKey<FormState>();
  final passwordFormKey= GlobalKey<FormState>();
  final confirmpasswordFormKey= GlobalKey<FormState>();
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
              Text("Sign Up for Free",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 35),),
              SizedBox(height: 35,),
              Form(
                key: emailFormKey,
                child: TextFormField(
                   onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
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
                              return ("enter a vaild email");
                            }
                          },
                          onChanged: (value) {
                            emailFormKey.currentState!.validate();
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
                    label: Text("Your Password",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)
                    )
                  ),
                   validator: (value) {
                          if(value!= null && value.length>7){
                            return null;
                          }else{
                            return ("enter a valid password");
                          }
                        },
                        onChanged: (value) {
                          passwordFormKey.currentState!.validate();
                        },
                        
                ),
                
              ),
              SizedBox(
                height: 35,
              ),
              Form(
                key: confirmpasswordFormKey,
                child: TextFormField(
                   onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
                  decoration: InputDecoration(
                    suffix: Icon(Icons.remove_red_eye),
                    label: Text("Your Confirm Password",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)
                    )
                  ),
                   validator: (value) {
                          if(value!= null && value.length>7){
                            return null;
                          }else{
                            return ("enter a valid password");
                          }
                        },
                        onChanged: (value) {
                          passwordFormKey.currentState!.validate();
                        },
                  
                ),
              ),
              SizedBox(height: 45,),
           
             
              Container(
                height: 50,
                decoration:BoxDecoration(
                  color: Colors.blue.shade800,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))),
              ),
              Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center ,
               crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                  TextButton(
                    onPressed: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SignIn()),(Route)=>false);
                    },
                    
                    child: Text("Sign In",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.blue),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}