function varargout = RobotStudio(varargin)
% ROBOTSTUDIO MATLAB code for RobotStudio.fig
%      ROBOTSTUDIO, by itself, creates a new ROBOTSTUDIO or raises the existing
%      singleton*.
%
%      H = ROBOTSTUDIO returns the handle to a new ROBOTSTUDIO or the handle to
%      the existing singleton*.
%
%      ROBOTSTUDIO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROBOTSTUDIO.M with the given input arguments.
%
%      ROBOTSTUDIO('Property','Value',...) creates a new ROBOTSTUDIO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RobotStudio_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RobotStudio_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RobotStudio

% Last Modified by GUIDE v2.5 26-Nov-2019 22:51:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RobotStudio_OpeningFcn, ...
                   'gui_OutputFcn',  @RobotStudio_OutputFcn, ...
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


% --- Executes just before RobotStudio is made visible.
function RobotStudio_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RobotStudio (see VARARGIN)

% Choose default command line output for RobotStudio
handles.output = hObject;

global g_flag_edit;
g_flag_edit = 0;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RobotStudio wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RobotStudio_OutputFcn(hObject, eventdata, handles) 
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

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global g_qn;
global g_p560;
g_qn(1) = get(hObject,'Value')
axes(handles.axes1)
g_p560.plot(g_qn)

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject,'min',-2.2*pi);
set(hObject,'max',2.2*pi);
set(hObject,'value',0);

% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global g_qn;
global g_p560;
g_qn(2) = get(hObject,'Value')
axes(handles.axes1)
g_p560.plot(g_qn)

% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
%         set(hObject,'Min',0);
%     set(hObject,'Max',2*pi);
end
set(hObject,'min',-2.2*pi);
set(hObject,'max',2.2*pi);
set(hObject,'value',0);


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global g_qn;
global g_p560;
g_qn(3) = get(hObject,'Value')
axes(handles.axes1)
g_p560.plot(g_qn)

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
%         set(hObject,'Min',0);
%     set(hObject,'Max',2*pi);
end
set(hObject,'min',-2.2*pi);
set(hObject,'max',2.2*pi);
set(hObject,'Value',0);


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global g_qn;
global g_p560;
g_qn(4) = get(hObject,'Value')
axes(handles.axes1)
g_p560.plot(g_qn)

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
%         set(hObject,'Min',0);
%     set(hObject,'Max',2*pi);
end
set(hObject,'min',-2.2*pi);
set(hObject,'max',2.2*pi);
set(hObject,'value',0);


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global g_qn;
global g_p560;
g_qn(5) = get(hObject,'Value')
axes(handles.axes1)
g_p560.plot(g_qn)

% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
%         set(hObject,'Min',0);
%     set(hObject,'Max',2*pi);
end
set(hObject,'min',-2.2*pi);
set(hObject,'max',2.2*pi);
set(hObject,'value',0);


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global g_qn;
global g_p560;
g_qn(6) = get(hObject,'Value')
axes(handles.axes1)
g_p560.plot(g_qn)

% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
%         set(hObject,'Min',0);
%     set(hObject,'Max',2*pi);
end
set(hObject,'min',-2.2*pi);
set(hObject,'max',2.2*pi);
set(hObject,'value',0);



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global g_p560;
global g_qn;
g_qn = handles.h_qn;
axes(handles.axes1);
g_p560.plot(g_qn);
set(handles.slider1,'value',g_qn(1));
set(handles.slider2,'value',g_qn(2));
set(handles.slider3,'value',g_qn(3));
set(handles.slider4,'value',g_qn(4));
set(handles.slider5,'value',g_qn(5));
set(handles.slider6,'value',g_qn(6));


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
    set(handles.radiobutton1,'value',1);
    set(handles.radiobutton2,'value',0);
    set(handles.radiobutton3,'value',0);
    set(handles.radiobutton4,'value',0);
    
   mdl_puma560
   p560
   global g_p560;
   g_p560 = p560;
   global g_qn;
   g_qn = qn;
   handles.h_qn = qn;
   guidata(hObject,handles); 
   axes(handles.axes1);
   g_p560.plot(g_qn)
   set(handles.slider1,'value',g_qn(1));
   set(handles.slider2,'value',g_qn(2));
   set(handles.slider3,'value',g_qn(3));
   set(handles.slider4,'value',g_qn(4));
   set(handles.slider5,'value',g_qn(5));
   set(handles.slider6,'value',g_qn(6));



% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
 set(handles.radiobutton1,'value',0);
    set(handles.radiobutton2,'value',1);
    set(handles.radiobutton3,'value',0);
    set(handles.radiobutton4,'value',0);
img = imread('img.jfif');
axes(handles.axes1);
imshow(img);
% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
 set(handles.radiobutton1,'value',0);
    set(handles.radiobutton2,'value',0);
    set(handles.radiobutton3,'value',1);
    set(handles.radiobutton4,'value',0);
img = imread('img.jfif');
axes(handles.axes1);
imshow(img);
% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
 set(handles.radiobutton1,'value',0);
    set(handles.radiobutton2,'value',0);
    set(handles.radiobutton3,'value',0);
    set(handles.radiobutton4,'value',1);
    img = imread('img.jfif');
axes(handles.axes1);
imshow(img);




