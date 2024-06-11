# Autor: your.email@your.domain.com
# Resumo de Palavras-chave :
# Feature: Lista de cenários.
# Scenario: Regra de negócio por meio de uma lista de passos com argumentos.
# Given: Alguma etapa de pré-condição
# When: Algumas ações-chave
# Then: Para observar resultados ou validação
# And,But: Para enumerar mais passos Given, When, Then
# Scenario Outline: Lista de passos para testes baseados em dados com Examples e <placeholder>
# Examples: Contêiner para uma tabela
# Background: Lista de etapas executadas antes de cada um dos cenários
# """ (Doc Strings)
# | (Data Tables)
# @ (Tags/Labels): Para agrupar Cenários
# <> (placeholder)
# ""
# ## (Comentários)

# Exemplo de Template de Definição de Feature
@car-rental
Feature: Serviço de Aluguel de Carros
  Como cliente, quero alugar carros de luxo e utilitários para ter um veículo adequado disponível quando necessário

  @luxury-car
  Scenario: Aluguel de carro de luxo para evento especial
    Given que estou logado no sistema de aluguel de carros
    And quero alugar um carro de luxo para um evento especial
    When eu escolher a opção de aluguel de carro de luxo
    Then eu devo ver uma lista de carros de luxo disponíveis
    And eu devo poder selecionar um carro específico para reserva

  @utility-car
  Scenario: Aluguel de carro utilitário para mudança
    Given que estou logado no sistema de aluguel de carros
    And preciso de um carro utilitário para realizar uma mudança
    When eu solicitar um aluguel de carro utilitário
    Then o sistema deve mostrar a disponibilidade de carros utilitários
    And eu devo poder reservar um carro utilitário por um período de tempo especificado

  @tag2
  Scenario Outline: Aluguel de carros com diferentes durações
    Given que estou logado no sistema de aluguel de carros
    And quero alugar um carro do tipo <type>
    When eu selecionar uma duração de aluguel de <days> dias
    Then eu devo ver o custo total do aluguel com <discount> aplicado, se aplicável

    Examples: 
      | type    | days | discount          |
      | luxury  |   10 | desconto especial |
      | luxury  |    3 | sem desconto      |
      | utility |    7 | sem desconto      |

  @last-minute
  Scenario: Aluguel de última hora de um carro de luxo
    Given que estou logado no sistema de aluguel de carros
    And quero alugar um carro de luxo imediatamente
    When eu solicitar um aluguel de última hora
    Then o sistema deve mostrar os carros de luxo disponíveis
    And eu devo receber uma notificação sobre a tarifa de última hora

  @weekend-rental
  Scenario: Aluguel de carro utilitário para fim de semana
    Given que estou logado no sistema de aluguel de carros
    And preciso de um carro utilitário para o fim de semana
    When eu reservar o carro para o período de fim de semana
    Then o sistema deve mostrar os carros disponíveis
    And eu devo ver qualquer tarifa adicional aplicável para o aluguel de fim de semana
