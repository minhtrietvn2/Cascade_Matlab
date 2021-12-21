detector = vision.CascadeObjectDetector('trained_model_1.xml');
img = imread('positive_2/relay (30).jpg');
bbox = step(detector,img);
detectedImg = insertObjectAnnotation(img,'rectangle',bbox,'arduino');
figure; imshow(detectedImg);

