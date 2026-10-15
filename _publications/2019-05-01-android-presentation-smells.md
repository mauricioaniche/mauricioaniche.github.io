---
title: "An Empirical Catalog of Code Smells for the Presentation Layer of Android Apps"
download: "https://research.tudelft.nl/en/publications/an-empirical-catalog-of-code-smells-for-the-presentation-layer-of"
authors: "Suelen Goularte Carvalho, Maurício Aniche, Júlio Veríssimo, Rafael Durelli, Marco Aurélio Gerosa"
conference: "Empirical Software Engineering journal (EMSE)"
abstract: "This paper proposes a catalog of code smells that might happen in the presentation layer of Android apps. The paper also empirically evaluates how often these smells happen in ~600 open source Android apps."
categories: ["publication", "journal", "emse", "maintenance"]
year: 2019
doi: 10.1007/s10664-019-09768-9
image: "/assets/images/content/cartoon/publications-2019-05-01-android-presentation-smells.jpg"
image_alt: "Ilustração cartoon: uma pesquisadora examina uma maquete de telefone com pequenas telas e encontra peças mal encaixadas na interface."
---


Os desenvolvedores de software, incluindo os da plataforma móvel Android, buscam constantemente melhorar a manutenibilidade e evolução de seus aplicativos. Os code smells são comumente usados para esse fim, pois indicam sintomas de problemas de design. No entanto, embora a literatura apresente uma variedade de code smells, como God Class e Long Method, características específicas das tecnologias subjacentes não são levadas em consideração. A camada de apresentação de um aplicativo Android, por exemplo, implementa decisões arquiteturais específicas da própria plataforma Android (como o uso de Atividades, Fragmentos e Listeners), bem como lida e integra diferentes tipos de recursos (como layouts e imagens).

Por meio de um estudo de três etapas envolvendo 246 desenvolvedores Android, investigamos os code smells que os desenvolvedores percebem para esta parte dos aplicativos Android. Elaboramos 20 code smells específicos e coletamos as percepções dos desenvolvedores sobre sua frequência e importância. Também implementamos uma ferramenta que identifica os code smells propostos e estudamos sua prevalência em 619 aplicativos Android de código aberto. Nossas descobertas sugerem que: 1) os desenvolvedores percebem code smells específicos da camada de apresentação dos aplicativos Android; 2) os desenvolvedores consideram esses code smells de grande importância e frequência; e 3) os code smells propostos ocorrem em aplicativos Android do mundo real. Nossos code smells específicos de domínio podem ser aproveitados por desenvolvedores, pesquisadores e desenvolvedores de ferramentas para pesquisar trechos de código potencialmente problemáticos.
