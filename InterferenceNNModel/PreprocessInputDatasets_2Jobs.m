    % THis file is updateded by Ahmad and Giuliano in 20Jul2020
   
 function [] = PreprocessInputDatasets_2Jobs(pathDataSets, dacapo)
    %clc
    %clear
    %try
    Z={};
    
    %%%%%%%initpwd=pwd
    pathDataSets
    initpwd=pathDataSets
    cd(initpwd);
    dataset1 = {'DataSetsS1+0+0-noht' 'DataSetsS2+0+0-noht' 'DataSetsS3+0+0-noht' 'DataSetsS5+0+0-noht' 'DataSetsS7+0+0-noht'}; % BASELINE NO-HT
    dataset2 = {'DataSetsS1+0+0-ht' 'DataSetsS1+5+0-ht' 'DataSetsS2+0+0-ht' 'DataSetsS2+5+0-ht' 'DataSetsS2+10+0-ht'}; % BASELINE HT
    dataset3 = {'DataSetsS1+0+0-noht' 'DataSetsS1+1+0-noht' 'DataSetsS1+5+0-noht' 'DataSetsS1+10+0-noht' 'DataSetsS1+15+0-noht' 'DataSetsS2+0+0-noht' 'DataSetsS2+1+0-noht' 'DataSetsS2+5+0-noht' 'DataSetsS2+10+0-noht' 'DataSetsS2+15+0-noht'}; % NICE NO-HT
    dataset4 = {'DataSetsS1+0+0-ht' 'DataSetsS1+5+0-ht' 'DataSetsS2+0+0-ht' 'DataSetsS2+5+0-ht' 'DataSetsS2+10+0-ht'}; % NICE HT
    dataset5 = {'DataSetsS7+0+0-noht' 'DataSetsS7+0+0-noht-batch'}; % SCHEDULER
    datasets = {dataset1{:}, dataset2{:}, dataset3{:}, dataset4{:}, dataset5{:}};
    datasets = {dataset1{:}};
    datasets = {'DataSetsS1+0+0-ht' 'DataSetsS1+0+0-noht' 'DataSetsS1+0+0+0+0-noht'};
    datasets = {'DataSetsS7' 'DataSetsS7+0+0-noht' 'DataSetsS7+0+0-noht-batch' 'DataSetsS7+0+0-noht-fifo' 'DataSetsS7+0+0+0+0-noht' 'DataSetsS7+0+0+0+0-noht-z2' 'DataSetsS7+10+0-noht' 'DataSetsS7+15+5+5+15-noht' 'DataSetsS7+15+10+5+0-noht' 'DataSetsS7+15+10+5+15-noht' 'DataSetsS7+15+10+10+15-noht' 'DataSetsS7+15+10+15+15-noht'};
    datasets = {'DataSetsS7+0+0-noht' 'DataSetsS7+0+0-noht-batch' 'DataSetsS7+0+0-noht-fifo' 'DataSetsS7+10+0-noht'};
    datasets = {'DataSetsS7+0+0+0+0-noht' 'DataSetsS7+0+0+0+0-noht-z2' 'DataSetsS7+15+5+5+15-noht' 'DataSetsS7+15+10+5+0-noht' 'DataSetsS7+15+10+5+15-noht' 'DataSetsS7+15+10+10+15-noht' 'DataSetsS7+15+10+15+15-noht'};
    datasets = {'DataSetsS7+0+0-noht' 'DataSetsS7+0+0+0+0-noht'};
    datasets = {'DataSetsS7+0+0-noht1' 'DataSetsS7+0+0-noht2' 'DataSetsS7+0+0-noht3' 'DataSetsS7+0+0-noht4' 'DataSetsS7+0+0-noht5' 'DataSetsS7+0+0-noht6' 'DataSetsS7+0+0-noht7' 'DataSetsS7+0+0-noht8' 'DataSetsS7+0+0-noht9' 'DataSetsS7+0+0-noht10'};
    datasets = {'DataSetsS7+0+0+0+0-noht6'};% 'DataSetsS7+0+0+0+0-noht2' 'DataSetsS7+0+0+0+0-noht3' 'DataSetsS7+0+0+0+0-noht4'};
    %datasets = {'DataSetsS7+0+0-noht6' 'DataSetsS7+0+0-noht7' 'DataSetsS7+0+0-noht8' 'DataSetsS7+0+0-noht9' 'DataSetsS7+0+0-noht10'};
    datasets = {'DataSetsS8+0+0-noht1' 'DataSetsS8+0+0-noht2' 'DataSetsS8+0+0-noht3' 'DataSetsS8+0+0-noht4' };% 'DataSetsS7+0+0-noht5' 'DataSetsS7+0+0-noht6' 'DataSetsS7+0+0-noht7' 'DataSetsS7+0+0-noht8' 'DataSetsS7+0+0-noht9' 'DataSetsS7+0+0-noht10'};
    datasets = {'DataSetsS8+0+0-noht1' 'DataSetsS8+0+0-noht2' 'DataSetsS8+0+0-noht3' 'DataSetsS8+0+0-noht4' 'DataSetsS7+0+0-noht5' 'DataSetsS7+0+0-noht6' 'DataSetsS7+0+0-noht7' 'DataSetsS7+0+0-noht8' 'DataSetsS7+0+0-noht9' 'DataSetsS7+0+0-noht10' 'DataSetsS7+0+0-noht11' 'DataSetsS7+0+0-noht12'};
    %datasets = {'server08+0+0-noht1' 'server08+0+0-noht2' 'server08+0+0-noht3' 'server08+0+0-noht4'};% 'DataSetsS7+0+0-noht5' 'DataSetsS7+0+0-noht6' 'DataSetsS7+0+0-noht7' 'DataSetsS7+0+0-noht8' 'DataSetsS7+0+0-noht9' 'DataSetsS7+0+0-noht10'};
    %datasets = {'server08+0+0-noht1' 'server08+0+0-noht2' 'server08+0+0-noht3' 'server08+0+0-noht4'};% 'DataSetsS7+0+0-noht5' 'DataSetsS7+0+0-noht6' 'DataSetsS7+0+0-noht7' 'DataSetsS7+0+0-noht8' 'DataSetsS7+0+0-noht9' 'DataSetsS7+0+0-noht10'};
    datasets = {'DataSetsS8+0+0-noht1' 'DataSetsS8+0+0-noht2' 'DataSetsS8+0+0-noht3' 'DataSetsS8+0+0-noht4'};

    ERR =[];
    MAXERR =[];
    servers =         {'p00','DataSetsS1','DataSetsS2','DataSetsS3','DataSetsS4','DataSetsS5','DataSetsS6','DataSetsS7','DataSetsS8'}
    %servers =         {'server00','server01','server02','server03','server04','server05','server06','server07','server08'};

    servers_sockets = [  1,    2,    2  ,  1  ,  1  ,  1  ,  1  ,  1  ,  2  ]
    for d=1:length(datasets)
        p = find(cellfun(@(s) strcmpi(datasets{d}(1:3), s), servers))
        sockets(d) = servers_sockets(p)
        if strfind(datasets{d},'noht')
            hwthreads(d) = 1;
        else
            hwthreads(d) = 2;
        end
        tmp = regexp(datasets{d}, 'p\d\d([+-]\d+)([+-]\d+)','tokens')
        nice(d,1) = str2num(tmp{1}{1});
        nice(d,2) = str2num(tmp{1}{2});
    end
    % [I]=multichoose(6,8)
    % for i=1:size(I) fprintf('run8.sh '); for j=1:6 for k=1:I(i,j) fprintf(' %s',dacapo{j}), end; end; fprintf('\n'); end
    for d=1:length(datasets)
        fprintf(1,'Processing %s\t',datasets{d});
        clear RunQ CPU Errors Tput dacapoRun1Trace
        dataset=datasets{d}
        startpwd=pwd
        %dacapo={'batik','jython','luindex','lusearch','sunflow','xalan'};

        dacapoAbbreviations={'ba','jy','li','ls','sf','xa'};
        basepath=sprintf('%s%s%s',pwd,filesep,dataset)
        cd(basepath);
        nameToRun1Trace=[]; % mapping from dacapo cell array to trace file for 1-job run
        D=dir('2*')
        traces={D.name}
        Run1Trace=zeros(length(traces),2)
        try
            %delete('./mondata.mat')
            load('./mondata.mat')
            %mondata.mat = load('./mondata.mat');
            fprintf(1,' [data]')
            AAAAAAAAA="0000000000000"


        catch
            %% for all experiments
            fprintf(1,' [parse]');
            for j=1:length(traces)
                traces{j}
                cd(traces{j});
                % load utilization data
                AAAAAAAAA="333333333333"
                CurrentPath=pwd
                try
                    CPU{j} = sar_loadcpu('logNew.sar',0,'sar')
                    [~,u]=system('sar -f logNew.sar -q |awk ''{print $2}'' | sed ''/[^0-9]/d''  | sed ''1d''')
                    AAAAAAAAAAA="Old Version of SAR"
                catch me
                    CPU{j} = sar_loadcpu('logNew.sar',0,'sar');
                    [~,u]=system('sar -f logNew.sar -q |awk ''{print $2}'' | sed ''/[^0-9]/d''  | sed ''1d''');
                    AAAAAAAAA="New Version of SAR"

                end
                % load Linux scheduler runqueue data
                u
                RunQ(j,1)=mean(str2num(u));
                RunQ(j,2)=NaN;
                RunQ(j,3)=std(str2num(u));
                RunQ(j,4)=prctile(str2num(u),75);
                % load exceptions and failures
                [~,x]=system('grep Exception *.err |wc|awk ''{print $1}''');
                Errors(j,1)=str2num(x);
                [~,x]=system('grep FAILED *.err |wc|awk ''{print $1}''');
                Errors(j,2)=str2num(x)
                cd(basepath);
            end
            %% load 1-job dataset
            fprintf(1,' [load1]')
            for j=1:length(traces)
                cd(traces{j});
                % load iterations (throughput)
                %[~,y1]=system('cat bench1.err |grep "rundacapo"| awk ''{print $4}''|tail -n 1') % Use this for old version of Dacapo, ex dataset from G 
                [~,y1]=system('cat bench1.err |grep "starting"|awk ''{print $7}''|tail -n 1') % use this for the new version of Dacapo, ex, exp that i have run by myself

                y1
                if ~isempty(str2num(y1))
                    Tput(j,1)=str2num(y1)/length(CPU{j}.all.busy)
                    AAAAAAAAA="----------Test here"
                else
                    Tput(j,1)=0
                end
                % map from dacapo cell array index to trace files index
                tmp = regexp(traces{j}, '\d+(\w+)$','tokens')
                if ~isempty(tmp)
                    f=find(cellfun(@(s) strcmpi(tmp{1}, s), dacapo))
                    nameToRun1Trace(f)=j
                end
                cd(basepath);
                j
            end
            %% load 2-job datasets
            AAAAAAAAA="----------Test here 222222222"
            fprintf(1,' [load2]')
            for j=1:length(traces)
                tmp = regexp(traces{j}, '\d+(\w+)\-(\w+)','tokens')
                if ~isempty(tmp)
                    cd(traces{j});
                    AAAAAAAAA="----------Test here 33333333"
                    j
                    nameToRun1Trace
                    % associate with 1-job runs
                    Run1Trace(j,1) = nameToRun1Trace(find(cellfun(@(s) strcmpi(tmp{1}{1}, s), dacapo)))
                    AAAAAAAAA="----------Test here 44444444"
                    Run1Trace(j,2) = nameToRun1Trace(find(cellfun(@(s) strcmpi(tmp{1}{2}, s), dacapo)))
                    % record iterations (throughput) for first job
                    %[~,y1]=system('cat bench1.err |grep "rundacapo"|awk ''{print $4}''|tail -n 1')  % Use this for old version of Dacapo, ex dataset from G
                    [~,y1]=system('cat bench1.err |grep "starting"|awk ''{print $7}''|tail -n 1') % use this for the new version of Dacapo, ex, exp that i have run by myself

                    if ~isempty(str2num(y1))
                        Tput(j,4)=str2num(y1)/length(CPU{j}.all.busy)
                    else
                        Tput(j,4)=0
                    end
                    % record iterations (throughput) for second job
                    %[~,y2]=system('cat bench2.err |grep "rundacapo"| awk ''{print $4}''|tail -n 1') % Use this for old version of Dacapo, ex dataset from G
                    [~,y2]=system('cat bench2.err |grep "starting"|awk ''{print $7}''|tail -n 1') % use this for the new version of Dacapo, ex, exp that i have run by myself

                    if ~isempty(str2num(y2))
                        Tput(j,5)=str2num(y2)/length(CPU{j}.all.busy);
                    else
                        Tput(j,5)=0;
                    end
                    % total iterations
                    Tput(j,1)=Tput(j,4)+Tput(j,5);
                    cd(basepath);
                end
                AAAAAAAAA="4441111114444"
            end
            AAAAAAAAA="444444444444"
            Tput
            save mondata.mat Run1Trace Tput nameToRun1Trace CPU RunQ Errors traces;
            %To copy mondata file to upper folder
            Filename="cp mondata.mat " + pathDataSets+"/"+"mondata"+d+".mat"
            Filename="cp mondata.mat " + pathDataSets+"/"+"mondata-"+datasets{d}+".mat"
            
            system(Filename)
        end
        stat=zeros(length(traces),4);
        avgCoreOccupancy = zeros(1,length(traces));
        stdCoreOccupancy = zeros(1,length(traces));
        predCoreOccupancySum = zeros(1,length(traces));
        for t=1:length(traces)
            cd(basepath);
            traces{t}
            load mondata.mat
            cd(traces{t});
            AAAAAAAAA="555555555555555"
            pwd

            AAAAAAAAA="666666666666666"

            avgCoreOccupancy(t) = mean(CPU{t}.all.busy * CPU{t}.ncores)
            stdCoreOccupancy(t) = std(CPU{t}.all.busy * CPU{t}.ncores)
            if Run1Trace(t,1)>0
                predCoreOccupancySum(t) = min(CPU{Run1Trace(t,1)}.ncores,mean(CPU{Run1Trace(t,1)}.all.busy * CPU{Run1Trace(t,1)}.ncores) + mean(CPU{Run1Trace(t,2)}.all.busy * CPU{Run1Trace(t,2)}.ncores));
                Tput(t,2) = Tput(Run1Trace(t,1),1) + Tput(Run1Trace(t,2),1)
                RunQ(t,2) = RunQ(Run1Trace(t,1),1) + RunQ(Run1Trace(t,2),1)
            end
            
            save mondata.mat Run1Trace Tput nameToRun1Trace CPU RunQ Errors traces;
            Filename="cp mondata.mat " + pathDataSets+"/"+"mondata-"+datasets{1}+".mat"
            
            system(Filename)
            %Filename="cp mondata.mat " + pathDataSets+"/"+"mondatadddddd"+t+".mat"
            %system(Filename)
            
            %MonData = Filename
        end
    cd(initpwd)		
    end

    AAAAAAAAA="77777777777"
    %%%%%%fclose(fid0);
    if ~ispc
        
        %[s,r]=system('pdflatex main-v2.tex');
        AAAAAAAAAAA="77777777777"
    end
    AAAAAAAAA="888888888888"
    % [s,r]=system('pdflatex main-v2.tex'); [s,r]=system('pdflatex main-v2.tex');
    cd(initpwd);
    %catch me
    %me
    cd(initpwd);
    AAAAAAAAAA="999999999"
    %end
    %%%%%%%%fprintf(1,'Summary (mean)\t\t\t\t\t\t\t %2.2f\t%2.2f\t%2.2f \n', mean(ERR(:,1)), mean(ERR(:,2)), mean(ERR(:,3)))

    %fprintf(1,'Summary (max)\t\t\t\t\t\t\t %2.2f\t%2.2f\t%2.2f \n', max(MAXERR(:,1)), max(MAXERR(:,2)), max(MAXERR(:,3)))

    DoNe="DDDDDDDDDDone"
 end