% --- Executes on button press in pushbutton_go_j.
function pushbutton_go_j_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_go_j (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global g_p560;
global g_qn;

X = str2double(get(handles.editX,'String'))
Y = str2double(get(handles.editY,'String'))
Z = str2double(get(handles.editZ,'String'))
time = str2double(get(handles.editT,'String'))
T0 = g_p560.fkine(g_qn);
T1 = transl(X,Y,Z);
t = 0:0.05:time;

traj = g_p560.jtraj(T0,T1,t');
axes(handles.axes2);
cla reset
qplot(t,traj);
title('关节角');

T = g_p560.fkine(traj);
p = transl(T);
axes(handles.axes5);
cla reset
plot(t,p);
% plot(t,p(:,1));
% hold on
% plot(t,p(:,2));
% hold on
% plot(t,p(:,3));   %两种方式添加图例的效果是相同的
legend('X','Y','Z');
title('末端执行器位置');

axes(handles.axes6)
cla reset
plot(p(:,1),p(:,2));
legend('XY');
xlabel('X');
ylabel('Y');
title('XY平面投影轨迹');

axes(handles.axes1);
plot(g_p560,traj);

g_qn = g_p560.ikine6s(T1)

set(handles.slider1,'value',g_qn(1));
set(handles.slider2,'value',g_qn(2));
set(handles.slider3,'value',g_qn(3));
set(handles.slider4,'value',g_qn(4));
set(handles.slider5,'value',g_qn(5));
set(handles.slider6,'value',g_qn(6));

function editY_Callback(hObject, eventdata, handles)
% hObject    handle to editY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editY as text
%        str2double(get(hObject,'String')) returns contents of editY as a double

tmp = str2double(get(hObject,'String'));
if tmp < -0.8
    tmp = 0.8;
    set(hObject,'String',num2str(tmp));
elseif tmp > 0.8
    tmp = 0.8;
    set(hObject,'String',num2str(tmp));
end

% --- Executes during object creation, after setting all properties.
function editY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String','0');


function editX_Callback(hObject, eventdata, handles)
% hObject    handle to editX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editX as text
%        str2double(get(hObject,'String')) returns contents of editX as a double

tmp = str2double(get(hObject,'String'));
if tmp < -0.8
    tmp = 0.8;
    set(hObject,'String',num2str(tmp));
elseif tmp > 0.8
    tmp = 0.8;
    set(hObject,'String',num2str(tmp));
end

% --- Executes during object creation, after setting all properties.
function editX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String','0.5');


function editZ_Callback(hObject, eventdata, handles)
% hObject    handle to editZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editZ as text
%        str2double(get(hObject,'String')) returns contents of editZ as a double

tmp = str2double(get(hObject,'String'));
if tmp < -0.8
    tmp = 0.8;
    set(hObject,'String',num2str(tmp));
elseif tmp > 0.8
    tmp = 0.8;
    set(hObject,'String',num2str(tmp));
end

% --- Executes during object creation, after setting all properties.
function editZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String','0');


function editT_Callback(hObject, eventdata, handles)
% hObject    handle to editT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editT as text
%        str2double(get(hObject,'String')) returns contents of editT as a double
tmp = str2double(get(hObject,'String'));
if tmp <= 1
    tmp = 1;
    set(hObject,'String',num2str(tmp));
elseif tmp >= 10
    tmp = 10;
    set(hObject,'String',num2str(tmp));
end


% --- Executes during object creation, after setting all properties.
function editT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'max',5,'min',0);
set(hObject,'String','2');


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over editX.
% function editX_ButtonDownFcn(hObject, eventdata, handles)
% % hObject    handle to editX (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% set(hObject,'String','0')
% 


function edit_t_d_Callback(hObject, eventdata, handles)
% hObject    handle to edit_t_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_t_d as text
%        str2double(get(hObject,'String')) returns contents of edit_t_d as a double
tmp = str2double(get(hObject,'String'));
if tmp <= 1
    tmp = 1;
    set(hObject,'String',num2str(tmp));
elseif tmp >= 10
    tmp = 10;
    set(hObject,'String',num2str(tmp));
end


% --- Executes during object creation, after setting all properties.
function edit_t_d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_t_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_z_d_Callback(hObject, eventdata, handles)
% hObject    handle to edit_z_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_z_d as text
%        str2double(get(hObject,'String')) returns contents of edit_z_d as a double
tmp = str2double(get(hObject,'String'));
if tmp < -0.8
    tmp = 0.8;
    set(hObject,'String',num2str(tmp));
elseif tmp > 0.8
    tmp = 0.8;
    set(hObject,'String',num2str(tmp));
end

% --- Executes during object creation, after setting all properties.
function edit_z_d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_z_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String','0');


function edit_x_d_Callback(hObject, eventdata, handles)
% hObject    handle to edit_x_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_x_d as text
%        str2double(get(hObject,'String')) returns contents of edit_x_d as a double
tmp = str2double(get(hObject,'String'));
if tmp < -0.8
    tmp = 0.8;
    set(hObject,'String',num2str(tmp));
elseif tmp > 0.8
    tmp = 0.8;
    set(hObject,'String',num2str(tmp));
end


% --- Executes during object creation, after setting all properties.
function edit_x_d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_x_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String','0.5');


function edit_y_d_Callback(hObject, eventdata, handles)
% hObject    handle to edit_y_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_y_d as text
%        str2double(get(hObject,'String')) returns contents of edit_y_d as a double
tmp = str2double(get(hObject,'String'));
if tmp < -0.8
    tmp = 0.8;
    set(hObject,'String',num2str(tmp));
elseif tmp > 0.8
    tmp = 0.8;
    set(hObject,'String',num2str(tmp));
end


% --- Executes during object creation, after setting all properties.
function edit_y_d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_y_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String','0');

% --- Executes on button press in pushbutton_dke.
function pushbutton_dke_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_dke (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton_sl_jspace.
function pushbutton_sl_jspace_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_sl_jspace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sl_jspace
