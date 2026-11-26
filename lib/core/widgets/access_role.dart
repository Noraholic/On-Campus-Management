import 'package:material_ui/material_ui.dart';
class AccessRole extends StatefulWidget {
   const new({
    super.key,
  });

  @override
  State<AccessRole> createState() => _AccessRoleState();
}

class _AccessRoleState extends State<AccessRole> {
  String selectedRole = 'Admin';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Access Role',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
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
      ],
    );
  }
}