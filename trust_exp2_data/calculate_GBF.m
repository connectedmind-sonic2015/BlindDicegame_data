

%% compute group bayes facor

hybrid_MF_GBF = exp(sum(log(Model_evidence_hybrid(:,1))) - sum(log(Model_evidence_MF_only(:,1))));
hybrid_MB_GBF = exp(sum(log(Model_evidence_hybrid(:,1))) - sum(log(Model_evidence_MB_only(:,1))));
% hybrid_two_GBF = exp(sum(log(Model_evidence_hybrid(:,1))) - sum(log(Model_evidence_twoalpha(:,1))));
MF_MB_GBF = exp(sum(log(Model_evidence_MF_only(:,1))) - sum(log(Model_evidence_MB_only(:,1))));

hybrid_MF_BF = exp((log(Model_evidence_hybrid(:,1))) - (log(Model_evidence_MF_only(:,1))));
hybrid_MB_BF = exp((log(Model_evidence_hybrid(:,1))) - (log(Model_evidence_MB_only(:,1))));
% hybrid_two_BF = exp((log(Model_evidence_hybrid(:,1))) - (log(Model_evidence_twoalpha(:,1))));
MF_MB_BF = exp(((Model_evidence_MF_only(:,1))) - (log(Model_evidence_MB_only(:,1))));


% 
figure;

t = tiledlayout(1,3);

nexttile

col = [0.7 0.7 0.7];
barh(Model_evidence_hybrid(:,1) - Model_evidence_MF_only(:,1), 'facecolor', col, 'edgecolor', 'none');
ylim([0 size(Model_evidence_hybrid,1)+1])
xlim([-5 15])
title('model evidence difference', 'FontSize', 16)
ylabel('subject', 'FontSize', 12)
xlabel('\Delta lme', 'FontSize', 12)
text(-4,20,'MF Model', 'FontSize', 14)
text(10,20,'Hybrid Model', 'FontSize', 14)
box off

nexttile
col = [0.7 0.7 0.7];
barh(Model_evidence_hybrid(:,1) - Model_evidence_MB_only(:,1), 'facecolor', col, 'edgecolor', 'none');
ylim([0 size(Model_evidence_hybrid,1)+1])
xlim([-4 10])
title('model evidence difference', 'FontSize', 16)
ylabel('subject', 'FontSize', 12)
xlabel('\Delta lme', 'FontSize', 12)
text(-3.5,20,'MB Model', 'FontSize', 14)
text(5,20,'hybrid Model', 'FontSize', 14)
box off


nexttile
col = [0.7 0.7 0.7];
barh(Model_evidence_MF_only(:,1) - Model_evidence_MB_only(:,1), 'facecolor', col, 'edgecolor', 'none');
ylim([0 size(Model_evidence_hybrid,1)+1])
xlim([-15 10])
title('model evidence difference', 'FontSize', 16)
ylabel('subject', 'FontSize', 12)
xlabel('\Delta lme', 'FontSize', 12)
text(-13,20,'MB model', 'FontSize', 14)
text(1,20,'MF model', 'FontSize', 14)
box off

% figure;
% col = [0.7 0.7 0.7];
% barh(Un_Model_evidence_hybrid(:,1) - Un_Model_evidence_MF_only(:,1), 'facecolor', col, 'edgecolor', 'none');
% ylim([0 size(T_Model_evidence_hybrid,1)+1])
% xlim([-3 10])
% title('model evidence difference of dishonesty conditiony', 'FontSize', 16)
% ylabel('subject', 'FontSize', 12)
% xlabel('\Delta lme', 'FontSize', 12)
% text(-2.5,15,'MF Model', 'FontSize', 14)
% text(6,15,'Hybrid only Model', 'FontSize', 14)
% box off
% 
% figure;
% col = [0.7 0.7 0.7];
% barh(Un_Model_evidence_hybrid(:,1) - Un_Model_evidence_MB_only(:,1), 'facecolor', col, 'edgecolor', 'none');
% ylim([0 size(T_Model_evidence_hybrid,1)+1])
% xlim([-5 20])
% title('model evidence difference of dishonesty conditiony', 'FontSize', 16)
% ylabel('subject', 'FontSize', 12)
% xlabel('\Delta lme', 'FontSize', 12)
% text(-4.5,15,'MB Model', 'FontSize', 14)
% text(15,15,'hybrid Model', 'FontSize', 14)
% box off
% 
% 
% figure;
% col = [0.7 0.7 0.7];
% barh(Un_Model_evidence_MF_only(:,1) - Un_Model_evidence_MB_only(:,1), 'facecolor', col, 'edgecolor', 'none');
% ylim([0 size(T_Model_evidence_hybrid,1)+1])
% xlim([-5 15])
% title('model evidence difference of dishonesty conditiony', 'FontSize', 16)
% ylabel('subject', 'FontSize', 12)
% xlabel('\Delta lme', 'FontSize', 12)
% text(-4.5,15,'MB model', 'FontSize', 14)
% text(11,15,'MF model', 'FontSize', 14)
% box off
% 
% 
% %% compute Group bayes factor & posterior model probability
% T_model_evidence(:,1) =T_Model_evidence_hybrid(:,1);
% T_model_evidence(:,2) =T_Model_evidence_MF_only(:,1);
% T_model_evidence(:,3) =T_Model_evidence_MB_only(:,1);
% 
% sumTevidence = sum(T_model_evidence,1)
% T_GroupBF = exp(sumTevidence - sumTevidence(1))
% 
% Un_model_evidence(:,1) = Un_Model_evidence_hybrid(:,1);
% Un_model_evidence(:,2) = Un_Model_evidence_MF_only(:,1);
% 
% sumUnevidence = sum(Un_model_evidence,1)
% Un_GroupBF = exp(sumUnevidence - sumUnevidence(1))
% 
% % compute posterior model probabilities
% post_sumUnevidence = sumUnevidence - max(sumUnevidence);
% pp = exp(post_sumUnevidence./sum(post_sumUnevidence));
% 
% % display posterior mdel probabilities
% figure; 
% col = [0.6 0.6 0.6];
% colopmap = col;
% bar(pp);
% xlim([0 3])
% set(gca, 'stick', [1 2])
% title('posterior probabilities', 'FontSize', 16)
% xlabel('model', 'FontSize', 12)
% xlabel('posterior prob.', 'FontSize', 12)
% axis square
% box off

%%
% GBF = zeros(6, 1);
% BF = zeros(30, 6);
% 
% for i = 1 : 30
%     BF(i, 1) = T_Model_evidence_hybrid(i,1)/T_Model_evidence_MF_only(i,1);
%     BF(i, 2) = T_Model_evidence_hybrid(i,1)/T_Model_evidence_MB_only(i,1);
%     BF(i, 3) = T_Model_evidence_MF_only(i,1)/T_Model_evidence_MB_only(i,1);
%     BF(i, 4) = Un_Model_evidence_hybrid(i,1)/Un_Model_evidence_MF_only(i,1);
%     BF(i, 5) = Un_Model_evidence_hybrid(i,1)/Un_Model_evidence_MB_only(i,1);
%     BF(i, 6) = Un_Model_evidence_MF_only(i,1)/Un_Model_evidence_MB_only(i,1);
% end
% 
% for j = 1:6
%     GBF(j,1) = prod(BF(:,j));
%     GBF(j,1) = prod(BF(:,j));
%     GBF(j,1) = prod(BF(:,j));
%     GBF(j,1) = prod(BF(:,j));
%     GBF(j,1) = prod(BF(:,j));
%     GBF(j,1) = prod(BF(:,j));
% end

