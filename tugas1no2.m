function varargout = tugas1no2(varargin)
% TUGAS1NO2 MATLAB code for tugas1no2.fig
%      TUGAS1NO2, by itself, creates a new TUGAS1NO2 or raises the existing
%      singleton*.
%
%      H = TUGAS1NO2 returns the handle to a new TUGAS1NO2 or the handle to
%      the existing singleton*.
%
%      TUGAS1NO2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUGAS1NO2.M with the given input arguments.
%
%      TUGAS1NO2('Property','Value',...) creates a new TUGAS1NO2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tugas1no2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tugas1no2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tugas1no2

% Last Modified by GUIDE v2.5 03-Apr-2021 16:03:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tugas1no2_OpeningFcn, ...
                   'gui_OutputFcn',  @tugas1no2_OutputFcn, ...
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


% --- Executes just before tugas1no2 is made visible.
function tugas1no2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tugas1no2 (see VARARGIN)

% Choose default command line output for tugas1no2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tugas1no2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tugas1no2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function panjang_Callback(hObject, eventdata, handles)
% hObject    handle to panjang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of panjang as text
%        str2double(get(hObject,'String')) returns contents of panjang as a double


% --- Executes during object creation, after setting all properties.
function panjang_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panjang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lebar_Callback(hObject, eventdata, handles)
% hObject    handle to lebar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lebar as text
%        str2double(get(hObject,'String')) returns contents of lebar as a double


% --- Executes during object creation, after setting all properties.
function lebar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lebar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tinggi_Callback(hObject, eventdata, handles)
% hObject    handle to tinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tinggi as text
%        str2double(get(hObject,'String')) returns contents of tinggi as a double


% --- Executes during object creation, after setting all properties.
function tinggi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in lihathasil.
function lihathasil_Callback(hObject, eventdata, handles)
% hObject    handle to lihathasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input1=get(handles.panjang,'string');
input2=get(handles.lebar,'string');
input3=get(handles.tinggi,'string');
angka1=str2double(input1);
angka2=str2double(input2);
angka3=str2double(input3);
volume=angka1*angka2*angka3;
luas=2*(angka1*angka2+angka1*angka3+angka2*angka3);
volumefix=num2str(volume);
luasfix=num2str(luas);
set(handles.hasilluas,'string',(luasfix));
set(handles.hasilvolume,'string',(volumefix));


function hasilluas_Callback(hObject, eventdata, handles)
% hObject    handle to hasilluas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilluas as text
%        str2double(get(hObject,'String')) returns contents of hasilluas as a double


% --- Executes during object creation, after setting all properties.
function hasilluas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilluas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasilvolume_Callback(hObject, eventdata, handles)
% hObject    handle to hasilvolume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilvolume as text
%        str2double(get(hObject,'String')) returns contents of hasilvolume as a double


% --- Executes during object creation, after setting all properties.
function hasilvolume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilvolume (see GCBO)
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
guidata(tugas1no1);