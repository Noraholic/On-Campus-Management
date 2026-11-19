import 'package:flutter/material.dart';
import 'package:oncampus_system/screens/admins/admin_screens/dashboard.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  final RxString selectedRole = ''.obs;
  final RxBool obscure = true.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController(); 

  final Color teal = Color(0xFF14505C);
  final Color ivory = Color(0xFFFBF7F1);
  final Color rose = Color(0xFFB8456B);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ivory,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
               height: 290,
                width: double.infinity,
               decoration: BoxDecoration(
                color: teal,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ), 
               child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                      top: 65,
                    ),
                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: ivory,
                            borderRadius: BorderRadius.circular(20),
                          ),

                          child: Icon(
                            Icons.school_outlined,
                            color: teal,
                            size: 38,
                          ),
                        ),

                        SizedBox(height: 30),
                        Text(
                          "Smart Campus",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Georgia',
                          ),
                        ),

                        SizedBox(height: 10),
                        Text(
                          "Smart Campus, Always Connected",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 35),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "I am a",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: teal,
                    ),
                  ),

                  SizedBox(height: 18),
                  
                  Obx(() => Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            selectedRole.value = "Student";
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 13),
                            decoration: BoxDecoration(
                              color: selectedRole.value == 
                                 "Student" ? teal : ivory,
                                 borderRadius: BorderRadius.circular(20),
                                 border: Border.all(color: teal),
                            ),
                             alignment: Alignment.center,
                             
                             child: Text(
                              "Student",
                              style: TextStyle(
                                fontSize: 12,
                                color: selectedRole.value == 
                                "Student" ? Colors.white : teal,
                              ),
                            ),
                          ),
                        ),
                      ),
                       SizedBox(width: 7),
                       
                       Expanded(
                        child: GestureDetector(
                          onTap: () {
                            selectedRole.value = "Faculty";
                          },
                          
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 13),
                            decoration: BoxDecoration(
                              color: selectedRole.value == 
                              "Faculty" ? teal : ivory,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: teal),
                            ),
                            alignment: Alignment.center,

                            child: Text(
                              "Faculty",
                              style: TextStyle(
                                fontSize: 12,
                                color: selectedRole.value == 
                                "Faculty" ? Colors.white : teal,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 7),
                      
                       Expanded(
                        child: GestureDetector(
                          onTap: () {
                            selectedRole.value = "Admin";
                          },
                          
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 13),
                            decoration: BoxDecoration(
                              color: selectedRole.value == 
                              "Admin" ? teal : ivory,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: teal),
                            ),
                            alignment: Alignment.center,

                            child: Text(
                              "Admin",
                              style: TextStyle(
                                fontSize: 12,
                                color: selectedRole.value == "Admin"
                                    ? Colors.white : teal,
                              ),
                            ),
                          ),
                        ),
                      ),
                       SizedBox(width: 7),
                       
                        Expanded(
                        child: GestureDetector(
                          onTap: () {
                            selectedRole.value = "Visitor";
                          },

                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 13),
                            decoration: BoxDecoration(
                              color: selectedRole.value == 
                              "Visitor" ? teal : ivory,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: teal),
                            ),
                            alignment: Alignment.center,

                            child: Text(
                              "Visitor",
                              style: TextStyle(
                                fontSize: 12,
                                color: selectedRole.value == 
                                "Visitor" ? Colors.white : teal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
                   SizedBox(height: 35),
                   Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: teal,
                    ),
                  ),

                  SizedBox(height: 12),

                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: teal,
                      ),
                       filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 18,
                      ),
                       border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: teal),
                      ),
                      
                       enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: Color(0xFFE5DFD9),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: teal,
                    ),
                  ),
                  SizedBox(height: 12),
                  
                  Obx(() => TextField(
                    controller: passwordController,
                    obscureText: obscure.value,
                    decoration: InputDecoration(
                     hintText: "Enter password",
                     prefixIcon: Icon(
                        Icons.lock_outline,
                        color: teal,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscure.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: teal,
                        ),

                        onPressed: () {
                          obscure.value = !obscure.value;
                        },
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 18,
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: teal),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: Color(0xFFE5DFD9),
                        ),
                      ),
                    ),
                  )),
                  SizedBox(height: 18),
                   Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Forgot Password Clicked"),
                          ),
                        );
                      },

                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: teal,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  
                   SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        if (emailController.text.trim() == 
                        "admin@gmail.com" && 
                        passwordController.text == "12345"){
                        Get.to(AdminDashboard());
                        } else {
                          Get.snackbar(
                            "Login Failed",
                            "Incorrect email or password",
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: rose,
                        foregroundColor: Colors.white,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),

                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  }
