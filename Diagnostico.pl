% ==========================
% BASE DE DADOS - DIAGNÓSTICO DE COMPUTADORES
% ==========================

%Fatos

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

%----niveis de risco hardware ----
gravidade(fonte_queimada, alta).
gravidade(memoria_ram_defeituosa, media).
gravidade(hd_com_setores_danificados, alta).
gravidade(placa_mae_defeituosa, alta).
gravidade(processador_superaquecendo, alta).
gravidade(cabo_energia_solto, baixa).
gravidade(placa_de_video_defeituosa, media).
gravidade(fonte_insuficiente, media).
gravidade(cooler_parado, media).
gravidade(bateria_cmos_fraca, baixa).

%----niveis de risco software ----
gravidade(driver_incorreto, media).
gravidade(virus_ou_malware, alta).
gravidade(atualizacao_mal_sucedida, media).
gravidade(arquivos_sistema_corrompidos, alta).
gravidade(excesso_programas_inicializacao, baixa).
gravidade(falta_de_memoria_virtual, media).
gravidade(software_incompativel, baixa).
gravidade(instalacao_incompleta_do_sistema, alta).
gravidade(registro_corrompido, media).

%----niveis de risco rede ----
gravidade(modem_desconectado, baixa).
gravidade(roteador_com_defeito, media).
gravidade(cabo_rede_danificado, baixa).
gravidade(dns_invalido, media).
gravidade(ip_conflitante, media).
gravidade(driver_rede_desatualizado, baixa).
gravidade(configuracao_rede_incorreta, media).
gravidade(interferencia_wifi, baixa).
gravidade(problema_provedor_internet, alta).


% --- Probabilidade Hardware ---
probabilidade(fonte_queimada, media).
probabilidade(memoria_ram_defeituosa, media).
probabilidade(hd_com_setores_danificados, media).
probabilidade(placa_mae_defeituosa, baixa).
probabilidade(processador_superaquecendo, media).
probabilidade(cabo_energia_solto, alta).
probabilidade(placa_de_video_defeituosa, media).
probabilidade(fonte_insuficiente, baixa).
probabilidade(cooler_parado, media).
probabilidade(bateria_cmos_fraca, baixa).

% --- Probabilidade Software ---
probabilidade(driver_incorreto, alta).
probabilidade(virus_ou_malware, alta).
probabilidade(atualizacao_mal_sucedida, media).
probabilidade(arquivos_sistema_corrompidos, media).
probabilidade(excesso_programas_inicializacao, alta).
probabilidade(falta_de_memoria_virtual, media).
probabilidade(software_incompativel, baixa).
probabilidade(instalacao_incompleta_do_sistema, baixa).
probabilidade(registro_corrompido, baixa).

% --- Probabilidade Rede ---
probabilidade(modem_desconectado, alta).
probabilidade(roteador_com_defeito, media).
probabilidade(cabo_rede_danificado, media).
probabilidade(dns_invalido, media).
probabilidade(ip_conflitante, media).
probabilidade(driver_rede_desatualizado, alta).
probabilidade(configuracao_rede_incorreta, media).
probabilidade(interferencia_wifi, alta).
probabilidade(problema_provedor_internet, media).

% --- Componentes de hardware ---
componente(fonte).
componente(placa_mae).
componente(memoria_ram).
componente(hd).
componente(processador).
componente(placa_video).
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

% --- Tipo de Causa Hardware ---
tipo_causa(fonte_queimada, hardware).
tipo_causa(memoria_ram_defeituosa, hardware).
tipo_causa(hd_com_setores_danificados, hardware).
tipo_causa(placa_mae_defeituosa, hardware).
tipo_causa(processador_superaquecendo, hardware).
tipo_causa(cabo_energia_solto, hardware).
tipo_causa(placa_de_video_defeituosa, hardware).
tipo_causa(fonte_insuficiente, hardware).
tipo_causa(cooler_parado, hardware).
tipo_causa(bateria_cmos_fraca, hardware).

