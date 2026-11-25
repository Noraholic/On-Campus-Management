import 'package:material_ui/material_ui.dart';
import 'package:get/get.dart';
import 'package:oncampus_system/screens/admins/admin_screens/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String selectedRole = 'Admin';

  String correctEmail = 'admin@gmail.com';
  String correctPassword = '123456';

  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [

              // LEFT PANEL

              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/collegePic.JPG'),
                      fit: BoxFit.cover,
                    ),
                  ),

                  child: Container(
                    padding: EdgeInsets.all(35),
                     //padding: EdgeInsets.fromLTRB(25, 25, 25, 24),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff42213F).withValues(alpha: 0.65),
                          Color(0xff42213F).withValues(alpha: 0.45),
                        ],
                      ),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Container(
                          height: 55,
                          width: 55,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),

                          child: Center(
                            child: Text(
                              'N',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff42213F),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 12),

                        Text(
                          'NEXOR',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          'SMART CAMPUS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            letterSpacing: 3,
                          ),
                        ),

                        SizedBox(height: 100),

                        Icon(
                          Icons.format_quote,
                          color: Colors.white,
                          size: 45,
                        ),

                        SizedBox(height: 15),

                        Text(
                          'A caring campus, beautifully connected.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 15),

                        Text(
                          'Bringing students, teachers and campus services together in one secure and connected space.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),

                        SizedBox(height: 35),

                        Row(
                          children: [

                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Text(
                                'EM',
                                style: TextStyle(
                                  color: Color(0xff42213F),
                                ),
                              ),
                            ),

                            SizedBox(width: 10),

                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Text(
                                'DK',
                                style: TextStyle(
                                  color: Color(0xff42213F),
                                ),
                              ),
                            ),

                            SizedBox(width: 10),

                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Text(
                                'SR',
                                style: TextStyle(
                                  color: Color(0xff42213F),
                                ),
                              ),
                            ),

                            SizedBox(width: 15),

                            Expanded(
                              child: Text(
                                'Designed for every learner and educator',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),

                          ],
                        ),

                        SizedBox(height: 15),

                        Text(
                          'Secure • Private • Always available',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),

                        SizedBox(height: 70),

                        Text(
                          'Government Graduate College for Women • Campus Network',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),

              // RIGHT PANEL

              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(25),
                   //padding: EdgeInsets.fromLTRB(25, 25, 25, 24),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    
                      children: [
                    
                        Center(
                          child: Text(
                            'SMART CAMPUS',
                            style: TextStyle(
                              color: Color(0xff42213F),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    
                        SizedBox(height: 10),
                    
                        Center(
                          child: Text(
                            'SECURE CAMPUS ACCESS',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 11,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                    
                        SizedBox(height: 35),
                    
                        Text(
                          'Welcome back!',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    
                        SizedBox(height: 10),
                    
                        Text(
                          'Please enter your details to access your campus account.',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 13,
                          ),
                        ),
                    
                        SizedBox(height: 30),
                    
                        Text(
                          'Email Address',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    
                        SizedBox(height: 10),
                    
                        TextField(
                          controller: emailController,
                    
                          decoration: InputDecoration(
                            hintText: 'Enter your email address',
                            prefixIcon: Icon(Icons.email_outlined),
                    
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                    
                        SizedBox(height: 20),
                    
                        Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
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
                              onPressed: () {
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },
                    
                              icon: Icon(
                                showPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                    
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                    
                        SizedBox(height: 20),
                    
                        Text(
                          'Access Role',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    
                        SizedBox(height: 10),
                    
                        DropdownButtonFormField<String>(
                          initialValue: selectedRole,
                    
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person_outline),
                    
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                    
                          items: [
                            DropdownMenuItem(
                              value: 'Admin',
                              child: Text('Admin'),
                            ),
                    
                            DropdownMenuItem(
                              value: 'Faculty',
                              child: Text('Faculty'),
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
                    
                          child: TextButton(
                            onPressed: () {
                              Get.snackbar(
                                'Forgot Password',
                                'Please contact campus IT for assistance.',
                              );
                            },
                    
                            child: Text('Forgot password?'),
                          ),
                        ),
                    
                        SizedBox(height: 15),
                    
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                    
                          child: ElevatedButton(
                            onPressed: () {
                    
                              if (emailController.text == correctEmail &&
                                  passwordController.text == correctPassword &&
                                  selectedRole == 'Admin') {
                    
                                Get.to(() => AdminDashboard());
                    
                              } else {
                    
                                Get.snackbar(
                                  'Login Failed',
                                  'Invalid email or password.',
                                );
                              }
                            },
                    
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff42213F),
                              foregroundColor: Colors.white,
                    
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                    
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                    
                        SizedBox(height: 20),
                    
                        Container(
                          padding: EdgeInsets.all(15),
                    
                          decoration: BoxDecoration(
                            color: Color(0xffF5F2F5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                    
                          child: Row(
                            children: [
                    
                              Icon(
                                Icons.wifi,
                                color: Colors.green,
                              ),
                    
                              SizedBox(width: 10),
                    
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                    
                                  children: [
                    
                                    Text(
                                      'Campus LAN Connected',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                    
                                    SizedBox(height: 5),
                    
                                    Text(
                                      'You are connected to the campus network.',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                    
                                  ],
                                ),
                              ),
                    
                            ],
                          ),
                        ),
                    
                        SizedBox(height: 25),
                    
                        Center(
                          child: Text(
                            '\u24D8 Need help? Contact campus IT at extension 2200',
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
              ),

            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:material_ui/material_ui.dart';
// import 'package:get/get.dart';
// import 'package:oncampus_system/screens/admins/admin_screens/dashboard.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {

//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   String selectedRole = 'Admin';

//   String correctEmail = 'admin@gmail.com';
//   String correctPassword = '123456';

//   bool showPassword = true;

//   @override
//   Widget build(BuildContext context) {

//     if (MediaQuery.of(context).size.width >= 800) {

//       return Scaffold(
//         backgroundColor: Colors.white,

//         body: SingleChildScrollView(
//           child: IntrinsicHeight(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,

//               children: [

//                 Expanded(
//                   flex: 5,
//                   child: Container(
//                     width: double.infinity,

//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage('assets/campus.jpg'),
//                         fit: BoxFit.cover,
//                       ),
//                     ),

//                     child: Container(
//                       padding: EdgeInsets.all(35),

//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                           colors: [
//                             Color(0xff42213F).withValues(alpha: 0.65),
//                             Color(0xff42213F).withValues(alpha: 0.45),
//                           ],
//                         ),
//                       ),

//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,

//                         children: [

//                           Container(
//                             height: 55,
//                             width: 55,

//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(12),
//                             ),

//                             child: Center(
//                               child: Text(
//                                 'N',
//                                 style: TextStyle(
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color(0xff42213F),
//                                 ),
//                               ),
//                             ),
//                           ),

//                           SizedBox(height: 12),

//                           Text(
//                             'NEXOR',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),

//                           Text(
//                             'SMART CAMPUS',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 11,
//                               letterSpacing: 3,
//                             ),
//                           ),

//                           SizedBox(height: 100),

//                           Icon(
//                             Icons.format_quote,
//                             color: Colors.white,
//                             size: 45,
//                           ),

//                           SizedBox(height: 15),

//                           Text(
//                             'A caring campus, beautifully connected.',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 30,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),

//                           SizedBox(height: 15),

//                           Text(
//                             'Bringing students, teachers and campus services together in one secure and connected space.',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 14,
//                             ),
//                           ),

//                           SizedBox(height: 35),

//                           Row(
//                             children: [

//                               CircleAvatar(
//                                 backgroundColor: Colors.white,
//                                 child: Text(
//                                   'EM',
//                                   style: TextStyle(
//                                     color: Color(0xff42213F),
//                                   ),
//                                 ),
//                               ),

//                               SizedBox(width: 10),

//                               CircleAvatar(
//                                 backgroundColor: Colors.white,
//                                 child: Text(
//                                   'DK',
//                                   style: TextStyle(
//                                     color: Color(0xff42213F),
//                                   ),
//                                 ),
//                               ),

//                               SizedBox(width: 10),

//                               CircleAvatar(
//                                 backgroundColor: Colors.white,
//                                 child: Text(
//                                   'SR',
//                                   style: TextStyle(
//                                     color: Color(0xff42213F),
//                                   ),
//                                 ),
//                               ),

//                               SizedBox(width: 15),

//                               Expanded(
//                                 child: Text(
//                                   'Designed for every learner and educator',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 12,
//                                   ),
//                                 ),
//                               ),

//                             ],
//                           ),

//                           SizedBox(height: 15),

//                           Text(
//                             'Secure • Private • Always available',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 12,
//                             ),
//                           ),

//                           SizedBox(height: 70),

//                           Text(
//                             'Government Graduate College for Women • Campus Network',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 11,
//                             ),
//                           ),

//                         ],
//                       ),
//                     ),
//                   ),
//                 ),

//                 Expanded(
//                   flex: 5,
//                   child: Padding(
//                     padding: EdgeInsets.fromLTRB(25, 25, 25, 24),

//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,

//                       children: [

//                         Center(
//                           child: Text(
//                             'SMART CAMPUS',
//                             style: TextStyle(
//                               color: Color(0xff42213F),
//                               fontSize: 22,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),

//                         SizedBox(height: 10),

//                         Center(
//                           child: Text(
//                             'SECURE CAMPUS ACCESS',
//                             style: TextStyle(
//                               color: Colors.blueGrey,
//                               fontSize: 11,
//                               letterSpacing: 2,
//                             ),
//                           ),
//                         ),

//                         SizedBox(height: 35),

//                         Text(
//                           'Welcome back!',
//                           style: TextStyle(
//                             fontSize: 28,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),

//                         SizedBox(height: 10),

//                         Text(
//                           'Please enter your details to access your campus account.',
//                           style: TextStyle(
//                             color: Colors.blueGrey,
//                             fontSize: 13,
//                           ),
//                         ),

//                         SizedBox(height: 30),

//                         Text(
//                           'Email Address',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),

//                         SizedBox(height: 10),

//                         TextField(
//                           controller: emailController,

//                           decoration: InputDecoration(
//                             hintText: 'Enter your email address',
//                             prefixIcon: Icon(Icons.email_outlined),

//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                           ),
//                         ),

//                         SizedBox(height: 20),

//                         Text(
//                           'Password',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),

//                         SizedBox(height: 10),

//                         TextField(
//                           controller: passwordController,
//                           obscureText: showPassword,

//                           decoration: InputDecoration(
//                             hintText: 'Enter your password',
//                             prefixIcon: Icon(Icons.lock_outline),

//                             suffixIcon: IconButton(
//                               onPressed: () {
//                                 setState(() {
//                                   showPassword = !showPassword;
//                                 });
//                               },

//                               icon: Icon(
//                                 showPassword
//                                     ? Icons.visibility_off
//                                     : Icons.visibility,
//                               ),
//                             ),

//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                           ),
//                         ),

//                         SizedBox(height: 20),

//                         Text(
//                           'Access Role',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),

//                         SizedBox(height: 10),

//                         DropdownButtonFormField<String>(
//                           initialValue: selectedRole,

//                           decoration: InputDecoration(
//                             prefixIcon: Icon(Icons.person_outline),

//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                           ),

//                           items: [
//                             DropdownMenuItem(
//                               value: 'Admin',
//                               child: Text('Admin'),
//                             ),

//                             DropdownMenuItem(
//                               value: 'Faculty',
//                               child: Text('Faculty'),
//                             ),

//                             DropdownMenuItem(
//                               value: 'Student',
//                               child: Text('Student'),
//                             ),

//                             DropdownMenuItem(
//                               value: 'Visitor',
//                               child: Text('Visitor'),
//                             ),
//                           ],

//                           onChanged: (value) {
//                             setState(() {
//                               selectedRole = value!;
//                             });
//                           },
//                         ),

//                         SizedBox(height: 15),

//                         Align(
//                           alignment: Alignment.centerRight,

//                           child: TextButton(
//                             onPressed: () {
//                               Get.snackbar(
//                                 'Forgot Password',
//                                 'Please contact campus IT for assistance.',
//                               );
//                             },

//                             child: Text('Forgot password?'),
//                           ),
//                         ),

//                         SizedBox(height: 15),

//                         SizedBox(
//                           width: double.infinity,
//                           height: 48,

//                           child: ElevatedButton(
//                             onPressed: () {

//                               if (emailController.text == correctEmail &&
//                                   passwordController.text == correctPassword &&
//                                   selectedRole == 'Admin') {

//                                 Get.to(() => AdminDashboard());

//                               } else {

//                                 Get.snackbar(
//                                   'Login Failed',
//                                   'Invalid email or password.',
//                                 );
//                               }
//                             },

//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Color(0xff42213F),
//                               foregroundColor: Colors.white,

//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                             ),

//                             child: Text(
//                               'Login',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),

//                         SizedBox(height: 20),

//                         Container(
//                           padding: EdgeInsets.all(15),

//                           decoration: BoxDecoration(
//                             color: Color(0xffF5F2F5),
//                             borderRadius: BorderRadius.circular(8),
//                           ),

//                           child: Row(
//                             children: [

//                               Icon(
//                                 Icons.wifi,
//                                 color: Colors.green,
//                               ),

//                               SizedBox(width: 10),

//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,

//                                   children: [

//                                     Text(
//                                       'Campus LAN Connected',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),

//                                     SizedBox(height: 5),

//                                     Text(
//                                       'You are connected to the campus network.',
//                                       style: TextStyle(
//                                         fontSize: 11,
//                                         color: Colors.blueGrey,
//                                       ),
//                                     ),

//                                   ],
//                                 ),
//                               ),

//                             ],
//                           ),
//                         ),

//                         SizedBox(height: 25),

//                         Center(
//                           child: Text(
//                             '\u24D8 Need help? Contact campus IT at extension 2200',
//                             style: TextStyle(
//                               color: Colors.blueGrey,
//                               fontSize: 11,
//                             ),
//                           ),
//                         ),

//                       ],
//                     ),
//                   ),
//                 ),

//               ],
//             ),
//           ),
//         ),
//       );

//     } else {

//       return Scaffold(
//         backgroundColor: Colors.white,

//         body: SingleChildScrollView(
//           child: Padding(
//             //padding: EdgeInsets.all(20),
//               padding: EdgeInsets.fromLTRB(25, 24, 25, 23),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,

//               children: [

//                 Center(
//                   child: Text(
//                     'SMART CAMPUS',
//                     style: TextStyle(
//                       color: Color(0xff42213F),
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 10),

//                 Center(
//                   child: Text(
//                     'SECURE CAMPUS ACCESS',
//                     style: TextStyle(
//                       color: Colors.blueGrey,
//                       fontSize: 11,
//                       letterSpacing: 2,
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 35),

//                 Text(
//                   'Welcome back!',
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),

//                 SizedBox(height: 10),

//                 Text(
//                   'Please enter your details to access your campus account.',
//                   style: TextStyle(
//                     color: Colors.blueGrey,
//                     fontSize: 13,
//                   ),
//                 ),

//                 SizedBox(height: 30),

//                 Text(
//                   'Email Address',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),

//                 SizedBox(height: 10),

//                 TextField(
//                   controller: emailController,

//                   decoration: InputDecoration(
//                     hintText: 'Enter your email address',
//                     prefixIcon: Icon(Icons.email_outlined),

//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 20),

//                 Text(
//                   'Password',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),

//                 SizedBox(height: 10),

//                 TextField(
//                   controller: passwordController,
//                   obscureText: showPassword,

//                   decoration: InputDecoration(
//                     hintText: 'Enter your password',
//                     prefixIcon: Icon(Icons.lock_outline),

//                     suffixIcon: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           showPassword = !showPassword;
//                         });
//                       },

//                       icon: Icon(
//                         showPassword
//                             ? Icons.visibility_off
//                             : Icons.visibility,
//                       ),
//                     ),

//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 20),

//                 Text(
//                   'Access Role',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),

//                 SizedBox(height: 10),

//                 DropdownButtonFormField<String>(
//                   initialValue: selectedRole,

//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.person_outline),

//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),

//                   items: [
//                     DropdownMenuItem(
//                       value: 'Admin',
//                       child: Text('Admin'),
//                     ),

//                     DropdownMenuItem(
//                       value: 'Faculty',
//                       child: Text('Faculty'),
//                     ),

//                     DropdownMenuItem(
//                       value: 'Student',
//                       child: Text('Student'),
//                     ),

//                     DropdownMenuItem(
//                       value: 'Visitor',
//                       child: Text('Visitor'),
//                     ),
//                   ],

//                   onChanged: (value) {
//                     setState(() {
//                       selectedRole = value!;
//                     });
//                   },
//                 ),

//                 SizedBox(height: 15),

//                 Align(
//                   alignment: Alignment.centerRight,

//                   child: TextButton(
//                     onPressed: () {
//                       Get.snackbar(
//                         'Forgot Password',
//                         'Please contact campus IT for assistance.',
//                       );
//                     },

//                     child: Text('Forgot password?'),
//                   ),
//                 ),

//                 SizedBox(height: 15),

//                 SizedBox(
//                   width: double.infinity,
//                   height: 48,

//                   child: ElevatedButton(
//                     onPressed: () {

//                       if (emailController.text == correctEmail &&
//                           passwordController.text == correctPassword &&
//                           selectedRole == 'Admin') {

//                         Get.to(() => AdminDashboard());

//                       } else {

//                         Get.snackbar(
//                           'Login Failed',
//                           'Invalid email or password.',
//                         );
//                       }
//                     },

//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Color(0xff42213F),
//                       foregroundColor: Colors.white,

//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),

//                     child: Text(
//                       'Login',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 20),

//                 Container(
//                   padding: EdgeInsets.all(15),

//                   decoration: BoxDecoration(
//                     color: Color(0xffF5F2F5),
//                     borderRadius: BorderRadius.circular(8),
//                   ),

//                   child: Row(
//                     children: [

//                       Icon(
//                         Icons.wifi,
//                         color: Colors.green,
//                       ),

//                       SizedBox(width: 10),

//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,

//                           children: [

//                             Text(
//                               'Campus LAN Connected',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),

//                             SizedBox(height: 5),

//                             Text(
//                               'You are connected to the campus network.',
//                               style: TextStyle(
//                                 fontSize: 11,
//                                 color: Colors.blueGrey,
//                               ),
//                             ),

//                           ],
//                         ),
//                       ),

//                     ],
//                   ),
//                 ),

//                 SizedBox(height: 25),

//                 Center(
//                   child: Text(
//                     '\u24D8 Need help? Contact campus IT at extension 2200',
//                     style: TextStyle(
//                       color: Colors.blueGrey,
//                       fontSize: 11,
//                     ),
//                   ),
//                 ),
//                 ],
//             ),
//           ),
//         ),
//       );

//     }
//   }
// }
