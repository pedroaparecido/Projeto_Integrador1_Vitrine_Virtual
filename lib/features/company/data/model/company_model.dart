import 'dart:convert';

import 'package:vitrine_virtual/features/company/domain/entities/company_entity.dart';

class CompanyModel extends CompanyEntity {
  CompanyModel({
    super.id,
    required super.razaoSocial,
    required super.nomeFantasia,
    required super.cnpj,
    required super.rua,
    required super.numero,
    required super.cidade,
    required super.cep,
    required super.bairro,
    required super.telefone,
    required super.email,
    required super.facebook,
    required super.instagram,
    required super.whatsapp,
    required super.missao,
    required super.visao,
    required super.valores,
    required super.senhaDeAcesso,
  });

  factory CompanyModel.fromMap(Map<String, dynamic> map) {
    return CompanyModel(
      id: map['id']?.toInt(),
      razaoSocial: map['nome_fantasia'] ?? '',
      nomeFantasia: map['razao_social'] ?? '',
      cnpj: map['cnpj'] ?? '',
      rua: map['rua'] ?? '',
      numero: map['numero'] ?? '',
      cidade: map['cidade'] ?? '',
      cep: map['cep'] ?? '',
      bairro: map['bairro'] ?? '',
      telefone: map['telefone'] ?? '',
      email: map['email'] ?? '',
      facebook: map['facebook'] ?? '',
      instagram: map['instagram'] ?? '',
      whatsapp: map['whatsapp'] ?? '',
      missao: map['missao'] ?? '',
      visao: map['visao'] ?? '',
      valores: map['valores'] ?? '',
      senhaDeAcesso: map['senha_acesso'] ?? '',
    );
  }

  factory CompanyModel.fromJson(String source) => CompanyModel.fromMap(json.decode(source));
}
