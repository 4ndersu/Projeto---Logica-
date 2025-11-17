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

%Tipos de causas relacioandas a hardware
tipo_causa(Causa, hardware) :-
    causa(Causa),
    (Causa = fonte_queimada;
     Causa = memoria_ram_defeituosa;
     Causa = hd_com_setores_danificados;
     Causa = placa_mae_defeituosa;
     Causa = processador_superaquecendo;
     Causa = cabo_energia_solto;
     Causa = placa_de_video_defeituosa;
     Causa = fonte_insuficiente;
     Causa = cooler_parado;
     Causa = bateria_cmos_fraca).

%Tipos de causas relacioandas a software
tipo_causa(Causa, software) :- 
    causa(Causa),
    (Causa = driver_incorreto;
     Causa = virus_ou_malware;
     Causa = atualizacao_mal_sucedida;
     Causa = arquivos_sistema_corrompidos;
     Causa = excesso_programas_inicializacao;
     Causa = falta_de_memoria_virtual;
     Causa = software_incompativel;
     Causa = instalacao_incompleta_do_sistema;
     Causa = registro_corrompido).

%Tipos de causas relacioandas a rede
tipo_causa(Causa, rede) :- 
    causa(Causa),
    (Causa = modem_desconectado;
     Causa = roteador_com_defeito;
     Causa = cabo_rede_danificado;
     Causa = dns_invalido;
     Causa = ip_conflitante;
     Causa = driver_rede_desatualizado;
     Causa = configuracao_rede_incorreta;
     Causa = interferencia_wifi;
     Causa = problema_provedor_internet).

% --- Relações entre sintomas e causas (para referência futura) ---
problema(Sintoma, Causa) :-
    sintoma(Sintoma),
    causa(Causa), 
    (   (Sintoma = computador_nao_liga, (Causa = fonte_queimada; Causa = cabo_energia_solto));
        (Sintoma = tela_preta_ao_iniciar, Causa = placa_mae_defeituosa);
        (Sintoma = bips_na_inicializacao, Causa = memoria_ram_defeituosa);
        (Sintoma = reinicio_inesperado, Causa = processador_superaquecendo);
        (Sintoma = cheiro_de_queimado, Causa = fonte_queimada);
        (Sintoma = barulhos_estranhos_hd, Causa = hd_com_setores_danificados);
        (Sintoma = travamento_aleatorio, Causa = memoria_ram_defeituosa);
        (Sintoma = desempenho_lento_geral, Causa = hd_com_setores_danificados);
        
        (Sintoma = tela_azul, (Causa = driver_incorreto; Causa = memoria_ram_defeituosa));
        (Sintoma = sistema_operacional_nao_inicia, Causa = arquivos_sistema_corrompidos);
        (Sintoma = popups_constantes, Causa = virus_ou_malware);
        (Sintoma = lentidao_ao_abrir_programas, Causa = excesso_programas_inicializacao);
        (Sintoma = programas_fecham_sozinhos, Causa = software_incompativel);
        (Sintoma = erro_ao_instalar_programas, Causa = falta_de_memoria_virtual);
        (Sintoma = sistema_reinicia_apos_atualizacao, Causa = atualizacao_mal_sucedida);
        
        (Sintoma = sem_conexao_internet, Causa = modem_desconectado);
        (Sintoma = conexao_lenta, Causa = problema_provedor_internet);
        (Sintoma = erro_dns, Causa = dns_invalido);
        (Sintoma = desconexao_frequente, Causa = roteador_com_defeito);
        (Sintoma = rede_nao_identificada, Causa = configuracao_rede_incorreta);
        (Sintoma = wifi_desconecta_sozinha, Causa = interferencia_wifi)
    ).

%Solucoes para cada prolema
solucao(Sintoma, Causa, Solucao) :- 
    problema(Sintoma, Causa),
    (   (Causa = fonte_queimada, Solucao = 'Substituir a fonte de alimentacao por uma nova compativel.');
        (Causa = cabo_energia_solto, Solucao = 'Verificar e reconectar firmemente o cabo de energia.');
        (Causa = placa_mae_defeituosa, Solucao = 'Requer a substituicao da placa-mae.');
        (Causa = memoria_ram_defeituosa, Solucao = 'Limpar os contatos da RAM (borracha) e testar os modulos individualmente. Se persistir, substituir.');
        (Causa = processador_superaquecendo, Solucao = 'Verificar o cooler, limpar poeira e reaplicar pasta termica.');
        (Causa = hd_com_setores_danificados, Solucao = 'Fazer backup imediato e executar CHKDSK. Se o dano for extenso, substituir o disco.');
        (Causa = placa_de_video_defeituosa, Solucao = 'Testar em outro PC ou substituir a placa de video.');
        (Causa = fonte_insuficiente, Solucao = 'Substituir a fonte por uma com maior potencia (watts).');
        (Causa = cooler_parado, Solucao = 'Verificar conexoes e substituir o cooler se estiver queimado.');
        (Causa = bateria_cmos_fraca, Solucao = 'Substituir a bateria CMOS (CR2032).');
        
        (Causa = driver_incorreto, Solucao = 'Atualizar, reverter ou reinstalar o driver correto do fabricante.');
        (Causa = virus_ou_malware, Solucao = 'Executar uma varredura completa com software antivirus/antimalware atualizado.');
        (Causa = atualizacao_mal_sucedida, Solucao = 'Usar o Ponto de Restauracao do sistema para reverter a atualizacao.');
        (Causa = arquivos_sistema_corrompidos, Solucao = 'Executar os comandos de reparo do sistema (sfc /scannow e DISM).');
        (Causa = excesso_programas_inicializacao, Solucao = 'Desativar programas desnecessarios da inicializacao (Gerenciador de Tarefas).');
        (Causa = falta_de_memoria_virtual, Solucao = 'Aumentar o tamanho do arquivo de paginacao ou liberar espaco em disco.');
        (Causa = software_incompativel, Solucao = 'Desinstalar o software ou executa-lo em Modo de Compatibilidade.');
        (Causa = instalacao_incompleta_do_sistema, Solucao = 'Tentar uma reparacao ou realizar uma instalacao limpa (formatacao).');
        (Causa = registro_corrompido, Solucao = 'Usar ferramentas confiaveis para limpar/reparar o registro ou restaurar o sistema.');

        (Causa = modem_desconectado, Solucao = 'Verificar cabos e reiniciar o modem (desligar e ligar).');
        (Causa = roteador_com_defeito, Solucao = 'Reiniciar o roteador. Se persistir, testar com outro ou substituir.');
        (Causa = cabo_rede_danificado, Solucao = 'Substituir o cabo de rede (Ethernet) por um novo.');
        (Causa = dns_invalido, Solucao = 'Alterar o DNS para servidores publicos confiaveis (ex: Google DNS).');
        (Causa = ip_conflitante, Solucao = 'Reiniciar roteador e computador para obter novos IPs.');
        (Causa = driver_rede_desatualizado, Solucao = 'Atualizar o driver da placa de rede pelo site do fabricante.');
        (Causa = configuracao_rede_incorreta, Solucao = 'Executar a Solucao de Problemas de Rede ou redefinir as configuracoes.');
        (Causa = interferencia_wifi, Solucao = 'Mudar o canal Wi-Fi do roteador ou aproximar o dispositivo.');
        (Causa = problema_provedor_internet, Solucao = 'Entrar em contato com o provedor para verificar a linha.')
    ).

diagnostico(Sintoma, Causa, Tipo, Solucao) :-
    problema(Sintoma, Causa),
    tipo_causa(Causa, Tipo),
    solucao(Sintoma, Causa, Solucao).

