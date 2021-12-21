positive_ins = gTruth;
pos_dir = fullfile('C:\Users\minht\Desktop\Cascade\positive_2');
addpath (pos_dir);
neg_dir = fullfile('C:\Users\minht\Desktop\Cascade\negative');

trainCascadeObjectDetector('trained_model_1.xml',positive_ins,neg_dir,...
    'NumCascadeStage',30,'FeatureType','LBP');
%'NumCascadeStage',5
%'FeatureType','HOG','LBP','Haar'
%'FalseAlarmRate',0.1,'TruePositiveRate',0.95,