function varargout = guiproject(varargin)
% GUIPROJECT MATLAB code for guiproject.fig
%      GUIPROJECT, by itself, creates a new GUIPROJECT or raises the existing
%      singleton*.
%
%      H = GUIPROJECT returns the handle to a new GUIPROJECT or the handle to
%      the existing singleton*.
%
%      GUIPROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIPROJECT.M with the given input arguments.
%
%      GUIPROJECT('Property','Value',...) creates a new GUIPROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiproject_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiproject_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiproject

% Last Modified by GUIDE v2.5 12-Dec-2022 00:16:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiproject_OpeningFcn, ...
                   'gui_OutputFcn',  @guiproject_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before guiproject is made visible.
function guiproject_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiproject (see VARARGIN)

% Choose default command line output for guiproject
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiproject wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiproject_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global z
[f,d]=uigetfile()
cn=fullfile(d,f);

z=imread(cn);
imshow(z)
r=z(:,:,1);
g=z(:,:,2);
b=z(:,:,3);
black=zeros(size(r));
red=cat(3,r,black,black);
axes(handles.axes1)
imshow(red)
green=cat(3,black,g,black);
axes(handles.axes2)
imshow(green)
blue=cat(3,black,black,b);
axes(handles.axes3)
imshow(blue)
[p s ]=psnr(r,g)
axes(handles.axes5)
imhist(r)
axes(handles.axes6)
imhist(g)
axes(handles.axes7)
imhist(b)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I= rgb2gray(z);
BW1 = edge(I,'sobel');
BW2 = edge(I,'canny');



% axes(handles.axes9)
% imshow(BW1)
%title('Sobel Filter')


% axes(handles.axes2)
% imshow(BW2)
%title('Canny Filter')
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global z1
[f,d]=uigetfile()
cn=fullfile(d,f);

z1=imread(cn);
% imshow(z)
r=z1(:,:,1);
g=z1(:,:,2);
b=z1(:,:,3);
black=zeros(size(r));
red=cat(3,r,black,black);
axes(handles.axes8)
imshow(red)
green=cat(3,black,g,black);
axes(handles.axes10)
imshow(green)
blue=cat(3,black,black,b);
axes(handles.axes16)
imshow(blue)
[p s ]=psnr(r,g)
axes(handles.axes12)
imhist(r)
axes(handles.axes13)
imhist(g)
axes(handles.axes14)
imhist(b)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I= rgb2gray(z1);
BW1 = edge(I,'sobel');
BW2 = edge(I,'canny');



% axes(handles.axes9)
% imshow(BW1)
%title('Sobel Filter')


% axes(handles.axes2)
% imshow(BW2)
%title('Canny Filter')

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(~, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global z
global z1
r=z(:,:,1);
g=z(:,:,2);
b=z(:,:,3);
black=zeros(size(r));
red=cat(3,r,black,black);

green=cat(3,black,g,black);

blue=cat(3,black,black,b);

[p s ]=psnr(r,g)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I= rgb2gray(z);
BW1 = edge(I,'sobel');
BW2 = edge(I,'canny');
BW1=uint8(BW1);
BW2=uint8(BW2);
[peeaksnr snr]=psnr(z,z1);
if(peeaksnr >40)
set(handles.edit1,'string',"project is complete")
end
if(peeaksnr <40)
set(handles.edit1,'string',"project is not complete")
end


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
z=imread("background2.jpg");
% imshow(z)
r=z(:,:,1);
g=z(:,:,2);
b=z(:,:,3);
black=zeros(size(r));
red=cat(3,r,black,black);

green=cat(3,black,g,black);

blue=cat(3,black,black,b);

[p s ]=psnr(r,g)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I= rgb2gray(z);
BW1 = edge(I,'sobel');
BW2 = edge(I,'canny');



axes(handles.axes17)
imshow(BW1)
title('Sobel Filter')


axes(handles.axes18)
imshow(BW2)
title('Canny Filter')
