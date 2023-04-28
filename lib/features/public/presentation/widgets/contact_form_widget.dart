import 'package:flutter/material.dart';

class ContactFormWidget extends StatelessWidget {
  const ContactFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            children: [
              SizedBox(
                width: 800,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 50, right: 50),
                  child: Form(
                    child: Column(
                      children: [
                        const Text(" FALE CONOSCO ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                              " Disponibilizamos nossos canais de atendimento para que você possa enviar elogios, reclamações, dúvidas."),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 6,
                              child: TextFormField(
                                strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                decoration: const InputDecoration(
                                  labelText: 'Nome',
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: TextFormField(
                                strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                decoration: const InputDecoration(
                                  labelText: 'Telefone',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 6,
                              child: TextFormField(
                                strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                decoration: const InputDecoration(
                                  labelText: 'E-mail',
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: TextFormField(
                                strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                                decoration: const InputDecoration(
                                  labelText: 'Assunto', //inserir barra de rolagem com opções
                                ),
                              ),
                            ),
                          ],
                        ),
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 3,
                          strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                          decoration: const InputDecoration(
                            labelText: 'Digite sua mensagem:',
                          ),
                        ),
                        const SizedBox(height: 25),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                          onPressed: () {},
                          child: const Text(
                            'ENVIAR MENSAGEM',
                            style: TextStyle(color: Colors.black),
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
      ],
    );
  }
}
