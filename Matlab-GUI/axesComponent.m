function varargout = axesComponent(varargin)
% AXESCOMPONENT MATLAB code for axesComponent.fig
%      AXESCOMPONENT, by itself, creates a new AXESCOMPONENT or raises the existing
%      singleton*.
%
%      H = AXESCOMPONENT returns the handle to a new AXESCOMPONENT or the handle to
%      the existing singleton*.
%
%      AXESCOMPONENT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AXESCOMPONENT.M with the given input arguments.
%
%      AXESCOMPONENT('Property','Value',...) creates a new AXESCOMPONENT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before axesComponent_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to axesComponent_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help axesComponent

% Last Modified by GUIDE v2.5 27-Mar-2023 02:48:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @axesComponent_OpeningFcn, ...
                   'gui_OutputFcn',  @axesComponent_OutputFcn, ...
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


% --- Executes just before axesComponent is made visible.
function axesComponent_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to axesComponent (see VARARGIN)

% Choose default command line output for axesComponent
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes axesComponent wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = axesComponent_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- sine graph
function pushbutton1_Callback(hObject, eventdata, handles)
x=[-10:0.1:10];
y=sin(x);
plot(x,y, 'r*-.');
title("Sine graph");


% --- cosine graph.
function pushbutton3_Callback(hObject, eventdata, handles)

x=[-10:0.1:10];
y=cos(x);
plot(x,y,'bo-.');
title('cosine graph');


% --- to clean the coodinate area.
function pushbutton5_Callback(hObject, eventdata, handles)
cla(handles.axes1, 'reset');



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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- draw a graph.
function pushbutton6_Callback(hObject, eventdata, handles)
a=str2double(get(handles.edit1, 'string'));
b=str2double(get(handles.edit2, 'string'));
c=str2double(get(handles.edit3, 'string'));
x=[-10:0.1:10];
y=a*x.^2+b*x+c;
axes(handles.axes1); %determine which axes object will be use to show the graph if we have more than one axes
plot(x,y);
