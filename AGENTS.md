# Trabalho neste site

Este é um site Jekyll. O acervo fica em `_blog`, `_media`, `_talks` e
`_publications`. Preserve datas, URLs, categorias, tags e conteúdo ao trocar
ilustrações. Use `tags: [ia]` quando inteligência artificial for assunto central;
essa tag alimenta a página `/ia` sem substituir as categorias existentes.

## Ilustrações das entradas

O usuário aprovou em 15/10/2026 um estilo de **cartoon editorial alegre,
colorido e divertido**. Cada entrada deve ter uma imagem própria, relacionada
ao conteúdo. Isso vale para posts, podcasts, artigos externos, palestras e
publicações científicas. Não volte a usar a mesma imagem genérica em várias
entradas.

### Referências aprovadas

Veja as cinco amostras em `assets/images/blog/cartoon/` e seus prompts em
`assets/images/blog/cartoon/prompts.json`. Exemplos:

- `julgamento-engenheiro-cartoon.jpg`: humano e robô escolhendo uma ponte.
- `testando-agentes-cartoon.jpg`: robôs num circuito de testes.
- `senso-critico-ia-cartoon.jpg`: pessoa refletindo sobre um quebra-cabeça.
- `repensar-code-review-cartoon.jpg`: revisão colaborativa numa esteira.
- `seguranca-ia-cartoon.jpg`: inspeção de um escudo remendado.

### Direção de arte

- Cartoon 2D com formas arredondadas, personagens expressivos, contornos
  desenhados à mão, sombreamento suave de guache e textura discreta de papel.
- Cores vivas, luz acolhedora e clima otimista. Evite aparência corporativa
  genérica, fundos escuros repetidos e a repetição de um único ícone.
- Uma cena concreta que comunique a ideia central do texto. Leia o título e o
  conteúdo antes de escolher a metáfora. Varie cenários, enquadramentos,
  personagens, objetos e paletas entre entradas próximas.
- Robôs só quando fizerem sentido para o assunto. Podcasts podem incluir uma
  conversa com microfones e elementos do tema. Não use a mesma dupla de
  microfones como única diferença entre episódios.
- Pessoas ilustradas são personagens genéricos; não represente convidados ou
  autores como se fossem retratos reais.
- Nas publicações científicas, a capa é uma metáfora editorial, não uma figura
  de resultados. Não invente gráficos, estatísticas ou conclusões do estudo.
- Não inclua texto, títulos, letras, números, trechos de código, marcas,
  assinaturas ou marcas-d'água dentro da imagem.
- Composição horizontal em proporção 8:5. Rostos e objetos importantes devem
  ficar na região central, com margens para o corte dos cards. A cena precisa
  continuar legível como miniatura.

### Geração e integração

1. Use a skill `imagegen` e o gerador de imagens integrado, conforme as
   capacidades disponíveis. Gere uma imagem por entrada. Não substitua a
   geração por um SVG ou por um desenho feito em código. Prefira configurações
   econômicas se a ferramenta oferecer esse controle, sem mudar de modelo ou
   exigir uma chave de API desnecessariamente.
2. Use o modelo de prompt abaixo e uma cena diferente para o conteúdo novo.
   Consulte também `assets/images/content/cartoon/prompts.json`, que registra
   os prompts e a cobertura da migração do acervo.
3. Inspecione as imagens antes de entregar ou publicar o trabalho: assunto,
   estilo, anatomia, enquadramento, ausência de texto e legibilidade no card.
   Para lotes grandes, revise também galerias de miniaturas para detectar
   repetições. Corrija problemas relevantes encontrados nessa revisão.
4. Preserve o original gerado. Salve uma cópia otimizada para web em
   `assets/images/content/cartoon/<colecao>-<slug>.jpg`. Nunca deixe a imagem
   referenciada pelo site apenas no diretório pessoal do gerador.
5. Para imagens opacas, use JPEG com aproximadamente 1200 px de largura e
   qualidade 80–85. No macOS, uma conversão possível é:

   ```sh
   sips -s format jpeg -s formatOptions 80 --resampleWidth 1200 \
     original.png --out assets/images/content/cartoon/colecao-slug.jpg
   ```

6. Atualize `image` e `image_alt` no front matter. A descrição alternativa deve
   descrever a cena de forma breve em português. Não altere imagens internas
   de gráficos científicos, slides ou diagramas originais ao trocar a capa.
7. Registre o prompt e o arquivo final no manifesto, preservando as entradas
   anteriores. Não regenere imagens já aprovadas sem necessidade.
8. Gere o site e confira o card e a página de detalhe em desktop e celular.
   Verifique que o arquivo existe, carrega corretamente e é exclusivo daquela
   entrada. Confirme que não houve alteração em datas, links ou textos.

### Modelo de prompt

```text
Use case: illustration-story.
Asset type: landscape editorial cover for a software engineering website.
Article title and short synopsis: [context only, do not render as text].
Scene: [specific metaphor for this entry, distinct from neighboring covers].
Style: cheerful colorful hand-painted 2D cartoon; rounded expressive adult
characters, hand-drawn dark outlines, gentle gouache shading, subtle paper
grain. Happy, playful, welcoming. Use robots only if relevant to the subject.
Palette: [a distinct harmonious combination of vivid colors].
Composition: horizontal 8:5; readable at thumbnail size; keep important faces
and objects inside the central 85 percent; generous cropping margins.
One complete scene, no collage or panels. No text, letters, numbers, code,
logos, signatures or watermark. Editorial metaphor, not scientific results.
```
