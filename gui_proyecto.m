function varargout = gui_proyecto(varargin)
% GUI_PROYECTO MATLAB code for gui_proyecto.fig
%      GUI_PROYECTO, by itself, creates a new GUI_PROYECTO or raises the existing
%      singleton*.
%
%      H = GUI_PROYECTO returns the handle to a new GUI_PROYECTO or the handle to
%      the existing singleton*.
%
%      GUI_PROYECTO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_PROYECTO.M with the given input arguments.
%
%      GUI_PROYECTO('Property','Value',...) creates a new GUI_PROYECTO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_proyecto_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_proyecto_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_proyecto

% Last Modified by GUIDE v2.5 01-Sep-2021 10:13:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_proyecto_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_proyecto_OutputFcn, ...
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


% --- Executes just before gui_proyecto is made visible.
function gui_proyecto_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_proyecto (see VARARGIN)
clc;
axes(handles.axes1);
imshow(imread('LOGO_UMNG.png'));
axes(handles.axes2);
imshow(imread('logo_mecatronica.png'));
% Choose default command line output for gui_proyecto
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_proyecto wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_proyecto_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    ModelName = 'Ensamblaje1';
    global var;
    q1=get(handles.slider1,'value'); 
    set(handles.edit4,'string',num2str(q1));
    
    q2=get(handles.slider2,'value');
    set(handles.edit5,'string',num2str(q2));
    
    q3=get(handles.slider3,'value');
    set(handles.edit6,'string',num2str(q3));
    
    q4=get(handles.slider4,'value');
    set(handles.edit7,'string',num2str(q4));
    
    set_param([ModelName '/Slider Gain'],'Gain',num2str(q1)) 
    set_param([ModelName '/Slider Gain1'],'Gain',num2str(q2))
    set_param([ModelName '/Slider Gain2'],'Gain',num2str(q3))
    set_param([ModelName '/Slider Gain3'],'Gain',num2str(q4))
    
    L1 = 270;
    L2 = 250;
    L3 = 240;
    L4 = 90;

    T1 = [cosd(q1)   -sind(q1)    0    0;
      sind(q1)    cosd(q1)    0    0;
             0           0    1    L1;
             0           0    0    1];

    T2 = [1            0            0    0;
      0    cosd(-90)   -sind(-90)    0;
      0    sind(-90)    cosd(-90)    0;
      0            0            0    1];


    T3 = [cosd(q2)   -sind(q2)    0    L2*cosd(q2);
      sind(q2)    cosd(q2)    0    L2*sind(q2);
             0           0    1              0;
             0           0    0              1];

    T4 = [cosd(q3)   -sind(q3)    0    L3*cosd(q3);
      sind(q3)    cosd(q3)    0    L3*sind(q3);
             0           0    1              0;
             0           0    0              1];
    T5 = [1            0           0     L4;
      0    cosd(q4)     -sind(q4)    0;
      0    sind(q4)      cosd(q4)    0;
      0            0           0     1];

