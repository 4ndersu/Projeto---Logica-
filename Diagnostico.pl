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

% --- Pesos de gravidade(causas) ---
peso_gravidade(alta, 3).
peso_gravidade(media, 2).
peso_gravidade(baixa, 1).

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

% --- Relações entre sintomas e causas de hardware com probabilidade ---
problema(computador_nao_liga, placa_mae_defeituosa, pouco_provavel).
problema(computador_nao_liga, fonte_queimada, muito_provavel).
problema(computador_nao_liga, cabo_energia_solto, provavel).

problema(tela_preta_ao_iniciar, driver_incorreto, pouco_provavel).
problema(tela_preta_ao_iniciar, placa_mae_defeituosa, provavel).
problema(tela_preta_ao_iniciar, placa_de_video_defeituosa, muito_provavel).
problema(tela_preta_ao_iniciar, memoria_ram_defeituosa, provavel).

problema(bips_na_inicializacao, memoria_ram_defeituosa, muito_provavel).
problema(bips_na_inicializacao, processador_superaquecendo, provavel).

problema(reinicio_inesperado, virus_ou_malware, pouco_provavel).
problema(reinicio_inesperado, memoria_ram_defeituosa, provavel).
problema(reinicio_inesperado, fonte_insuficiente, provavel).
problema(reinicio_inesperado, processador_superaquecendo, muito_provavel).
problema(reinicio_inesperado, driver_incorreto, pouco_provavel).

problema(cheiro_de_queimado, placa_mae_defeituosa, provavel).
problema(cheiro_de_queimado, fonte_queimada, muito_provavel).
problema(cheiro_de_queimado, processador_superaquecendo, pouco_provavel).
problema(cheiro_de_queimado, placa_de_video_defeituosa, provavel).

problema(barulhos_estranhos_hd, hd_com_setores_danificados, muito_provavel).

problema(travamento_aleatorio, driver_incorreto, pouco_provavel).
problema(travamento_aleatorio, processador_superaquecendo, provavel).
problema(travamento_aleatorio, memoria_ram_defeituosa, muito_provavel).
problema(travamento_aleatorio, hd_com_setores_danificados, provavel).

problema(desempenho_lento_geral, memoria_ram_defeituosa, provavel).
problema(desempenho_lento_geral, virus_ou_malware, provavel).
problema(desempenho_lento_geral, excesso_programas_inicializacao, provavel).
problema(desempenho_lento_geral, processador_superaquecendo, pouco_provavel).
problema(desempenho_lento_geral, hd_com_setores_danificados, muito_provavel).
problema(desempenho_lento_geral, falta_de_memoria_virtual, muito_provavel).

% --- Relações entre sintomas e causas de software ---
problema(tela_azul, virus_ou_malware, pouco_provavel).
problema(tela_azul, memoria_ram_defeituosa, provavel).
problema(tela_azul, registro_corrompido, provavel).
problema(tela_azul, driver_incorreto, muito_provavel).
problema(tela_azul, hd_com_setores_danificados, provavel).
problema(tela_azul, arquivos_sistema_corrompidos, muito_provavel).

problema(sistema_operacional_nao_inicia, driver_incorreto, pouco_provavel).
problema(sistema_operacional_nao_inicia, instalacao_incompleta_do_sistema, provavel).
problema(sistema_operacional_nao_inicia, registro_corrompido, provavel).
problema(sistema_operacional_nao_inicia, arquivos_sistema_corrompidos, muito_provavel).
problema(sistema_operacional_nao_inicia, atualizacao_mal_sucedida, muito_provavel).

problema(popups_constantes, excesso_programas_inicializacao, pouco_provavel).
problema(popups_constantes, registro_corrompido, provavel).
problema(popups_constantes, virus_ou_malware, muito_provavel).

problema(lentidao_ao_abrir_programas, virus_ou_malware, provavel).
problema(lentidao_ao_abrir_programas, excesso_programas_inicializacao, muito_provavel).
problema(lentidao_ao_abrir_programas, hd_com_setores_danificados, provavel).
problema(lentidao_ao_abrir_programas, falta_de_memoria_virtual, muito_provavel).

problema(programas_fecham_sozinhos, driver_incorreto, provavel).
problema(programas_fecham_sozinhos, arquivos_sistema_corrompidos, muito_provavel).
problema(programas_fecham_sozinhos, software_incompativel, muito_provavel).
problema(programas_fecham_sozinhos, registro_corrompido, provavel).
problema(programas_fecham_sozinhos, memoria_ram_defeituosa, provavel).

problema(erro_ao_instalar_programas, falta_de_memoria_virtual, provavel).
problema(erro_ao_instalar_programas, registro_corrompido, pouco_provavel).
problema(erro_ao_instalar_programas, instalacao_incompleta_do_sistema, provavel).
problema(erro_ao_instalar_programas, arquivos_sistema_corrompidos, muito_provavel).
problema(erro_ao_instalar_programas, software_incompativel, muito_provavel).

problema(sistema_reinicia_apos_atualizacao, registro_corrompido, provavel).
problema(sistema_reinicia_apos_atualizacao, driver_incorreto, provavel).
problema(sistema_reinicia_apos_atualizacao, arquivos_sistema_corrompidos, muito_provavel).
problema(sistema_reinicia_apos_atualizacao, atualizacao_mal_sucedida, muito_provavel).

