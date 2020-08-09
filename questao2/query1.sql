use db_fort;

select p.ID_PESSOA as 'ID da pessoa', p.nm_pessoa as 'Nome da pessoa', t.dt_ref as 'Data Referência da Venda', v.VL_VENDA as 'Valor de Venda' from f_vendas v
left join d_pessoa p on p.ID_PESSOA = v.ID_PESSOA
left join d_tempo t on t.ID_TEMPO = v.ID_TEMPO
left join d_loja l on l.ID_LOJA = v.ID_LOJA
where t.NU_MES=1 and t.NU_ANO=2020 and l.DS_UF='CE';