% --- Tipo de Causa Software ---
tipo_causa(driver_incorreto, software).
tipo_causa(virus_ou_malware, software).
tipo_causa(atualizacao_mal_sucedida, software).
tipo_causa(arquivos_sistema_corrompidos, software).
tipo_causa(excesso_programas_inicializacao, software).
tipo_causa(falta_de_memoria_virtual, software).
tipo_causa(software_incompativel, software).
tipo_causa(instalacao_incompleta_do_sistema, software).
tipo_causa(registro_corrompido, software).

% --- Tipo de Causa Rede ---
tipo_causa(modem_desconectado, rede).
tipo_causa(roteador_com_defeito, rede).
tipo_causa(cabo_rede_danificado, rede).
tipo_causa(dns_invalido, rede).
tipo_causa(ip_conflitante, rede).
tipo_causa(driver_rede_desatualizado, rede).
tipo_causa(configuracao_rede_incorreta, rede).
tipo_causa(interferencia_wifi, rede).
tipo_causa(problema_provedor_internet, rede).

% --- Causas relacionadas a componentes de hardware ---
causa_componente(fonte_queimada, fonte).
causa_componente(cabo_energia_solto, fonte).
causa_componente(placa_mae_defeituosa, placa_mae).
causa_componente(memoria_ram_defeituosa, memoria_ram).
causa_componente(processador_superaquecendo, processador).
causa_componente(hd_com_setores_danificados, hd).
causa_componente(placa_de_video_defeituosa, placa_video).
causa_componente(fonte_insuficiente, fonte).
causa_componente(cooler_parado, cooler).
causa_componente(bateria_cmos_fraca, bateria_cmos).

% --- Causas relacionadas a componentes de software ---
causa_componente(driver_incorreto, driver).
causa_componente(virus_ou_malware, antivirus).
causa_componente(atualizacao_mal_sucedida, sistema_operacional).
causa_componente(arquivos_sistema_corrompidos, sistema_operacional).
causa_componente(excesso_programas_inicializacao, programa).
causa_componente(falta_de_memoria_virtual, sistema_operacional).
causa_componente(software_incompativel, programa).
causa_componente(instalacao_incompleta_do_sistema, sistema_operacional).
causa_componente(registro_corrompido, registro_sistema).

% --- Causas relacionadas a componentes de rede ---
causa_componente(modem_desconectado, modem).
causa_componente(roteador_com_defeito, roteador).
causa_componente(cabo_rede_danificado, cabo_rede).
causa_componente(dns_invalido, dns).
causa_componente(ip_conflitante, ip).
causa_componente(driver_rede_desatualizado, placa_de_rede).
causa_componente(configuracao_rede_incorreta, placa_de_rede).
causa_componente(interferencia_wifi, roteador).
causa_componente(problema_provedor_internet, modem).


% --- Relações entre sintomas e causas de hardware ---
problema(computador_nao_liga, fonte_queimada).
problema(computador_nao_liga, cabo_energia_solto).
problema(computador_nao_liga, placa_mae_defeituosa).

problema(tela_preta_ao_iniciar, placa_mae_defeituosa).
problema(tela_preta_ao_iniciar, placa_de_video_defeituosa).
problema(tela_preta_ao_iniciar, memoria_ram_defeituosa).
problema(tela_preta_ao_iniciar, driver_incorreto).

problema(bips_na_inicializacao, memoria_ram_defeituosa).
problema(bips_na_inicializacao, processador_superaquecendo).

problema(reinicio_inesperado, processador_superaquecendo).
problema(reinicio_inesperado, fonte_insuficiente).
problema(reinicio_inesperado, memoria_ram_defeituosa).
problema(reinicio_inesperado, driver_incorreto).
problema(reinicio_inesperado, virus_ou_malware).

problema(cheiro_de_queimado, fonte_queimada).
problema(cheiro_de_queimado, placa_de_video_defeituosa).
problema(cheiro_de_queimado, placa_mae_defeituosa).
problema(cheiro_de_queimado, processador_superaquecendo).

