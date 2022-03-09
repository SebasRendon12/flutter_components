import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'user_name': 'serendona',
      'name': 'Sebastian Rendon Arteaga',
      'email': 'serendona@unal.edu.co',
      'celular': '3147427098',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Usuario',
                  hintText: 'Nombre de usuario',
                  formProperty: 'user_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Nombre Completo',
                  hintText: 'Nombre del usuario',
                  formProperty: 'name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo electronico',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Celular',
                  hintText: 'Número del celular',
                  keyboardType: TextInputType.number,
                  formProperty: 'celular',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Contraseña',
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(
                      child: Text('Admin'),
                      value: 'Admin',
                    ),
                    DropdownMenuItem(
                      child: Text('Superuser'),
                      value: 'Superuser',
                    ),
                    DropdownMenuItem(
                      child: Text('Developer'),
                      value: 'Developer',
                    ),
                    DropdownMenuItem(
                      child: Text('Jr. Developer'),
                      value: 'Jr. Developer',
                    ),
                  ],
                  value: 'Admin',
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    //Minimizar teclado
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      print('Form no valid');
                      return;
                    }

                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
