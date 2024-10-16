// 3) Dado um vetor que guarda o valor de faturamento diário de uma distribuidora de todos os dias de um ano, faça um programa, na linguagem que desejar, que calcule e retorne:

// - O menor valor de faturamento ocorrido em um dia do ano;
// - O maior valor de faturamento ocorrido em um dia do ano;
// - Número de dias no ano em que o valor de faturamento diário foi superior à média anual.

// a) Considerar o vetor já carregado com as informações de valor de faturamento.

// b) Podem existir dias sem faturamento, como nos finais de semana e feriados. Estes dias devem ser ignorados no cálculo da média.

// c) Utilize o algoritmo mais veloz que puder definir.

void main(List<String> args){

  final faturamentoAnual = <Map<String,dynamic>> [
    {'diaDoAno': 1, 'valorFaturamento':100.0, 'comFaturamento':true},
    {'diaDoAno': 2, 'valorFaturamento':120.0, 'comFaturamento':true},
    {'diaDoAno': 3, 'valorFaturamento':130.0, 'comFaturamento':true},
    {'diaDoAno': 4, 'valorFaturamento':140.0, 'comFaturamento':true},
    {'diaDoAno': 5, 'valorFaturamento':150.0, 'comFaturamento':true},
    {'diaDoAno': 6, 'valorFaturamento':160.0, 'comFaturamento':true},
    {'diaDoAno': 7, 'valorFaturamento':0.0, 'comFaturamento': false},
  ];

  
  resolucao(){
    double menorFaturamentoAnual = double.infinity;
    double maiorFaturamentoAnual = double.negativeInfinity;
    double mediaFaturamentoAnual = 0.0;
    double somaFaturamentoAnual = 0.0;
    int diasComFaturamento = 0;
    int acimaDaMedia = 0;

    for (var diaDoAno  in faturamentoAnual) {
    if( diaDoAno['comFaturamento']) { 
      somaFaturamentoAnual += diaDoAno['valorFaturamento'];
      diasComFaturamento++;
      diaDoAno['valorFaturamento'] > maiorFaturamentoAnual ? maiorFaturamentoAnual = diaDoAno['valorFaturamento'] : null;
      diaDoAno['valorFaturamento'] < menorFaturamentoAnual ? diaDoAno['valorFaturamento'] : null;
    }
  }
    mediaFaturamentoAnual = somaFaturamentoAnual / diasComFaturamento;
    for (var diaDoAno in faturamentoAnual) {
      diaDoAno['valorFaturamento'] >= mediaFaturamentoAnual ? acimaDaMedia++ : null;
    }
    
    print('Dados do faturamento anual: ');
    print('Maior faturamento anual: $maiorFaturamentoAnual');
    print('Menor faturamento anual: $menorFaturamentoAnual');
    print('Média faturamento anual: $mediaFaturamentoAnual');
    print('Números de dias que o faturamentos foi acima da média: $acimaDaMedia');
  }
  resolucao();
}