problema(barulhos_estranhos_hd, hd_com_setores_danificados).

problema(travamento_aleatorio, memoria_ram_defeituosa).
problema(travamento_aleatorio, hd_com_setores_danificados).
problema(travamento_aleatorio, processador_superaquecendo).
problema(travamento_aleatorio, driver_incorreto).

problema(desempenho_lento_geral, hd_com_setores_danificados).
problema(desempenho_lento_geral, memoria_ram_defeituosa).
problema(desempenho_lento_geral, falta_de_memoria_virtual).
problema(desempenho_lento_geral, excesso_programas_inicializacao).
problema(desempenho_lento_geral, virus_ou_malware).
problema(desempenho_lento_geral, processador_superaquecendo).

% --- Relações entre sintomas e causas de software ---
problema(tela_azul, driver_incorreto).
problema(tela_azul, memoria_ram_defeituosa).
problema(tela_azul, hd_com_setores_danificados).
problema(tela_azul, registro_corrompido).
problema(tela_azul, virus_ou_malware).
problema(tela_azul, arquivos_sistema_corrompidos).

problema(sistema_operacional_nao_inicia, arquivos_sistema_corrompidos).
problema(sistema_operacional_nao_inicia, instalacao_incompleta_do_sistema).
problema(sistema_operacional_nao_inicia, registro_corrompido).
problema(sistema_operacional_nao_inicia, driver_incorreto).
problema(sistema_operacional_nao_inicia, atualizacao_mal_sucedida).


problema(popups_constantes, virus_ou_malware).
problema(popups_constantes, registro_corrompido).
problema(popups_constantes, excesso_programas_inicializacao).

problema(lentidao_ao_abrir_programas, excesso_programas_inicializacao).
problema(lentidao_ao_abrir_programas, falta_de_memoria_virtual).
problema(lentidao_ao_abrir_programas, hd_com_setores_danificados).
problema(lentidao_ao_abrir_programas, virus_ou_malware).


problema(programas_fecham_sozinhos, memoria_ram_defeituosa).
problema(programas_fecham_sozinhos, driver_incorreto).
problema(programas_fecham_sozinhos, software_incompativel).
problema(programas_fecham_sozinhos, arquivos_sistema_corrompidos).
problema(programas_fecham_sozinhos, registro_corrompido).

problema(erro_ao_instalar_programas, falta_de_memoria_virtual).
problema(erro_ao_instalar_programas, software_incompativel).
problema(erro_ao_instalar_programas, instalacao_incompleta_do_sistema).
problema(erro_ao_instalar_programas, arquivos_sistema_corrompidos).
problema(erro_ao_instalar_programas, registro_corrompido).

problema(sistema_reinicia_apos_atualizacao, atualizacao_mal_sucedida).
problema(sistema_reinicia_apos_atualizacao, driver_incorreto).
problema(sistema_reinicia_apos_atualizacao, arquivos_sistema_corrompidos).
problema(sistema_reinicia_apos_atualizacao, registro_corrompido).

% --- Relações entre sintomas e causas de rede ---
problema(sem_conexao_internet, modem_desconectado).
problema(sem_conexao_internet, cabo_rede_danificado).
problema(sem_conexao_internet, driver_rede_desatualizado).
problema(sem_conexao_internet, configuracao_rede_incorreta).
problema(sem_conexao_internet, problema_provedor_internet).

problema(conexao_lenta, problema_provedor_internet).
problema(conexao_lenta, interferencia_wifi).
problema(conexao_lenta, configuracao_rede_incorreta).

problema(erro_dns, dns_invalido).
problema(erro_dns, problema_provedor_internet).

problema(desconexao_frequente, roteador_com_defeito).
problema(desconexao_frequente, driver_rede_desatualizado).
problema(desconexao_frequente, interferencia_wifi).
problema(rede_nao_identificada, configuracao_rede_incorreta).
problema(wifi_desconecta_sozinha, interferencia_wifi).

