function score_manques = selection_manques(pic_path,model_path)
[picture,~,alpha_picture] = imread(pic_path);

full_size = sum(alpha_picture(:)>0);

figure(1);
[mesh_v,mesh_f] = read_obj(model_path,'/');
plot_mesh(mesh_v,mesh_f);
%camorbit(180,0,'data',[0 0 1]);

figure(2); 
imshow(picture);
disp("veuillez selectionner les zones représentant des parties manquantes sur le model. Ne faites pas des bounding box trop grandes")

hold on;
[x,y] = getpts;
boxes = [];
while size(x,1) == 2
    box = [min(x) min(y) abs(x(1)-x(2)) abs(y(1)-y(2))];
    rectangle('Position',box,'EdgeColor','r','LineWidth',3);
    boxes = [boxes; box];
    [x,y] = getpts;
end

if size(boxes) ~= 0            
    sizes = zeros(size(boxes, 1), 1);

    for i = 1:size(boxes, 1)
        x = boxes(i, 1);
        y = boxes(i, 2);
        width = boxes(i, 3);
        height = boxes(i, 4);

        croppedImage = imcrop(alpha_picture, [x, y, width, height]);
        sizes(i) = sum(croppedImage(:) > 0);
    end

else
    sizes = 0;
end

score_manques = sum(sizes)/full_size;
close all
end