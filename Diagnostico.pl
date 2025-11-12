% ==========================
% BASE DE DADOS - DIAGNÓSTICO DE COMPUTADORES
% ==========================

% --- Sintomas relacionados a hardware ---
sintoma(computador_nao_liga).
sintoma(tela_preta_ao_iniciar).
sintoma(reinicio_inesperado).
sintoma(ventoinha_nao_gira).
sintoma(cheiro_de_queimado).
sintoma(barulhos_estranhos_hd).
sintoma(desempenho_lento_geral).
sintoma(travamento_aleatorio).
sintoma(bips_na_inicializacao).

% --- Sintomas relacionados a software ---
sintoma(tela_azul).
sintoma(sistema_operacional_nao_inicia).
sintoma(programas_fecham_sozinhos).
sintoma(erro_ao_instalar_programas).
sintoma(lentidao_ao_abrir_programas).
sintoma(popups_constantes).
sintoma(fechamento_subito_programas).
sintoma(sistema_reinicia_apos_atualizacao).

% --- Sintomas relacionados à rede ---
sintoma(sem_conexao_internet).
sintoma(conexao_lenta).
sintoma(erro_dns).
sintoma(desconexao_frequente).
sintoma(rede_nao_identificada).
sintoma(wifi_desconecta_sozinha).

% --- Possíveis causas de hardware ---
causa(fonte_queimada).
causa(memoria_ram_defeituosa).
causa(hd_com_setores_danificados).
causa(placa_mae_defeituosa).
causa(processador_superaquecendo).
causa(cabo_energia_solto).
causa(placa_de_video_defeituosa).
causa(fonte_insuficiente).
causa(cooler_parado).
causa(bateria_cmos_fraca).

% --- Possíveis causas de software ---
causa(driver_incorreto).
causa(virus_ou_malware).
causa(atualizacao_mal_sucedida).
causa(arquivos_sistema_corrompidos).
causa(excesso_programas_inicializacao).
causa(falta_de_memoria_virtual).
causa(software_incompativel).
causa(instalacao_incompleta_do_sistema).
causa(registro_corrompido).

% --- Possíveis causas de rede ---
causa(modem_desconectado).
causa(roteador_com_defeito).
causa(cabo_rede_danificado).
causa(dns_invalido).
causa(ip_conflitante).
causa(driver_rede_desatualizado).
causa(configuracao_rede_incorreta).
causa(interferencia_wifi).
causa(problema_provedor_internet).

% --- Relações entre sintomas e causas (para referência futura) ---
relacao(computador_nao_liga, fonte_queimada).
relacao(computador_nao_liga, cabo_energia_solto).
relacao(tela_preta_ao_iniciar, placa_mae_defeituosa).
relacao(bips_na_inicializacao, memoria_ram_defeituosa).
relacao(reinicio_inesperado, processador_superaquecendo).
relacao(cheiro_de_queimado, fonte_queimada).
relacao(barulhos_estranhos_hd, hd_com_setores_danificados).
relacao(travamento_aleatorio, memoria_ram_defeituosa).
relacao(desempenho_lento_geral, hd_com_setores_danificados).

relacao(tela_azul, driver_incorreto).
relacao(tela_azul, memoria_ram_defeituosa).
relacao(sistema_operacional_nao_inicia, arquivos_sistema_corrompidos).
relacao(popups_constantes, virus_ou_malware).
relacao(lentidao_ao_abrir_programas, excesso_programas_inicializacao).
relacao(programas_fecham_sozinhos, software_incompativel).
relacao(erro_ao_instalar_programas, falta_de_memoria_virtual).
relacao(sistema_reinicia_apos_atualizacao, atualizacao_mal_sucedida).

relacao(sem_conexao_internet, modem_desconectado).
relacao(conexao_lenta, problema_provedor_internet).
relacao(erro_dns, dns_invalido).
relacao(desconexao_frequente, roteador_com_defeito).
relacao(rede_nao_identificada, configuracao_rede_incorreta).
relacao(wifi_desconecta_sozinha, interferencia_wifi).

% --- Componentes de hardware ---
componente(fonte).
componente(placa_mae).
componente(memoria_ram).
componente(hd).
componente(processador).
componente(placa_de_video).
componente(cooler).
componente(bateria_cmos).

% --- Componentes de software ---
componente(sistema_operacional).
componente(driver).
componente(antivirus).
componente(programa).
componente(registro_sistema).

% --- Componentes de rede ---
componente(modem).
componente(roteador).
componente(placa_de_rede).
componente(cabo_rede).
componente(dns).
componente(ip).

problema(Sintoma, Causa) :- relacao(Sintoma, Causa).