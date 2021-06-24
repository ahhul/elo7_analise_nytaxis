# elo7_analise_nytaxis
Repositório para o case técnico de análise dos táxis amarelos de New York para a empresa Elo7.
Esta análise é baseada nos dados retirados de https://registry.opendata.aws/nyc-tlc-trip-records-pds/.


Para construir a imagem a partir do docker, dentro do diretório elo7\_analise\_nytaxis execute: 
    
    $ docker build .
    
Para executar a imagem criada anteriormente e executar o jupyter notebook no navegador local:

    $ docker run -p 8888:8888 [id-da-imagem]

O notebook se encontra no diretório work/.