T = T1*T2*T3*T4*T5;
   
    Px=T(1,4);
    Py=T(2,4);
    Pz=T(3,4);
    
    set(handles.edit1,'string',num2str(Px));
    set(handles.edit2,'string',num2str(Py));
    set(handles.edit3,'string',num2str(Pz));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
     ModelName = 'Ensamblaje1';
    global var;
    q1=get(handles.slider1,'value'); 
    set(handles.edit4,'string',num2str(q1));
    
    q2=get(handles.slider2,'value');
    set(handles.edit5,'string',num2str(q2));
    
    q3=get(handles.slider3,'value');
    set(handles.edit6,'string',num2str(q3));
    
    q4=get(handles.slider4,'value');
    set(handles.edit7,'string',num2str(q4));
    
    set_param([ModelName '/Slider Gain'],'Gain',num2str(q1)) 
    set_param([ModelName '/Slider Gain1'],'Gain',num2str(q2))
    set_param([ModelName '/Slider Gain2'],'Gain',num2str(q3))
    set_param([ModelName '/Slider Gain3'],'Gain',num2str(q4))
    
    L1 = 270;
    L2 = 250;
    L3 = 240;
    L4 = 90;

    T1 = [cosd(q1)   -sind(q1)    0    0;
      sind(q1)    cosd(q1)    0    0;
             0           0    1    L1;
             0           0    0    1];

    T2 = [1            0            0    0;
      0    cosd(-90)   -sind(-90)    0;
      0    sind(-90)    cosd(-90)    0;
      0            0            0    1];


    T3 = [cosd(q2)   -sind(q2)    0    L2*cosd(q2);
      sind(q2)    cosd(q2)    0    L2*sind(q2);
             0           0    1              0;
             0           0    0              1];

    T4 = [cosd(q3)   -sind(q3)    0    L3*cosd(q3);
      sind(q3)    cosd(q3)    0    L3*sind(q3);
             0           0    1              0;
             0           0    0              1];
    T5 = [1            0           0     L4;
      0    cosd(q4)     -sind(q4)    0;
      0    sind(q4)      cosd(q4)    0;
      0            0           0     1];

T = T1*T2*T3*T4*T5;
   
    Px=T(1,4);
    Py=T(2,4);
    Pz=T(3,4);
    
    set(handles.edit1,'string',num2str(Px));
    set(handles.edit2,'string',num2str(Py));
    set(handles.edit3,'string',num2str(Pz));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
     ModelName = 'Ensamblaje1';
    global var;
    q1=get(handles.slider1,'value'); 
    set(handles.edit4,'string',num2str(q1));
    
    q2=get(handles.slider2,'value');
    set(handles.edit5,'string',num2str(q2));
    
    q3=get(handles.slider3,'value');
    set(handles.edit6,'string',num2str(q3));
    
    q4=get(handles.slider4,'value');
    set(handles.edit7,'string',num2str(q4));
    
    set_param([ModelName '/Slider Gain'],'Gain',num2str(q1)) 
    set_param([ModelName '/Slider Gain1'],'Gain',num2str(q2))
    set_param([ModelName '/Slider Gain2'],'Gain',num2str(q3))
    set_param([ModelName '/Slider Gain3'],'Gain',num2str(q4))
    
    L1 = 270;
    L2 = 250;
    L3 = 240;
    L4 = 90;

    T1 = [cosd(q1)   -sind(q1)    0    0;
      sind(q1)    cosd(q1)    0    0;
             0           0    1    L1;
             0           0    0    1];

    T2 = [1            0            0    0;
      0    cosd(-90)   -sind(-90)    0;
      0    sind(-90)    cosd(-90)    0;
      0            0            0    1];


    T3 = [cosd(q2)   -sind(q2)    0    L2*cosd(q2);
      sind(q2)    cosd(q2)    0    L2*sind(q2);
             0           0    1              0;
             0           0    0              1];

    T4 = [cosd(q3)   -sind(q3)    0    L3*cosd(q3);
      sind(q3)    cosd(q3)    0    L3*sind(q3);
             0           0    1              0;
             0           0    0              1];
    T5 = [1            0           0     L4;
      0    cosd(q4)     -sind(q4)    0;
      0    sind(q4)      cosd(q4)    0;
      0            0           0     1];

