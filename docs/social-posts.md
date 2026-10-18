# Adaptação de artigos para redes sociais

Estas orientações vêm do pedido de 17/10/2026 e dos exemplos relatados por Paulo
Silveira. Os números de alcance citados naquele pedido são dele; não são métricas
do site de Maurício. Não há dados de um novo serviço de analytics neste repositório.

Ao preparar uma versão para LinkedIn e X:

- Abra com o fato concreto da história. Use números apenas quando constarem da
  fonte e primeira pessoa apenas para experiências do próprio Maurício.
- Inclua a posição pessoal até o terceiro parágrafo.
- Preserve dúvidas reais. Evite perguntas artificiais para obter comentários.
- Como horário editorial sugerido, prefira dias úteis entre 10h e 12h30 em
  `America/Sao_Paulo`, nas duas redes na mesma hora. Isso não agenda nem publica
  mensagens automaticamente.
- Ajuste o texto à rede sem reescrever o artigo publicado e mantenha o link para
  a URL original do blog.

## Preservar a conversa no artigo

Quando houver comentários reais para importar, salve um JSON por slug em
`_data/conversations/<slug>.json`. O layout publica a seção apenas quando houver
comentários; não há exemplos fictícios no acervo. Transcreva o comentário e o nome
como publicados e registre o link para a conversa original. A data é opcional e só
deve ser preenchida quando conhecida.

Formato de cada arquivo (substitua os campos pelos dados da fonte):

```json
{
  "comments": [
    {
      "author": "Nome publicado",
      "source": "LinkedIn",
      "url": "https://www.linkedin.com/feed/update/ID-REAL/",
      "text": "Transcrição do comentário real",
      "published_at": "2026-10-17T10:30:00-03:00"
    }
  ]
}
```

`source` aceita `LinkedIn` ou `X`. Para o X, use a URL do post em `x.com` ou
`twitter.com`. O texto é escapado antes de virar HTML. O smoke test valida o formato,
os links, o slug e a presença dos comentários na página gerada. Não há integração
com contas de redes sociais nem importação automática de comentários.
