import 'package:cv/models/job_experince.dart';
import 'package:cv/presenter/widgets/education_info.dart';
import 'package:cv/presenter/widgets/timeline_item.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import 'job.dart';

Widget TimelineJobs(){
  return Column(
    children: [
      TimelineItem(
        dateInit: '07/2014', 
        dateFinish: '06/2015', 
        jobExperince: JobExperince(
          'Frimesa Cooperativa Central - Medianeira - PR', 
          'Principais atividades: Atendimento aos usuários dos sistemas Frimesa, colaboradores internos, vendedores externos e fornecedores.', 
          ['Documentação', 'Criação de UMLs', 'Suporte ao usuário'], 
          'Estagiário - Suporte Técnico'
        ), 
        last: false
      ),
      TimelineItem(
        dateInit: '07/2015', 
        dateFinish: '07/2016', 
        jobExperince: JobExperince(
          'Frimesa Cooperativa Central - Medianeira - PR', 
          'Desenvolvimento de sistemas utilizando tecnologias Oracle, como, Oracle EBS, Oracle Forms e rotinas PL/SQL.', 
          ['PL/SQL', 'Oracle Forms', 'Oracle Reports', 'HTML/CSS'], 
          'Estagiário - Desenvolvimento de Sistemas'
        ), 
        last: false
      ),
      TimelineItem(
        dateInit: '07/2016', 
        dateFinish: '07/2017', 
        jobExperince: JobExperince(
          'Frimesa Cooperativa Central - Medianeira - PR', 
          'Auxiliava consultores em produtos Oracle, com criação de dicionário de dados, manuais e diversos auxílios técnicos..', 
          ['Documentação', 'Levantamento de requisitos', 'Dicionários de dados'], 
          'Auxiliar'
        ), 
        last: false
      ),
      TimelineItem(
        dateInit: '07/2016', 
        dateFinish: '07/2017', 
        jobExperince: JobExperince(
          'Mineweb - Medianeira - PR', 
          'Aulas de lógica de programação, criação de websites e robótica para crianças e adolescentes de 4 a 15 anos. Desenvolvimento de sistemas internos como chamada cadastro de turmas, e um Banco para estudantes.', 
          ['HTML', 'CSS', 'JS', 'PHP'], 
          'Professor e Desenvolvedor'
        ), 
        last: false
      ),
      TimelineItem(
        dateInit: '04/2019', 
        dateFinish: '06/2020', 
        jobExperince: JobExperince(
          'Wealth Systems - Medianeira - PR', 
          'Desenvolvedor mobile e Web - React Native e ReactJS. Principais atividades: Desenvolvimento de aplicações móveis e Webs para uso interno na empresa e clientes.', 
          ['ReactJS', 'React Native', 'MobX', 'React Hooks', 'CSS', 'HTML', 'JavaScript', 'TypeScript', 'Apollo Federation', 'GraphQL', 'Flutter'], 
          'Desenvolvedor Mobile e Web'
        ), 
        last: false
      ),
      TimelineItem(
        dateInit: '06/2020', 
        dateFinish: '05/2021', 
        jobExperince: JobExperince(
          'People Club - Home Office', 
          'Desenvolvimento de aplicativos móveis e plataformas Web focadas em clube de benefícios para colaboradores, também dando manutenção em aplicações já feitas em IONIC e React JS, utilizando querys, mutations e fragments de GraphQL, Apollo Client em geral.', 
          ['ReactJS', 'React Native', 'MobX', 'React Hooks', 'CSS', 'HTML', 'JavaScript', 'TypeScript', 'Ionic', 'Angular', 'GraphQL (querys, mutations, fragments e Apollo Client)', 'Flutter'], 
          'Desenvolvedor Mobile e Web'
        ), 
        last: false
      ),
      TimelineItem(
        dateInit: '06/2021', 
        dateFinish: 'Atualmente', 
        jobExperince: JobExperince(
          'People Club - Home Office', 
          'Desenvolvimento de aplicativos móveis e plataformas Web focadas em clube de benefícios para colaboradores, também dando manutenção em aplicações já feitas em IONIC e React JS, utilizando querys, mutations e fragments de GraphQL, Apollo Client em geral.', 
          ['ReactJS', 'React Native', 'MobX', 'React Hooks', 'CSS', 'HTML', 'JavaScript', 'TypeScript', 'Ionic', 'Angular', 'GraphQL (querys, mutations, fragments e Apollo Client)', 'Flutter'], 
          'Desenvolvedor mobile - Flutter'
        ), 
        last: true
      ),
    ],
  );
}

