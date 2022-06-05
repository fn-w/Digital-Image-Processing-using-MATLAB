% --- Executes just before task is made visible.
function task_OpeningFcn(hObject, eventdata, handles, varargin) 
    handles.output = hObject;
% Update handles structure 
guidata(hObject,handles);
function varargout = task_OutputFcn(hObject, eventdata, handles) 
    varargout{1} = handles.output;
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
    a=uigetfile() 
    filename=a; 
    setappdata(0,'filename',filename);
a=imread(a); axes(handles.axes1);
imshow(a); setappdata(0,'a',a)
setappdata(0,'filename',a);
plot(handles.axes1,'a')
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
    a=getappdata(0,'a'); 
    a_bw=im2bw(a,.57);
    axes(handles.axes3);
    imshow(a_bw)
    setappdata(0,'filename',a_bw);
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles) 
a=getappdata(0,'a');
a_gray=rgb2gray(a);
setappdata(0,'filename',a_gray);
axes(handles.axes3);  imshow(a_gray)
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles) 
function pushbutton5_Callback(hObject, eventdata, handles) 
    a=getappdata(0,'a'); 
    imshow(a);
% --- Executes on button press in pushbutton6. function pushbutton6_Callback(hObject, eventdata, handles)
% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles) 
msgbox('thanks for using image processing tool')
pause(1) 
close();
close();
% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
  a=getappdata(0,'a'); 
  input=a; 
  input=rgb2gray(input); 
  axes(handles.axes3) 
  imhist(input)
% --- Executes on button press in pushbutton33. function pushbutton33_Callback(hObject, eventdata, handles) a=getappdata(0,'a'); eq=histeq(a); axes(handles.axes3); imshow(eq)
% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles) 
    a=getappdata(0,'a');
    noise=imnoise(a,'salt & pepper');
    a3=fspecial('average',[7,7]); 
    t_sp_a3=filter2(a3,noise);
    axes(handles.axes3);
    imshow(t_sp_a3/255)
% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
    a=getappdata(0,'a');
    adjust=imadjust(a); 
    axes(handles.axes3);
    imshow(adjust)
% --- Executes on button press in pushbutton36. function pushbutton36_Callback(hObject, eventdata, handles) a=getappdata(0,'a'); s=size(a);

[x,y]=meshgrid(1:s(1),1:s(2));
p=sin(x/3+y/5)+1;
noise=(im2double(a)+p/2)/2;
axes(handles.axes3);  imshow(noise)
% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
    a=getappdata(0,'a');
    noise=imnoise(a,'salt & pepper');
    axes(handles.axes3); 
    imshow(noise)
% --- Executes on button press in pushbutton38.
function pushbutton38_Callback(hObject, eventdata, handles)
    a=getappdata(0,'a');
    rotate=imrotate(a,45);
    axes(handles.axes3); 
    imshow(rotate);
% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
    a=getappdata(0,'a'); 
    IM2=imcomplement(a);
    axes(handles.axes3); 
    imshow(IM2);
% --- Executes on button press in pushbutton40. function pushbutton40_Callback(hObject, eventdata, handles) a=getappdata(0,'a'); input=a; axes(handles.axes3) imhist(input)
% --- Executes on button press in pushbutton41. function pushbutton41_Callback(hObject, eventdata, handles) a=getappdata(0,'a'); red=a; red(:,:,2:3)=0; setappdata(0,'filename',red); setappdata(0,'imrotation',red);
axes(handles.axes3); imshow(red)
% --- Executes on button press in pushbutton42. function pushbutton42_Callback(hObject, eventdata, handles) a=getappdata(0,'a'); rz=imresize(a,0.5); axes(handles.axes3); imshow(rz)
% --- Executes on button press in pushbutton43. function pushbutton43_Callback(hObject, eventdata, handles) a=getappdata(0,'a'); noise=imnoise(a,'gaussian'); axes(handles.axes3); imshow(noise)

% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
    i=getappdata(0,'a');
    i2=flipdim(i,2);
    axes(handles.axes3);
    imshow(i2)
function pushbutton45_Callback(hObject, eventdata, handles)
    a=getappdata(0,'a'); 
    blue=a;
    blue(:,:,1)=0; 
    blue(:,:,2)=0; 
    setappdata(0,'filename',blue); 
    setappdata(0,'imrotation',blue); 
    axes(handles.axes3);
    imshow(blue)
% --- Executes on button press in pushbutton46. function pushbutton46_Callback(hObject, eventdata, handles) a=getappdata(0,'a'); green=a; green(:,:,1)=0; green(:,:,3)=0; setappdata(0,'filename',green); setappdata(0,'imrotation',green); axes(handles.axes3); imshow(green)
function edit1_Callback(hObject, eventdata, handles)
function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white'); 
end