# Importacao a imagem base do notebook do jupyter
FROM jupyter/base-notebook

# Copia do script de bash para o download dos arquivos .csv refente as viagens dos taxis amarelos e bairros de NY
COPY download-data-nyc-tlc-2020.sh ./work/data/download-data-nyc-tlc-2020.sh

# Copia o notebook de analise para o diretório work
COPY analise-nytaxis.ipynb ./work/analise-nytaxis.ipynb

# Instalacao das bibliotecas do python necessarias para a analise 
RUN pip3 install --no-cache \
   numpy \
   pandas \
   matplotlib \
   seaborn

# Instalacao da AWS Command Line Interface
RUN pip3 --no-cache-dir install --upgrade awscli

# Execucao do script para download dos arquivos .csv necessários a partir da AWS CLI
RUN ./work/data/download-data-nyc-tlc-2020.sh
