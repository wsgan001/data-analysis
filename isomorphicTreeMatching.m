clear all;
% power_consumption
num_rows=4;
num_cols=2;
n=num_rows*num_cols;
% count = 1;
% for i = 1:num_rows
%     for j = 1:num_cols
%         sensor_cordinates(count,:)=[i,j];
%         count= count + 1;
%     end
% end


% distance_measure=zeros(n);
% for i = 1:n
%     for j = 1:n
%         distance_measure(i,j)=distance_euclidean(sensor_cordinates(i,:),sensor_cordinates(j,:));
%     end
% end
power_consumption
[node_s,node_e]=prims(R*-1,1,8);
s_g_map=zeros(8,8);
max_sum=calculate_correlation_sum(node_s,node_e,R);
profile on
for i=1:n
s_g_map(node_s(1),1)=i;
a=matchTree(node_s,node_e,s_g_map);
end
profile viewer
readFile
mapping=tree;
[r,c]=size(mapping);
for i=1:r
for j = 1:n-1
    grid_tree_mapping_s(j)=mapping(i,node_s(j));
    grid_tree_mapping_e(j)=mapping(i,node_e(j));
    
end
sum_r(i)=calculate_correlation_sum(grid_tree_mapping_s,grid_tree_mapping_e,R);
end
% mapping_all(i,:)=mapping;
% end
[v,index]=max(sum_r);
arrangement=mapping(index,:);
config=[1,2,3,4,5,6,7,8;2,1,4,3,6,5,8,7;8,7,6,5,4,3,2,1;7,8,5,6,3,4,1,2];
error_matrix=zeros(4,1);

% masters(corr_colum(1),:)
for config_iterator=1 :4
    for error_iterator =1:8
        
        
        if(config(config_iterator,error_iterator)~=arrangement(error_iterator))
            error_matrix(config_iterator)=error_matrix(config_iterator)+1;
        end
        
    end
end
[error,ind]=min(error_matrix);

