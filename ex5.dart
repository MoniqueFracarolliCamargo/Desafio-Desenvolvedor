// 5) Dois veículos, um carro e um caminhão, saem respectivamente de cidades opostas pela mesma rodovia. O carro, de Ribeirão Preto em direção a Barretos, a uma velocidade constante de 90 km/h, e o caminhão, de Barretos em direção a Ribeirão Preto, a uma velocidade constante de 80 km/h. Quando eles se cruzarem no percurso, qual estará mais próximo da cidade de Ribeirão Preto?

// a) Considerar a distância de 125km entre a cidade de Ribeirão Preto <-> Barretos.
// b) Considerar 3 pedágios como obstáculo e que o carro leva 5 minutos a mais para passar em cada um deles, pois ele não possui dispositivo de cobrança de pedágio.
// c)Explique como chegou no resultado.

void main(){
  const double distanciaEntreAsCidades = 125;
  const double vCarro = 90;
  const double vCaminhao = 80;
  const int nPedagios = 3;
  const double tempoPedagioCarro = (5 * nPedagios) / 60;
  double tempoDoEncontro = distanciaEntreAsCidades / (vCarro + vCaminhao);
  double velociadeXTempo( double velocidade, double tempo){
    return velocidade * tempo;
  }
  double dcarro = velociadeXTempo(vCarro, tempoDoEncontro - tempoPedagioCarro);
  double dcaminhao = velociadeXTempo(vCaminhao, tempoDoEncontro);

  String distancias(double dcarro, double dcaminhao) {
    if(dcarro < dcaminhao){
      return 'Carro';
    } else if (dcarro > dcaminhao) {
      return 'Caminhão';
    }else {
      return 'Os dois estarão com a mesma distância';
    }
  }
print('Ao se cruzarem estará mais perto de Ribeirão Preto:  ${distancias(dcarro, dcaminhao)}');
}