#FAZER SELECT COM ALIAS TRADUZINDO COLUNAS
#USAR CASE QUANDO FOR TRADUZIR TEXTO DENTRO DA COLUNA
#REPETIR PARA TODAS AS COLUNAS
#FAZER SELECT NOS MUTUARIOS
#ADICIONAR ALIAS PARA AS TABELAS 
#PRONTO

SELECT * FROM historicos_banco;
SELECT 
m.person_id AS ID_Pessoa,
m.person_age AS Idade,
m.person_income AS Renda,
CASE WHEN m.person_home_ownership = 'Rent' THEN 'Aluguel'
	 WHEN m.person_home_ownership = 'Own'  THEN	'Própria'
     WHEN m.person_home_ownership = 'Mortgage' THEN 'Hipotecada'
     WHEN m.person_home_ownership = 'Other' THEN 'Outro'
     ELSE m.person_home_ownership
     END AS Tipo_de_Residência,
person_emp_length AS Tempo_de_trabalho,
e.loan_id AS ID_Emprestimo,
CASE WHEN e.loan_intent = 'Homeimprovement' THEN 'Melhoramento do lar'
	 WHEN e.loan_intent = 'Venture' THEN 'Investimento'
     WHEN e.loan_intent = 'Personal' THEN 'Pessoal'
     WHEN e.loan_intent = 'Medical' THEN 'Médico'
     WHEN e.loan_intent = 'Education' THEN 'Educação'
     WHEN e.loan_intent = 'Debtconsolidation' THEN 'Quitação de dividas'
     ELSE e.loan_intent 
     END AS Intenção_do_emprestimo,
e.loan_grade AS Grau_emprestimo,
e.loan_amnt AS Quantidade_emprestimo,
e.loan_int_rate AS Taxa_juros,
e.loan_status AS Estado_emprestimo,
e.loan_percent_income AS Renda_percentual,
h.cb_id AS ID_historico,
h.cb_person_default_on_file AS inadimplencia,
h.cb_person_cred_hist_length AS tempo_historico_de_credito
    
     
FROM dados_mutuarios AS m
INNER JOIN ids id ON m.person_id = id.person_id
iNNER JOIN emprestimos e ON e.loan_id = id.loan_id
INNER JOIN historicos_banco h on h.cb_id = id.cb_id
#FILTROS DO BANCO DE DADOS RETIRANDO COLUNAS COM DADOS VAZIOS OU NULOS
WHERE m.person_id != ''
	AND m.person_age IS NOT NULL
	AND m.person_income IS NOT NULL
	AND m.person_home_ownership != ''
	AND m.person_emp_length IS NOT NULL
    AND e.loan_intent != ''
	AND e.loan_grade != ''
	AND e.loan_int_rate IS NOT NULL	
	AND e.loan_status IS NOT NULL
	AND e.loan_percent_income IS NOT NULL
	AND h.cb_person_default_on_file != ''
	AND h.cb_person_cred_hist_length IS NOT NULL
	


