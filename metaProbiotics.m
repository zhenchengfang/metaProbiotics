function metaProbiotics

[file,path] = uigetfile('*','Select one or more fasta files', 'MultiSelect', 'on');
if ~iscell(file)
    file={file};
end
outFile=['metaProbiotics-',datestr(now),'.txt'];
load('RF_all_3.mat');
vecFile=dlmread('k8d100.txt');

for i=1:1:size(file,2)
    inFile=[path,'/',file{i}];
    vec=dnaseq2vec(inFile,vecFile,8);
    [Predict_label,Scores] = predict(RF, vec);
    result{i,1}=file{i};
    result{i,2}=Scores(2);
    if Predict_label{1}=='1'
        result{i,3}='Probiotics';
    else
        result{i,3}='Non-probiotics';
    end
    disp(['The file ',file{i},' is finished.'])
end
disp('Organizing the results...')
result=cell2table(result,'VariableNames',{'Input_file' 'Score' 'Is_probiotics'});
writetable(result,[path,'/',outFile],'delimiter','tab');
disp(['The results file ',outFile,' is under the ',path,' folder'])
disp('Finished.')