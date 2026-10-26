import 'package:flutter_test/flutter_test.dart';

abstract class Pessoa {
  late int _id;
  String nome;

  Pessoa(this.nome);

  int get id => _id;

  set id(int id) {
    if (id > 0) {
      _id = id;
    } else {
      throw ArgumentError('Identificador deve ser positivo.');
    }
  }
}

mixin Ano {
  late int _ano;

  int get ano => _ano;

  set ano(int ano) {
    if (ano > 0) {
      _ano = ano;
    } else {
      throw ArgumentError('Ano deve ser positivo.');
    }
  }
}

class Aluno extends Pessoa with Ano {
  Aluno(super.nome, int ano) {
    this.ano = ano;
  }
}

class Professor extends Pessoa {
  Professor(super.nome);
}

class Disciplina {
  String nome;

  Disciplina(this.nome);
}

class Turma with Ano {
  Disciplina disciplina;
  Professor professor;
  final List<Aluno> _alunos = [];

  Turma(this.disciplina, this.professor, int ano) {
    this.ano = ano;
  }

  void matricular(Aluno aluno) {
    if (aluno.ano == ano) {
      _alunos.add(aluno);
    } else {
      throw ArgumentError(
        'O ano do aluno deve ser igual ao da turma.',
      );
    }
  }
}

class Historico extends Turma {
  final Map<Aluno, List<double>> notas = {};

  Historico(super.disciplina, super.professor, super.ano);

  @override
  void matricular(Aluno aluno) {
    super.matricular(aluno);
    notas[aluno] = [];
  }

  double media(Aluno aluno) {
    final notasAluno = notas[aluno] ?? [];

    if (notasAluno.isEmpty) {
      return 0.0;
    }

    final soma = notasAluno.reduce((a, b) => a + b);
    return soma / notasAluno.length;
  }
}

void main() {
  group('Métodos comuns para Orientação a Objetos', () {
    late Professor professor;
    late Disciplina disciplina;
    late Historico historico;

    setUp(() {
      professor = Professor('Carlos');
      professor.id = 10;

      disciplina = Disciplina('Flutter');
      historico = Historico(disciplina, professor, 2023);
    });

    test('Criar professor e associá-lo à turma', () {
      expect(historico.professor.nome, 'Carlos');
      expect(historico.professor.id, 10);
      expect(historico.disciplina.nome, 'Flutter');
      expect(historico.ano, 2023);
    });

    test('Matricular aluno e calcular média sem notas', () {
      final aluno = Aluno('Maria', 2023);
      aluno.id = 1;

      historico.matricular(aluno);

      expect(historico.media(aluno), 0.0);
    });

    test('Calcular média das notas do aluno', () {
      final aluno = Aluno('Maria', 2023);
      aluno.id = 1;

      historico.matricular(aluno);
      historico.notas[aluno] = [8.0, 10.0];

      expect(historico.media(aluno), 9.0);
    });

    test('Rejeitar identificador inválido', () {
      final aluno = Aluno('Paula', 2023);

      expect(() => aluno.id = 0, throwsArgumentError);
    });

    test('Rejeitar matrícula de aluno de outro ano', () {
      final aluno = Aluno('Paula', 2022);

      expect(
        () => historico.matricular(aluno),
        throwsArgumentError,
      );
    });
  });
}
