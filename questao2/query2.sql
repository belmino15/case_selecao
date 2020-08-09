use db_fort;

select p.ID_PESSOA as 'ID da pessoa', count(v.ID_VENDA) as 'Quantidade de compras' from f_vendas v
left join d_pessoa p on p.ID_PESSOA = v.ID_PESSOA
left join d_tempo t on t.ID_TEMPO = v.ID_TEMPO
where t.NU_MES=3 and t.NU_ANO=2020
group by p.ID_PESSOA;