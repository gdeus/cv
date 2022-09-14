import 'package:cv/models/job_experince.dart';
import 'package:cv/presenter/widgets/personal_xp.dart';
import 'package:flutter/material.dart';

Widget TimelinePersonalXP(){
  return Column(
    children: [
      PersonalXP(
        jobExperince: JobExperince(
          'Conta Estoque - Burger House', 
          'Desenvolvimento de aplicativo para contagem de estoque e automação de pedidos para uma hamburgueria', 
          ['Flutter', 'Firebase'], 
          'Desenvolvedor'
        ), 
      ),
      PersonalXP(
        jobExperince: JobExperince(
          'Farmácia de Plantão - São Miguel do Iguaçu - PR', 
          'Desenvolvimento de um aplicativo que mostrava a Farmácia de plantão em minha cidade, e suas informações. Publicação na Playstore.', 
          ['Flutter'], 
          'Desenvolvedor'
        ), 
      ),
      PersonalXP(
        jobExperince: JobExperince(
          'Frimesa Cooperativa Central - Medianeira - PR', 
          'Auxiliava consultores em produtos Oracle, com criação de dicionário de dados, manuais e diversos auxílios técnicos..', 
          ['Documentação', 'Levantamento de requisitos', 'Dicionários de dados'], 
          'Auxiliar'
        ), 
      ),
    ],
  );
}

