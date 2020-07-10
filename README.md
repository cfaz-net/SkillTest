# Teste para desenvolvedor RoR Full Stack Cfaz.net

Olá, tudo bem?

Esse repositório é um teste de competências desenvolvido pela empresa Cfaz.net para seleção de candidatos à vaga de desenvolvedor Ruby on Rails.

O teste consiste em fazer algumas modificações neste projeto. Para isso, você deve fazer um fork do projeto, fazer as alterações de acordo com as indicações abaixo e enviar o link do seu github para rh@cfaz.net. Você terá 7 dias para finalizar. Boa sorte!

## Contextualização
Todo paciente que é indicado para fazer um tratamento ortodôntico deve fazer um exame chamado cefalometria, que é um laudo realizado sobre a telerradiografia (radiografia lateral do crânio). Esse exame mede distâncias e ângulos do crânio e auxilia o ortodontista a fazer o planejamento. A partir disso, o ortodontista define quanto tempo e qual aparelho ortodôntico o paciente deverá usar. Uma dessas medidas, se chama profundidade maxilar, que é um ângulo formado por dois planos, chamados Po-Or e N-A. Po é o ponto pório, Or é o ponto orbital, N é o ponto násio e A é o ponto A. Então para conseguir medir esse ângulo, precisamos desses quatro pontos. Segue uma imagem para facilitar o entendimento.

![profundidade maxilar](https://user-images.githubusercontent.com/1520828/59073049-ccdf3780-889b-11e9-8e10-c7b30175b4ae.png)

## Teste
Separamos o teste em três partes e cada parte testa um conhecimento. Faça o maior número de partes que você conseguir, tudo que for entregue será levado em consideração. Você pode usar qualquer gem ou plugin que precisar, caso não esteja especificado. Este projeto tem o CRUD de paciente e de exame prontos. Cada Paciente  pode ter um exame ou mais, cada exame tem 4 pontos e a partir desses pontos que será calculado o ângulo de profundidade maxilar.

### Parte 1 - Conhecimentos gerais de RoR, matemática e lógica
- Fazer a lógica do método "maxillary_depth_angle" que está no model Exam. Esse método deve retornar o valor do ângulo da profundidade maxilar.
- O método deve passar nos specs, então rode e certifique que os dois specs estejam passando (**ATENÇÃO** Não sobrescreva ou altere o arquivo spec/models/exam_spec.rb)

### Parte 2 - Conhecimentos de front-end
- O CRUD de exames está quase todo no client side, apenas a função de deletar exame não está completa. Faça a exclusão de exame no client side. Lembrando que a alteração deverá refletir na tela sem fazer o reload e o exame deve ser removido do banco de dados.

### Parte 3 - Conhecimentos de WebGL com three.js
**(Obrigatório o uso do three.js)**
- Criar na página show de exame um canvas para representar graficamente os planos Po-Or e N-A do paciente no espaço 3D. O resultado esperado é o desenho dos dois planos e a interseção desses.
- Implementar ações de movimento de câmera para visualizar os planos de outros ângulos. (dica: utilizar o THREE.TrackballControls)

## Entrega
O prazo de entrega será definido por você. Responda o email com o prazo que você precisa para realizar esta atividade.

Boa sorte!
