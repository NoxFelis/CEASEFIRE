function final = best_reconstruction(input)
% nested function
function sortie = calcul_score(A,criteria)
%     [sorted, sortedIndices] = sort(A,criteria);
%     sortedValues = A(sortedIndices);
%     uniqueValues = unique(sortedValues);
%     sortie = zeros(size(A));
%     nan_indices = is_nan(A);
%     for i = 1:length(uniqueValues)
%         indices = find(sortedValues == uniqueValues(i));
%         sortie(sortedIndices(indices)) = i;
%     end

%     [~, sorted_indices] = sort(A,criteria);
%     [~, inverse_indices] = sort(sorted_indices);
% 
%     sortie = inverse_indices;
%     
%     nan_indices = isnan(A);
%     non_nan_scores = sortie(~nan_indices);
%     
%     unique_values = unique(A(~nan_indices));
%     for i = 1:numel(unique_values)
%         indices = find(A == unique_values(i));
%         sortie(indices) = non_nan_scores(i);
%     end

    [~, sorted_indices] = sort(A,criteria);
    [~, inverse_indices] = sort(sorted_indices);

    sortie = inverse_indices;
    
    unique_values = unique(A, 'stable');
    for i = 1:numel(unique_values)
        indices = find(A == unique_values(i));
        sortie(indices) = min(sortie(indices));
    end
    
    nan_indices = isnan(A);
    nan_scores = max(sortie);
    sortie(nan_indices) = nan_scores;
end

fid = fopen(input); % Opening the file
raw = fread(fid,inf); % Reading the contents
str = char(raw'); % Transformation
fclose(fid); % Closing the file
scores = jsondecode(str);
scores = scores.scores;

n = size(scores,1);
total = zeros(1,n);

%% calcul des scores de reprojection
total = total + calcul_score([scores.reprojection],'ascend');

%% calcul des scores de rugosite
total = total + calcul_score([scores.rugosite],'ascend');

%% calcul des scores d'écart
%total = total + calcul_score([scores.ecart],'ascend');

%% calcul des scores de rapports
total = total + calcul_score([scores.rapports],'ascend');

%% calcul des scores de manques
total = total + calcul_score([scores.manques],'ascend');


[~,orderfields] = sort(total,'ascend');
ids = [scores.id];
final = ids(orderfields);
end
