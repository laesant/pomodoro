import 'dart:async';

import 'package:mobx/mobx.dart';
part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum TipoIntervalo {
  trabalho,
  descanso;
}

abstract class _PomodoroStore with Store {
  @observable
  bool iniciado = false;

  @observable
  int minutos = 2;
  @observable
  int segundos = 0;

  @observable
  int tempoTrabalho = 2;
  @observable
  int tempoDescanso = 1;

  @observable
  TipoIntervalo tipoIntervalo = TipoIntervalo.trabalho;

  Timer? cronometro;

  bool get estaTrabalhando => tipoIntervalo == TipoIntervalo.trabalho;

  bool get estaDescansando => tipoIntervalo == TipoIntervalo.descanso;

  @action
  void iniciar() {
    iniciado = true;
    cronometro = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      if (minutos == 0 && segundos == 0) {
        _trocarTipoIntervalo();
      } else if (segundos == 0) {
        segundos = 59;
        minutos--;
      } else {
        segundos--;
      }
    });
  }

  @action
  void parar() {
    iniciado = false;
    cronometro?.cancel();
  }

  @action
  void reiniciar() {
    parar();
    minutos = estaTrabalhando ? tempoTrabalho : tempoDescanso;
    segundos = 0;
  }

  @action
  void incrementarTempoTrabalho() {
    tempoTrabalho++;
    if (estaTrabalhando) {
      reiniciar();
    }
  }

  @action
  void decrementarTempoTrabalho() {
    if (tempoTrabalho > 1) {
      tempoTrabalho--;
      if (estaTrabalhando) {
        reiniciar();
      }
    }
  }

  @action
  void incrementarTempoDescanso() {
    tempoDescanso++;
    if (estaDescansando) {
      reiniciar();
    }
  }

  @action
  void decrementarTempoDescanso() {
    if (tempoDescanso > 1) {
      tempoDescanso--;
      if (estaDescansando) {
        reiniciar();
      }
    }
  }

  void _trocarTipoIntervalo() {
    if (estaTrabalhando) {
      tipoIntervalo = TipoIntervalo.descanso;
      minutos = tempoDescanso;
    } else {
      tipoIntervalo = TipoIntervalo.trabalho;
      minutos = tempoTrabalho;
    }
    segundos = 0;
  }
}
