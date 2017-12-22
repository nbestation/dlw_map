
clc, clear all, close all
gca=subplot(1,2,1);
a=[33.4844	47.4221	20.3966	37.2238];
b=[2.3796	6.9688	3.2295	9.0085];
hold on;
for i=1:4
    h=bar(i,a(i));
    if ((i == 1) || (i == 3))
        %h=bar(i,a(i));
        set(h,'FaceColor','w');
    else
        %h=bar(i,a(i));
        set(h,'FaceColor','g');
    end
end
errorbar(a,b,'k','LineStyle','none');
set(gca,'XTick',1:4,'XTickLabel',{'Amb','+N','Amb','+N'},'FontSize',35,'YTick',10:15:70,'FontWeight','bold');
ylabel('CV(%)');
ylim([10 70]);
xlabel('Upper Slope    Lower Slope','FontSize',35,'FontWeight','bold');
title('MBC','FontSize',45,'FontWeight','bold'); 

% gca=subplot(1,2,2);
% a=[41.4633	49.4304	21.3199	33.7074];
% b=[5.1032	3.0629	2.8947	5.2746];
% hold on;
% bar(a);
% for i=1:4
%     h=bar(i,a(i));
%     if ((i == 1) || (i == 3))
%         %h=bar(i,a(i));
%         set(h,'FaceColor','w');
%     else
%         %h=bar(i,a(i));
%         set(h,'FaceColor','g');
%     end
% end
% errorbar(a,b,'k','LineStyle','none');
% set(gca,'XTick',1:4,'XTickLabel',{'C','N','C','N'},'FontSize',35,'YTick','','FontWeight','bold');
% %ylabel('CV(%)');
% ylim([10 70]);
% xlabel('Upper Slope    Lower Slope','FontSize',35,'FontWeight','bold');
% title('MBN','FontSize',45,'FontWeight','bold');  

gca=subplot(1,2,2);
a=[46.0227	53.267	36.0085	44.9574];
b=[4.4745	6.179	2.7699	4.4744];
hold on;
for i=1:4
    h=bar(i,a(i));
    if ((i == 1) || (i == 3))
        %h=bar(i,a(i));
        set(h,'FaceColor','w');
    else
        %h=bar(i,a(i));
        set(h,'FaceColor','g');
    end
end
errorbar(a,b,'k','LineStyle','none');
set(gca,'XTick',1:4,'XTickLabel',{'Amb','+N','Amb','+N'},'FontSize',35,'YTick','','FontWeight','bold');
%ylabel('CV(%)');
ylim([10 70]);
xlabel('Upper Slope    Lower Slope','FontSize',35,'FontWeight','bold');
title('MR','FontSize',45,'FontWeight','bold');