T = T1*T2*T3*T4*T5;
   
    Px=T(1,4);
    Py=T(2,4);
    Pz=T(3,4);
    
    set(handles.edit1,'string',num2str(Px));
    set(handles.edit2,'string',num2str(Py));
    set(handles.edit3,'string',num2str(Pz));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

     ModelName = 'Ensamblaje1';
    global var;
    q1=get(handles.slider1,'value'); 
    set(handles.edit4,'string',num2str(q1));
    
    q2=get(handles.slider2,'value');
    set(handles.edit5,'string',num2str(q2));
    
    q3=get(handles.slider3,'value');
    set(handles.edit6,'string',num2str(q3));
    
    q4=get(handles.slider4,'value');
    set(handles.edit7,'string',num2str(q4));
    
    set_param([ModelName '/Slider Gain'],'Gain',num2str(q1)) 
    set_param([ModelName '/Slider Gain1'],'Gain',num2str(q2))
    set_param([ModelName '/Slider Gain2'],'Gain',num2str(q3))
    set_param([ModelName '/Slider Gain3'],'Gain',num2str(q4))
    
    L1 = 270;
    L2 = 250;
    L3 = 240;
    L4 = 90;

    T1 = [cosd(q1)   -sind(q1)    0    0;
      sind(q1)    cosd(q1)    0    0;
             0           0    1    L1;
             0           0    0    1];

    T2 = [1            0            0    0;
      0    cosd(-90)   -sind(-90)    0;
      0    sind(-90)    cosd(-90)    0;
      0            0            0    1];


    T3 = [cosd(q2)   -sind(q2)    0    L2*cosd(q2);
      sind(q2)    cosd(q2)    0    L2*sind(q2);
             0           0    1              0;
             0           0    0              1];

    T4 = [cosd(q3)   -sind(q3)    0    L3*cosd(q3);
      sind(q3)    cosd(q3)    0    L3*sind(q3);
             0           0    1              0;
             0           0    0              1];
    T5 = [1            0           0     L4;
      0    cosd(q4)     -sind(q4)    0;
      0    sind(q4)      cosd(q4)    0;
      0            0           0     1];

T = T1*T2*T3*T4*T5;
   
    Px=T(1,4);
    Py=T(2,4);
    Pz=T(3,4);
    
    set(handles.edit1,'string',num2str(Px));
    set(handles.edit2,'string',num2str(Py));
    set(handles.edit3,'string',num2str(Pz));
% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
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



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ModelName = 'Ensamblaje1';
    global var;
    q1=0; 
    set(handles.edit4,'string',num2str(q1));
    
    q2=0;
    set(handles.edit5,'string',num2str(q2));
    
    q3=0;
    set(handles.edit6,'string',num2str(q3));
    
    q4=0;
    set(handles.edit7,'string',num2str(q4));
    
    set_param([ModelName '/Slider Gain'],'Gain',num2str(q1)) 
    set_param([ModelName '/Slider Gain1'],'Gain',num2str(q2))
    set_param([ModelName '/Slider Gain2'],'Gain',num2str(q3))
    set_param([ModelName '/Slider Gain3'],'Gain',num2str(q4))
    
    L1 = 270;
    L2 = 250;
    L3 = 240;
    L4 = 90;

    T1 = [cosd(q1)   -sind(q1)    0    0;
      sind(q1)    cosd(q1)    0    0;
             0           0    1    L1;
             0           0    0    1];

    T2 = [1            0            0    0;
      0    cosd(-90)   -sind(-90)    0;
      0    sind(-90)    cosd(-90)    0;
      0            0            0    1];


    T3 = [cosd(q2)   -sind(q2)    0    L2*cosd(q2);
      sind(q2)    cosd(q2)    0    L2*sind(q2);
             0           0    1              0;
             0           0    0              1];

    T4 = [cosd(q3)   -sind(q3)    0    L3*cosd(q3);
      sind(q3)    cosd(q3)    0    L3*sind(q3);
             0           0    1              0;
             0           0    0              1];
    T5 = [1            0           0     L4;
      0    cosd(q4)     -sind(q4)    0;
      0    sind(q4)      cosd(q4)    0;
      0            0           0     1];

T = T1*T2*T3*T4*T5;
   
    Px=T(1,4);
    Py=T(2,4);
    Pz=T(3,4);
    
    set(handles.edit1,'string',num2str(Px));
    set(handles.edit2,'string',num2str(Py));
    set(handles.edit3,'string',num2str(Pz));



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
