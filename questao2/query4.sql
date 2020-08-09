use db_fort;

select p.ID_PESSOA, max(dt_ref) from f_vendas v
left join d_pessoa p on p.ID_PESSOA = v.ID_PESSOA
left join d_tempo t on t.ID_TEMPO = v.ID_TEMPO
group by p.id_pessoa;
