// 1) Observe o trecho de código:

// int INDICE = 12, SOMA = 0, K = 1;

// enquanto K < INDICE faça

// { K = K + 1; SOMA = SOMA + K;}

// imprimir(SOMA);

// Ao final do processamento, qual será o valor da variável SOMA?

void main (){
  int indice = 12;
  int soma = 0;
  int k = 0;

  while(k < indice){
    k++;
    soma += k;
  }
   print(soma);
}
