import 'package:material_ui/material_ui.dart';
import 'package:get/get.dart';
import 'package:oncampus_system/screens/admins/admin_screens/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String selectedRole = 'Admin';
  final String correctEmail = 'admin@gmail.com';
  final String correctPassword = '123456'; 

  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'SMART CAMPUS',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color:  Color(0xff42213F),
                  ),
                ),
              ),
              SizedBox(height: 50),
          
              Text(
                'SECURE CAMPUS ACCESS',
                style: TextStyle(
                  color:  Color(0xff42213F),
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
          
              SizedBox(height: 20),
          
              Text(
                'Welcome back',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
          
              Text(
                'Sign in to continue to your current Campus role workspace.',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 14,
                ),
              ),
               SizedBox(height: 35),
               
               Text(
                'Email address',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                  ),
              ),
              SizedBox(height: 10),
          
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 20),
              
              Text(
                'Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                  ),
              ),
               SizedBox(height: 10),
          
              TextField(
                controller: passwordController,
                obscureText: showPassword,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                      icon: Icon(
                        showPassword ? 
                        Icons.visibility_off
                        : Icons.visibility,
                       ),
                       onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                       },
                      ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 20),

             Text(
                'Access role',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
             SizedBox(height: 10),

              DropdownButtonFormField<String>(
                initialValue: selectedRole,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.security_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                items: [
                  DropdownMenuItem(
                    value: 'Faculty',
                    child: Text('Faculty'),
                  ),

                  DropdownMenuItem(
                    value: 'Admin',
                    child: Text('Admin'),
                  ),

                  DropdownMenuItem(
                    value: 'Student',
                    child: Text('Student'),
                  ),

                  DropdownMenuItem(
                    value: 'Visitor',
                    child: Text('Visitor'),
                  ),
                 ],
                    onChanged: (value) {
                    setState(() {
                      selectedRole = value!;
                    });
                  },
              ),
              SizedBox(height: 15),
              
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Get.snackbar(
                      'Forgot Password',
                      'Contact campus IT manager',
                    );
                  },
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Color(0xff42213F),
                      fontWeight: FontWeight.bold,
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
                    if (emailController.text == correctEmail &&
                          passwordController.text == correctPassword) {
                             Get.to(() => AdminDashboard(
                          // name: 'College Admin',
                          // email: emailController.text,
                        ));
                        } 
                        else {
                          Get.snackbar(
                          'Login Failed',
                          'Invalid Email or Password',
                          );
                      }
                     },
                    
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff42213F),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                     ),
          
                      child: Text(
                       'Sign in to workspace  →',
                       style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                 decoration: BoxDecoration(
                  color: Color(0xffEFF8F5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Text(
                      '● Campus LAN connected',
                      style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
          
                    Text(
                      'Your credentials are verified locally and never leave the network.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 12,
                      ),
                    ),
          
                  ],
                ),
              ),
              SizedBox(height: 35),
          
              Center(
                child: Text(
                  'ⓘ Need help? Contact campus IT at extension 2200',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 11,
                  ),
                ),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}