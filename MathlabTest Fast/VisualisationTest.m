%{
 plot(x,arrIterations1x1x1);
 hold on;
 plot(x,arrIterations2x2x2);
 plot (x,arrIterations10x10x10);
 hold off;
 title('Iterationsversuche in Abh�ngig von der Boxgroesse');
ylabel('Iterationsversuche');
xlabel('Versuche');
legend('1m x 1m x 1m','2m x 2m x 2m', '10m x 10m x 10m');
axis([0 100 0 15]);
%}
%{
x = categorical({'Anordnung1','Anordnung2', 'Anordnung3', 'Anordnung4','Anordnung5'});
y = [78,578,858,43,32];
b = bar(x,y);

xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')


 title('Fehleranzahl in Abh�nigkeit der Mikrofonpositionen');
ylabel('Fehleranzahl');
%}

x = categorical({'Sch�tzwert1','Sch�tzwert2', 'Sch�tzwert3', 'Sch�tzwert4','Sch�tzwert5'});
y = [41,138,449,494,7438];
b = bar(x,y);

xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')


 title('Fehleranzahl in Abh�nigkeit des Sch�tzwertes');
ylabel('Fehleranzahl');