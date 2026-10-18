# Build e publicação

O site usa Jekyll 3.10, Ruby 3.3 e Node 22. O gem `github-pages` mantém as versões
compatíveis, mas não é carregado: o build personalizado precisa executar os plugins
locais que exportam Markdown, criam verbetes e filtram posts futuros.

```sh
bundle install
npm ci
npm run build
bundle exec ruby scripts/check-publishing.rb
```

`npm run build` gera cards e metadados das imagens, executa `bundle exec jekyll build`,
indexa o HTML com Pagefind e roda as verificações em `_site/`. Os cards e os metadados
também são versionados para previews funcionarem em builds simples do Jekyll. Ao
mudar capas, títulos ou páginas, execute `npm run assets` e versione as mudanças
geradas. As capas existentes têm prioridade sobre cards tipográficos.

Para visualizar busca e URLs sem extensão localmente, depois do build completo:

```sh
bundle exec jekyll serve --skip-initial-build --no-watch
```

Um rebuild do Jekyll limpa os arquivos do Pagefind; rode `npm run search` novamente.

## GitHub Pages

O workflow `.github/workflows/site.yml` verifica PRs e publica `master` somente depois
do build e dos testes. Em **Settings → Pages → Build and deployment → Source**, use
**GitHub Actions**. O modo antigo de build por branch ignora plugins locais e não
executa Pagefind. Esta alteração de configuração remota não é feita pelo código.

O workflow agendado reconstrói o site uma vez por dia às 13h30 UTC (10h30 em
São Paulo). Os horários do GitHub Actions podem sofrer atraso; o cron não promete
execução no minuto exato. Ele roda na branch padrão.

`future: false` e o filtro da coleção `_blog` impedem que posts futuros apareçam no
HTML, nas listas, no índice, nos feeds, na busca e nos arquivos para LLMs. Preserve
as datas existentes: meia-noite em São Paulo equivale a 03:00 UTC. O teste de
publicação simula os dois lados da virada da data em um diretório temporário.

Páginas que não devem ser indexadas podem declarar `noindex: true`; o build também
as retira do sitemap. `sitemap: false` em páginas HTML emite `noindex, follow`.
Rascunhos da coleção devem declarar `published: false`.

No sitemap, `last_modified_at` explícito tem prioridade. Para entradas de mídia,
o fallback é `published_on`; sem uma data conhecida, `lastmod` é omitido. O build
também não usa o horário do checkout como data de alteração de arquivos estáticos.

## Analytics

O Universal Analytics foi removido e a integração GA4 usa a propriedade existente
**Blog em inglês - GA4**, da conta **Meu Blog**, preservando seu histórico:

- Propriedade: `366783508`.
- Fluxo web: `4972851118`.
- URL: `https://mauricioaniche.com`.
- Measurement ID: `G-GE39H77LMB`.
- Configuração: `analytics.provider: ga4` e `analytics.ga4_id` em `_config.yml`.

A propriedade e o identificador foram conferidos no Google Analytics pelo Chrome
em 18/10/2026. O painel informou coleta ativa nas últimas 48 horas; portanto, o
relato inicial de ausência de métricas não corresponde ao estado encontrado na
conta. A atualização do endereço do fluxo mantém a mesma propriedade e seu histórico.

A inclusão de um único snippet por página foi conferida no HTML gerado localmente.
A confirmação de uma visita na nova versão publicada precisa ocorrer depois do
deploy, no relatório em tempo real. Não confunda tráfego já existente na propriedade com uma visita da nova versão.

Para desativar a integração, use `analytics.provider: null`. A alternativa Umami
permanece disponível no template, mediante configuração de `umami_website_id` e
`umami_script_url`.

## Traduções

Ainda não há pares de artigos traduzidos no acervo. Nenhum artigo foi traduzido
automaticamente por esta manutenção. Para criar um par, mantenha o original em
português, preserve sua URL e dê um slug em inglês à tradução. No front matter da
tradução, defina `lang: en`, `translation_url: /blog/slug-original/` e
`translation_reviewed: true` ou `false`, conforme a revisão real. O build cria a
relação recíproca, os hreflang e o JSON-LD. A tradução exibe um aviso sobre origem e
revisão. Sem informação de revisão, o aviso diz que ela não foi registrada.

O feed `/feed.xml` contém até 50 artigos em português, e `/en/feed.xml` até 50 em
inglês. O feed inglês permanece vazio até a primeira entrada com `lang: en`.

## Verificações externas após publicar

O build valida os arquivos locais. Depois do deploy, confira o redirect de `www`
para o apex, os endpoints `sitemap.xml`, `robots.txt`, `llms.txt`, `llms-full.txt`,
`feed.xml`, `en/feed.xml`, `/busca` e `/indice/adyen/`. Submeta o sitemap na
propriedade de domínio do Search Console e teste um post no LinkedIn Post Inspector,
no Schema.org Validator e no validador de feeds do W3C. Essas verificações remotas
não são confirmadas por um build local.

Os perfis de LinkedIn, X, GitHub e Manning já identificados estão em `author.same_as`.
O perfil exato do Google Scholar ainda precisa de confirmação antes de entrar ali.
A bio documenta formação na USP e trabalho na TU Delft; por isso apenas a USP consta
como `alumniOf`, sem transformar um vínculo de emprego em formação acadêmica.
