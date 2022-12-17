Desafio data science 2 Alura

Prever valor de imóveis com base em dados da cidade do Rio de Janeiro 

| :placard: Vitrine.Dev |     |
| -------------  | --- |
| :sparkles: Nome        | Desafio data science
| :label: Tecnologias | python, pyspark
| :rocket: URL         | -
| :fire: Desafio     |  	https://www.alura.com.br/challenges/data-science-2?host=https://cursos.alura.com.br

<!-- Inserir imagem com a #vitrinedev ao final do link -->
![](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fres.cloudinary.com%2Fhevo%2Fimage%2Fupload%2Ff_auto%2Cq_auto%2Fv1617607659%2Fhevo-learn%2Fpyspark-1.png&f=1&nofb=1&ipt=0ea1268364f6eb82979b6a58153f7707b873e798d44b437958303579b5396d48&ipo=images#vitrinedev)

Detalhes do projeto:

Esse projeto foca na utilização do PySpark para a análise dos dados de imóveis localizados em alguns bairros do Rio de Janeiro. A imobiliaria está com dificuldades na venda e aluguel desses imóveis devido a seu métodos de precificação e recomendação.

O desafio foi separado em 3 etapas:

[Semana 1](https://github.com/fafnirkyu/data-challenge-alura/tree/Semana-1) - Transformação e limpeza dos dados brutos utilizando pyspark;

[Semana 2](https://github.com/fafnirkyu/data-challenge-alura/tree/Semana-2) - Finalização da limpeza de dados assim como o desenvolvimento dos modelos de regressão linear e gradient-boosted tree regression e a análise de correlação;

[Semanas 3 e 4](https://github.com/fafnirkyu/data-challenge-alura/tree/Semana-3) - Vetorização, padronização, redução de dimensionalidade e criação de clusters, incluindo um pipeline das etapas.
Criação de clusters, cálculo de distância euclidiana e por fim a criação de uma função recomendadora de imóveis.

[Dados brutos utilizados](https://caelum-online-public.s3.amazonaws.com/challenge-spark/semana-1.zip)

Dicinário dos dados
| Coluna | Descrição |
| --- | --- |
| id              |	Código de identificação do anúncio no sistema da InsightPlaces|
| tipo_unidade    |	Tipo de imóvel (apartamento, casa e outros)|
| tipo_uso        |	Tipo de uso do imóvel (residencial ou comercial)|
| area_total      |	Área total do imóvel (construção e terreno)|
| area_util       | 	Área construída do imóvel|
| quartos         |	Quantidade de quartos do imóvel|
| suites          |	Quantidade de suítes do imóvel|
| banheiros       |	Quantidade de banheiros do imóvel|
| vaga            |	Quantidade de vagas de garagem do imóvel|
| caracteristicas |	Listagem de características do imóvel|
| andar           |	Número do andar do imóvel|
| endereco        |	Informações sobre o endereço do imóvel|
| valores         |	Informações sobre valores de venda e locação dos imóveis|
