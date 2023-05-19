% 
% Version:      1.0
% Date:         19-may-2023
% Modified by:  Molina Vidal D.A.
%
% ma_madq2mat 
% [English] The file with the .madq extension is saved to a file with the
% .mat % extension. Requires the Open_File_MAdq() function;
% 
% [Español] El archivo con extensión .madq es guardado en un archivo con 
% extensión .mat. Requiere de la función Open_File_MAdq().
%
% [Português] O arquivo com extensão .madq é salvo em um arquivo com 
% extensão .mat. Requer a função Open_File_MAdq().
%
function ma_madq2mat(file_name)
%% import cru data
all_data = Open_File_MAdq();
if (isempty(all_data) == 1),return; end
%%
fprintf('\nWait...\n')
save(file_name, 'all_data');
fprintf('\nFile saved!\n')