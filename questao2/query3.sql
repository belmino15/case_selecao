use db_fort;

drop view if exists nao_comprou_marco;
create view nao_comprou_marco as
select p.ID_PESSOA, p.NM_PESSOA from f_vendas v
left join d_pessoa p on p.ID_PESSOA = v.ID_PESSOA
left join d_tempo t on t.ID_TEMPO = v.ID_TEMPO
where not (t.NU_MES=3 and t.NU_ANO=2020)
GROUP BY p.ID_PESSOA;

drop view if exists comprou_marco;
create view comprou_marco as
select p.ID_PESSOA, p.NM_PESSOA from f_vendas v
left join d_pessoa p on p.ID_PESSOA = v.ID_PESSOA
left join d_tempo t on t.ID_TEMPO = v.ID_TEMPO
where (t.NU_MES=3 and t.NU_ANO=2020)
GROUP BY p.ID_PESSOA;

select nm.ID_PESSOA as 'ID da pessoa', nm.NM_PESSOA as 'Nome da pessoa' from nao_comprou_marco nm
left join comprou_marco cm
on nm.id_pessoa = cm.id_pessoa
where cm.id_pessoa is null;

drop view nao_comprou_marco;
drop view comprou_marco;