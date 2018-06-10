clear

nnet = alexnet;  % Load the neural net

url = 'http://192.168.31.235:8080/video';
cam=ipcam(url,'nexsrx','#2363029#');

while true   
    picture = snapshot(cam);             % Take a picture    
    picture = imresize(picture,[227,227]);  % Resize the picture

    label = classify(nnet, picture);        % Classify the picture
       
    image(picture);     % Show the picture
    title(char(label)); % Show the label
    drawnow;   
end