% --- Soluções de Hardware ---
solucao(fonte_queimada, 'Substituir a fonte de alimentacao por uma nova compativel.').
solucao(cabo_energia_solto, 'Verificar e reconectar firmemente o cabo de energia.').
solucao(placa_mae_defeituosa, 'Requer a substituicao da placa-mae.').
solucao(memoria_ram_defeituosa, 'Limpar os contatos da RAM (borracha) e testar os modulos individualmente. Se persistir, substituir.').
solucao(processador_superaquecendo, 'Verificar o cooler, limpar poeira e reaplicar pasta termica.').
solucao(hd_com_setores_danificados, 'Fazer backup imediato e executar CHKDSK. Se o dano for extenso, substituir o disco.').
solucao(placa_de_video_defeituosa, 'Testar em outro PC ou substituir a placa de video.').
solucao(fonte_insuficiente, 'Substituir a fonte por uma com maior potencia (watts).').
solucao(cooler_parado, 'Verificar conexoes e substituir o cooler se estiver queimado.').
solucao(bateria_cmos_fraca, 'Substituir a bateria CMOS (CR2032).').

% --- Soluções de Software ---
solucao(driver_incorreto, 'Atualizar, reverter ou reinstalar o driver correto do fabricante.').
solucao(virus_ou_malware, 'Executar uma varredura completa com software antivirus/antimalware atualizado.').
solucao(atualizacao_mal_sucedida, 'Usar o Ponto de Restauracao do sistema para reverter a atualizacao.').
solucao(arquivos_sistema_corrompidos, 'Executar os comandos de reparo do sistema (sfc /scannow e DISM).').
solucao(excesso_programas_inicializacao, 'Desativar programas desnecessarios da inicializacao (Gerenciador de Tarefas).').
solucao(falta_de_memoria_virtual, 'Aumentar o tamanho do arquivo de paginacao ou liberar espaco em disco.').
solucao(software_incompativel, 'Desinstalar o software ou executa-lo em Modo de Compatibilidade.').
solucao(instalacao_incompleta_do_sistema, 'Tentar uma reparacao ou realizar uma instalacao limpa (formatacao).').
solucao(registro_corrompido, 'Usar ferramentas confiaveis para limpar/reparar o registro ou restaurar o sistema.').

% --- Soluções de Rede ---
solucao(modem_desconectado, 'Verificar cabos e reiniciar o modem (desligar e ligar).').
solucao(roteador_com_defeito, 'Reiniciar o roteador. Se persistir, testar com outro ou substituir.').
solucao(cabo_rede_danificado, 'Substituir o cabo de rede (Ethernet) por um novo.').
solucao(dns_invalido, 'Alterar o DNS para servidores publicos confiaveis (ex: Google DNS).').
solucao(ip_conflitante, 'Reiniciar roteador e computador para obter novos IPs.').
solucao(driver_rede_desatualizado, 'Atualizar o driver da placa de rede pelo site do fabricante.').
solucao(configuracao_rede_incorreta, 'Executar a Solucao de Problemas de Rede ou redefinir as configuracoes.').
solucao(interferencia_wifi, 'Mudar o canal Wi-Fi do roteador ou aproximar o dispositivo.').
solucao(problema_provedor_internet, 'Entrar em contato com o provedor para verificar a linha.').


%regra principal de diagnóstico
diagnostico_completo(Sintoma, Causa, Componente, Tipo, Solucao, Gravidade, Probabilidade) :-
    problema(Sintoma, Causa),
    causa_componente(Causa, Componente),
    tipo_causa(Causa, Tipo),
    solucao(Causa, Solucao),
    gravidade(Causa, Gravidade),
    probabilidade(Causa, Probabilidade).
    
causas_do_sintoma(Sintoma, Lista) :-
    findall(Causa, problema(Sintoma, Causa), Lista).