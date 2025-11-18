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


problema(Sintoma, Causa) :- relacao(Sintoma, Causa).

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

% --- Tipo de causa Hardware ---
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

diagnostico(Sintoma, Causa, Solucao, Tipo) :-
    problema(Sintoma, Causa),
    solucao(Causa, Solucao),
    tipo_causa(Causa, Tipo).

% =================
% MÓDULO DE STATUS 
% =================

info_hardware(cpu, 'Intel i7-10700K', 8). 
info_hardware(ram, 'DDR4', 16).
info_hardware(disco_c, 'SSD NVMe', 512). 

info_software(antivirus, 'Ativo').
info_software(uso_disco_c, 95). % Uso em porcentagem
info_software(temperatura_cpu, 85). % Temperatura em Celsius
info_software(dias_ligado, 3). % Dias que o sistema está ligado

% Status de Temperatura da CPU
status_cpu_temperatura('SUPER-AQUECIMENTO!') :-
    info_software(temperatura_cpu, Temp),
    Temp > 80.
status_cpu_temperatura('Normal') :-
    info_software(temperatura_cpu, Temp),
    Temp =< 80.

% Status de Uso do Disco
status_disco_uso('DISCO QUASE CHEIO!') :-
    info_software(uso_disco_c, Uso),
    Uso >= 90.
status_disco_uso('Normal') :-
    info_software(uso_disco_c, Uso),
    Uso < 90.

% Status de Suficiência de RAM
status_ram_suficiencia('Recomendado: 16GB+') :-
    info_hardware(ram, _, RAM_GB),
    RAM_GB >= 16.
status_ram_suficiencia('Aceitável: 8GB') :-
    info_hardware(ram, _, RAM_GB),
    RAM_GB < 16,
    RAM_GB >= 8.
status_ram_suficiencia('Baixo: Considere Upgrade') :-
    info_hardware(ram, _, RAM_GB),
    RAM_GB < 8.

% Status de Manutenção
status_manutencao('Reinicialização Pendente') :-
    info_software(dias_ligado, Dias),
    Dias >= 7.
status_manutencao('OK') :-
    info_software(dias_ligado, Dias),
    Dias < 7.

% Status do Antivírus
status_antivirus('Segurança OK') :-
    info_software(antivirus, 'Ativo').
status_antivirus('ALERTA: Antivírus Inativo') :-
    info_software(antivirus, Status),
    Status \= 'Ativo'.