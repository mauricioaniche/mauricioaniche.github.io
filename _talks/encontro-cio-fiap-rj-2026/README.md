# É hora de repensar a Engenharia de Software

Apresentação de Maurício Aniche para o Encontro CIO / FIAP / RJ / 2026.
O roteiro tem 32 slides principais para
aproximadamente 40 minutos e 6 slides complementares.

## Abrir

Abra `index.html` diretamente no Chrome. O Reveal.js, as fontes e as imagens
estão na própria pasta. Não há instalação nem etapa de compilação.

Para abrir a apresentação por um servidor local, execute na pasta:

```sh
python3 -m http.server 8765 --bind 127.0.0.1
```

Abra <http://127.0.0.1:8765/> no Chrome.
Encerre o servidor com `Ctrl+C` no terminal.

## Editar

- **`index.html`**: todo o conteúdo, em HTML comum. Cada `<section>` é um slide.
  Os comentários numeram os slides para facilitar a localização. Remova a
  seção inteira para excluir um slide. Arraste a seção para mudar a ordem.
- **`theme.css`**: cores, tipografia, tamanhos e disposição dos elementos.
- **`deck.js`**: opções do Reveal.js, exibição do apoio e carregamento dos tweets.
- **`fontes.html`**: bibliografia navegável, com seus posts e as fontes originais.
- **`fontes.json`**: catálogo dos arquivos do blog usados como fontes.
- **`assets/images/`**: ilustrações do acervo, capturas das publicações e diagrama da fábrica da OpenAI.
- **`assets/tweets/`**: capturas locais das publicações e respostas oficiais do oEmbed.
- **`vendor/reveal/`**: Reveal.js 6.0.2 e fonte Source Sans Pro, com as licenças.

Os slides são o arquivo final editável. Não é necessário executar um gerador
para refletir suas alterações. Salve o HTML e atualize o navegador.

## Navegação

| Tecla | Ação |
| --- | --- |
| Setas ou espaço | Avançar e voltar |
| `Esc` | Visão geral dos slides |
| `F` | Tela cheia |
| `B` | Pausar a projeção |
| `Ctrl+Shift+F` | Buscar texto |
| `Alt` + clique | Ampliar uma região |

O atributo `id` define o endereço do slide. Nos slides renomeados, `data-id` mantém o endereço anterior funcionando no Reveal.js. O endereço inclui o identificador, por exemplo `#/orquestrar-a-fabrica`.

## Slides complementares, tweets e impressão

- **Apresentação principal:** <http://127.0.0.1:8765/>
- **Com os seis slides de apoio:** <http://127.0.0.1:8765/?apoio=1>
- **Tweets ao vivo ao chegar ao slide:** <http://127.0.0.1:8765/?tweets=1>
- **Apoio e tweets ao vivo:** <http://127.0.0.1:8765/?apoio=1&tweets=1>
- **Imprimir ou salvar como PDF:** <http://127.0.0.1:8765/?print-pdf>

Por padrão, as publicações do X aparecem em capturas locais para evitar
dependência de conexão durante a palestra. Os autores e links permanecem
visíveis. O botão abaixo de cada publicação troca a captura pelo embed
oficial, incluindo vídeo quando disponível. Se o X não responder, a captura
permanece. A síntese em português ao lado continua editável no HTML.

Os embeds ao vivo e os links externos exigem internet. Para imprimir,
as capturas locais mantêm as publicações visíveis.

## Sequência e tempo

| Slides | Bloco | Tempo sugerido |
| --- | --- | --- |
| 1–4 | A tese, a migração do Spring Boot e o e-mail duplicado | 0–3 min |
| 5–9 | Decisões de produto, arquitetura e orquestração da fábrica | 3–7 min |
| 10–21 | Revisão de código, gargalo da entrega, guardrails, testes, dívida técnica e responsabilidade pelo PR | 7–20 min |
| 22–25 | Incidentes e infraestrutura para recuperar a produção | 20–28 min |
| 26–28 | A fábrica da OpenAI e o papel do dev | 28–35 min |
| 29–32 | Formação, produto e provocação final | 35–40 min |
| 33–38 | Material de apoio | Conforme necessário |

## Fontes e contexto

Os slides distinguem experiências próprias, relatos de empresas, propostas e
exemplos hipotéticos. A taxa de incidentes da incident.io é por mudança,
sem inferir redução no total absoluto. A comparação entre IA e humanos no
Scion permanece atribuída à equipe daquele projeto.

Os artigos do blog datados de 24 e 27/11/2026 ainda têm data futura no
repositório. Nesses casos, os slides apontam para a entrada correspondente
da bibliografia local e para o artigo original já publicado. Os links
públicos do blog também estão na bibliografia para uso posterior.

Esta pasta faz parte do deploy Jekyll. A apresentação fica disponível em
<https://mauricioaniche.com/encontro-cio-fiap-rj-2026/>. A entrada no acervo
fica em `_talks/encontro-cio-fiap-rj-2026.md` e aparece na lista de palestras,
na página de IA e no índice remissivo. O conteúdo dos slides continua editável
diretamente no HTML.

## Ilustração do slide 8

Arquivo: `assets/images/orquestrar-a-fabrica.jpg`. Prompt usado no gerador de imagens integrado:

> Cartoon editorial 2D horizontal 8:5 para o slide “Orquestra a fábrica!”. Uma engenheira brasileira em uma oficina luminosa ajusta com uma mão a alavanca que direciona peças por uma bifurcação de uma esteira. Dois braços robóticos montam módulos coloridos, e um gabarito de encaixe ao fim da esteira verifica se o módulo tem o formato esperado. Uma só cena coerente, com a mão na alavanca como foco. Enquadramento próximo, silhuetas simples e legíveis em projeção, sem excesso de peças. Formas arredondadas, contornos desenhados à mão, guache e leve textura de papel. Azul-petróleo, coral, amarelo e creme. Sem texto, letras, números, marcas ou telas com código.
