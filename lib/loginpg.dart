import 'package:Bakery_app/homepage.dart';
import 'package:Bakery_app/provider/Filterlogic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Loginpg extends StatefulWidget {
  const Loginpg({super.key});

  @override
  State<Loginpg> createState() => _LoginpgState();
}

class _LoginpgState extends State<Loginpg> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      context.read<LoginProvider>().reset();
    });
  }
  // @override
  // void delay() {
  //   // TODO: implement ==
  //    context.read()<LoginProvider>.
  // }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider1 = context.read<LoginProvider>();
    final provider2 = context.watch<LoginProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome to Bakery App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color(0Xff92A3FD),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: Color(0Xff92A3FD)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 50, 40, 150),
                  child: Container(
                    height: 600,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0xffC58BF2).withOpacity(1),
                      borderRadius: BorderRadius.circular(20),
                      border: BoxBorder.all(
                        style: BorderStyle.solid,
                        width: 1.5,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsGeometry.fromLTRB(20, 200, 20, 100),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Welcome ${provider2.user}',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 5),

                          TextField(
                            // onChanged: (value) {
                            //   provider1.Login(value);
                            // },
                            controller: controller,
                            decoration: InputDecoration(
                              hintText: 'Enter Your Name',
                              labelText: 'Login',
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  width: 1.5,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  width: 1.5,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () async {
                              bool success = provider1.Login(controller.text);
                              if (!success) {
                                return;
                              }
                              await provider1.delay();

                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Proj1(),
                                ),
                              );
                            },
                            child: provider1.isLoading
                                ? SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      strokeAlign: 2.0,
                                      strokeWidth: 2,
                                      color: Colors.black,
                                    ),
                                  )
                                : Text('Login'),
                          ),
                          SizedBox(height: 95),
                          Text(provider2.msg, style: TextStyle(fontSize: 20)),
                        ],
                      ),
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
