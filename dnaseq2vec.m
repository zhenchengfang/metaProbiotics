function vec=dnaseq2vec(fastaFile,vecFile,k)

%allVec=dlmread(vecFile);
if exist('mer_counts.jf')
    unix('rm mer_counts.jf');
end

cmd=['./jellyfish-linux count -m ',num2str(k),' -t 5 -s 1G ',char(39),fastaFile,char(39)]; 
unix(cmd);

if exist('kmer_count.fasta')
    unix('rm kmer_count.fasta');
end

cmd='./jellyfish-linux dump mer_counts.jf > kmer_count.fasta'; 
unix(cmd);

kmer_count=fastaread('kmer_count.fasta');
kmer_freq=zeros(size(vecFile,1),1);
for i=1:1:size(kmer_count,1)
    index=0;
    mer=kmer_count(i).Sequence;
    mer=upper(mer);
    for j=1:1:size(mer,2)
        index=index+nt2num(mer(j))*(4^(j-1));
    end
    index=index+1;
    kmer_freq(index)=str2num(kmer_count(i).Header);
end
kmer_freq=kmer_freq/sum(kmer_freq);
vec=zeros(1,size(vecFile,2));
for i=1:1:size(kmer_freq,1)
    vec=vec+kmer_freq(i)*vecFile(i,:);
end
    



