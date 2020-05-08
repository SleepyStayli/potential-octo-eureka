choice=1;
while choice==true
clc
%choosing the right horse
horsen=["Steeltoe","Tenessee","Marigold","Kincsem","Hollyhock","Daisy","Clover","Molly","Clydesdale","Bronco"];
horsens=sort(horsen);
rhns=[1,2,3,4,5,6,7,8,9,10];
rh=sort(rhns,'ascend');
disp('The horses, you can bet on!')
fprintf('%s ',horsens)
fprintf('\n %5.0f %5.0f %7.0f %8.0f %7.0f %7.0f %7.0f %7.0f %8.0f %8.0f\n',rh)
idx=0;
while idx==0
x = input('Enter the number of your choosen horse: ');
for i=1:length(rh)
    if x==rh(i)
        idx=idx+1;
    end
end
end
%chances
cmin=1;
cmax=1.3;
n=length(rh);
op=cmin+rand(1,n)*(cmax-cmin);
%race
race=randi(floor(sum(op)),length(rh));
llap=(sum(race).*op);
%3
[max1, ind1] = max(llap);
llap(ind1) = 0;
[max2, ind2] = max(llap);
llap(ind2) = 0;
[max3, ind3] = max(llap);
llap(ind3) = 0;


first=horsens(ind1);

second=horsens(ind2);

third=horsens(ind3);
top3=[first second third];
%disp
disp('The first three horses are: ')

fprintf('%s   ',top3)
fprintf('\n')
%check for win
if x==rh(ind1)
    disp('Congratulations, you won!')
elseif x==rh(ind2)
    disp('Your horse came in second, better luck next time!')
elseif x==rh(ind3)
    disp('Your horse came in third, better luck next time!')
else disp('Your horse was not fast enough, better luck next time!')
end
choice=input('Do you want to bet on the next run? (true/false) ');
end