%% test

close all;



basis = 3;
stack = 2;

e1 = bases{basis}(:, :, 1);
    e2 = bases{basis}(:, :, 2);
    e3 = bases{basis}(:, :, 3);
    e4 = bases{basis}(:, :, 4);

for s = 1:400
   figure(1);
   subplot(2, 4, 2);
   imagesc(stacks{stack}(:,:,s));
   [u, r] = projection(stacks{stack}(:,:,s), e1,e2,e3,e4);
   subplot(2, 4, 3);
   imagesc(u);
   subplot(2, 4, 5);
   imagesc(bases{basis}(:,:,1));
   subplot(2, 4, 6);
   imagesc(bases{basis}(:,:,2));
   subplot(2, 4, 7);
   imagesc(bases{basis}(:,:,3));
   subplot(2, 4, 8);
   imagesc(bases{basis}(:,:,4));
   pause;
end


%% Plot bases
close all;

for i = 1:3
    e1 = bases{i}(:, :, 1);
    e2 = bases{i}(:, :, 2);
    e3 = bases{i}(:, :, 3);
    e4 = bases{i}(:, :, 4);
    subplot(2,2,1);
    imagesc(e1)
    subplot(2,2,2);
    imagesc(e2)
    subplot(2,2,3);
    imagesc(e3)
    subplot(2,2,4);
    imagesc(e4)
    figure()
end

for i = 1:2
    e1 = stacks{i}(:, :, 303);
    e2 = stacks{i}(:, :, 302);
    e3 = stacks{i}(:, :, 301);
    e4 = stacks{i}(:, :, 300);
    subplot(2,2,1);
    imagesc(e1)
    subplot(2,2,2);
    imagesc(e2)
    subplot(2,2,3);
    imagesc(e3)
    subplot(2,2,4);
    imagesc(e4)
    figure()
end




u = stacks{1}(:, :, 1);

[up, r] = projection(u, e1,e2,e3,e4);

%%
baseSelect = 1;
stackSelect = 1;

r = 0
for i = 1:2
    disp('Set')
    disp(i)
    
    for k = 1:3
        r = 0;

        for n = 1:400
            e1 = bases{k}(:, :, 1);
            e2 = bases{k}(:, :, 2);
            e3 = bases{k}(:, :, 3);
            e4 = bases{k}(:, :, 4);
    
            u = stacks{i}(:, :, n);
            [up, r_cur] = projection(u, e1,e2,e3,e4);
            r = r + r_cur;
        end
    
        r = r / 400
    end
end