% --- Relações entre sintomas e causas de rede ---
problema(sem_conexao_internet, problema_provedor_internet, muito_provavel).
problema(sem_conexao_internet, cabo_rede_danificado, provavel).
problema(sem_conexao_internet, modem_desconectado, muito_provavel).
problema(sem_conexao_internet, configuracao_rede_incorreta, muito_provavel).
problema(sem_conexao_internet, driver_rede_desatualizado, provavel).

problema(conexao_lenta, problema_provedor_internet, muito_provavel).
problema(conexao_lenta, configuracao_rede_incorreta, provavel).
problema(conexao_lenta, interferencia_wifi, muito_provavel).

problema(erro_dns, problema_provedor_internet, provavel).
problema(erro_dns, dns_invalido, muito_provavel).

problema(desconexao_frequente, driver_rede_desatualizado, provavel).
problema(desconexao_frequente, interferencia_wifi, muito_provavel).
problema(desconexao_frequente, roteador_com_defeito, provavel).

problema(rede_nao_identificada, configuracao_rede_incorreta, muito_provavel).

problema(wifi_desconecta_sozinha, interferencia_wifi, muito_provavel).

% --- Pesos de Probabilidade ---
peso_probabilidade(muito_provavel, 3).
peso_probabilidade(provavel, 2).
peso_probabilidade(pouco_provavel, 1).

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
diagnostico(Sintoma, Causa, Componente, Tipo, Solucao, Gravidade, Probabilidade) :-
    problema(Sintoma, Causa, Probabilidade),
    causa_componente(Causa, Componente),
    tipo_causa(Causa, Tipo),
    solucao(Causa, Solucao),
    gravidade(Causa, Gravidade).

%regra para listar cauas possiveis de um sintoma
causas_possiveis(Sintoma, Lista) :-
    findall(Causa, problema(Sintoma, Causa, _), Lista).

%regra para listar sintomas possiveis de um causa
sintomas_possiveis(Causa, Lista) :-
    findall(Sintoma, problema(Sintoma, Causa, _), Lista).

%regra para obter peso de probabilidade de uma causa para um sintoma
problema_com_peso_prob(Sintoma, Causa, Peso) :-
    problema(Sintoma, Causa, Probabilidade),
    peso_probabilidade(Probabilidade, Peso).

%regra para obter peso da gravidade de uma causa
peso_da_gravidade(Causa, Peso) :-
    gravidade(Causa, Nivel),
    peso_gravidade(Nivel, Peso).

%regra para ordenar causas por peso de probabilidade em ordem decrescente(da mais provavel para a menos provavel)
ordenar_problemas_provaveis(Sintoma, ListaOrdenada) :-
    findall((Causa, Peso), problema_com_peso_prob(Sintoma, Causa, Peso), Lista),
    sort(2, @>=, Lista, ListaOrdenada).

%regra para listar causas com seus pesos de gravidade
listar_gravidades(Sintoma, Lista) :-
    findall((Causa, Peso),
            (problema(Sintoma, Causa, _),  % aqui não importa probabilidade
             peso_da_gravidade(Causa, Peso)),
            Lista).

%regra para ordenar causas por gravidade em ordem decrescente(da mais grave para a menos grave)
ordenar_por_gravidade(Sintoma, ListaOrdenada) :-
    listar_gravidades(Sintoma, Lista),
    sort(2, @>=, Lista, ListaOrdenada).


% ==========================
% DIAGNOSTICO INTERATIVO
% ==========================

lista_sintomas(Lista) :-
    findall(S, sintoma(S), Lista).

% Pergunta ao usuario sobre cada sintoma
perguntar(Sintoma, Resposta) :-
    format("O computador apresenta ~w? (s/n ou outra tecla para parar): ", [Sintoma]),
    read(Resp),
    (Resp == s -> Resposta = s ;
     Resp == n -> Resposta = n ;
     Resposta = parar).

coletar_sintomas([], []).
coletar_sintomas([S|R], Final) :-
    perguntar(S, Resp),
    ( Resp == parar ->
        Final = []
    ; Resp == s ->
        coletar_sintomas(R, Resto),
        Final = [S|Resto]
    ; Resp == n ->
        coletar_sintomas(R, Final)
    ).

% Diagnostica um sintoma e exibe as causas possíveis
diagnosticar_sintoma(S) :-
    format("\nSintoma: ~w\n", [S]),
    listar_causas(S).

% Lista causas possíveis com detalhes
listar_causas(S) :-
    problema(S, Causa, Probabilidade),
    causa_componente(Causa, Componente),
    tipo_causa(Causa, Tipo),
    solucao(Causa, Solucao),
    gravidade(Causa, Gravidade),

    format("  - Causa: ~w\n", [Causa]),
    format("      Componente: ~w\n", [Componente]),
    format("      Tipo: ~w\n", [Tipo]),
    format("      Gravidade: ~w\n", [Gravidade]),
    format("      Probabilidade: ~w\n", [Probabilidade]),
    format("      Solução: ~w\n\n", [Solucao]),

    fail.  % → força encontrar próxima causa no backtracking

listar_causas(_).  % → quando acabar as causas, finaliza 

% Diagnostica uma lista de sintomas
diagnosticar_lista([]).
diagnosticar_lista([S|R]) :-
    diagnosticar_sintoma(S),
    diagnosticar_lista(R).

iniciar :-
    lista_sintomas(Lista),
    coletar_sintomas(Lista, SintomasConfirmados),

    ( SintomasConfirmados == [] ->
        writeln("\nNenhum sintoma confirmado. Encerrando.")
    ; 
        writeln("\n==== RESULTADOS DO DIAGNÓSTICO ====\n"),
        diagnosticar_lista(SintomasConfirmados)
    ).

