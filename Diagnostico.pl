componente(cpu).
componente(memoriarRam).
componente(placaMae).
componente(armazenamento).
componente(fonte).
componente(placaDeVideo).
componente(bateria).

problema(naoliga) :-componente(memoriarRam); componente(fonte); componente(placaDeVideo).
problema(travando) :-componente(memoriarRam); componente(cpu).