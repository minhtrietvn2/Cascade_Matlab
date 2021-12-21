vid = VideoReader ('test/relay.mp4');
detector = vision.CascadeObjectDetector('trained_model_1.xml');
while hasFrame(vid)
    vf = readFrame(vid);
    bbox = step(detector,vf);
    detectImg = insertObjectAnnotation(vf,'rectangle',bbox,'Detected');
    imshow(detectImg);
end