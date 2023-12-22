echo off 
title Limpar Fila de Impressao
rem O comando abaixo, pára o serviço de impressão 
net stop spooler 
rem entra no diretorio C 
c: 
rem abre a pasta de impressão 
cd %systemroot%\\system32\\spool\\printers 
rem deleta os arquivos 
del /f /s *.shd 
del /f /s *.spl 
rem reinicia o serviço de impressão 
net start spooler 
Echo Processo Terminado 
pause
