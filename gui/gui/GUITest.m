function varargout = GUITest(varargin)
% GUITEST M-file for GUITest.fig
%      GUITEST, by itself, creates a new GUITEST or raises the existing
%      singleton*.
%
%      H = GUITEST returns the handle to a new GUITEST or the handle to
%      the existing singleton*.
%
%      GUITEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUITEST.M with the given input arguments.
%
%      GUITEST('Property','Value',...) creates a new GUITEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUITest_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUITest_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUITest

% Last Modified by GUIDE v2.5 02-Apr-2009 10:09:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUITest_OpeningFcn, ...
                   'gui_OutputFcn',  @GUITest_OutputFcn, ...
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


% --- Executes just before GUITest is made visible.
function GUITest_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUITest (see VARARGIN)


   % Clear the image plot
    InitImageFig(handles)
    
% Choose default command line output for GUITest
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUITest wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUITest_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function InitImageFig(handles)
    img=ones(10,10,3);
    
    axes(handles.image_original);
    imagesc(img);
    
    img_res=ones(10,10,3);    
    axes(handles.image_processed);
    imagesc(img); 
    
    function ShowImageFile(filename,pathname,handles)
    if ~isequal(filename, 0)
        fn=strcat(pathname,filename);
        img_ori=imread(fn);

        axes(handles.image_original);
        imagesc(img_ori);
        set(handles.image_original,'UserData',img_ori);

 
    end
    




function editn_Callback(hObject, eventdata, handles)
% hObject    handle to editn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editn as text
%        str2double(get(hObject,'String')) returns contents of editn as a double


% --- Executes during object creation, after setting all properties.
function editn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editm_Callback(hObject, eventdata, handles)
% hObject    handle to editm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editm as text
%        str2double(get(hObject,'String')) returns contents of editm as a double


% --- Executes during object creation, after setting all properties.
function editm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editd_Callback(hObject, eventdata, handles)
% hObject    handle to editd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editd as text
%        str2double(get(hObject,'String')) returns contents of editd as a double


% --- Executes during object creation, after setting all properties.
function editd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editf1_Callback(hObject, eventdata, handles)
% hObject    handle to editf1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editf1 as text
%        str2double(get(hObject,'String')) returns contents of editf1 as a double


% --- Executes during object creation, after setting all properties.
function editf1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editf1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editf2_Callback(hObject, eventdata, handles)
% hObject    handle to editf2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editf2 as text
%        str2double(get(hObject,'String')) returns contents of editf2 as a double


% --- Executes during object creation, after setting all properties.
function editf2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editf2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in extras.
function extras_Callback(hObject, eventdata, handles)
% hObject    handle to extras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns extras contents as cell array
%        contents{get(hObject,'Value')} returns selected item from extras


% --- Executes during object creation, after setting all properties.
function extras_CreateFcn(hObject, eventdata, handles)
% hObject    handle to extras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editk_Callback(hObject, eventdata, handles)
% hObject    handle to editk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editk as text
%        str2double(get(hObject,'String')) returns contents of editk as a double


% --- Executes during object creation, after setting all properties.
function editk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editorder_Callback(hObject, eventdata, handles)
% hObject    handle to editorder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editorder as text
%        str2double(get(hObject,'String')) returns contents of editorder as a double


% --- Executes during object creation, after setting all properties.
function editorder_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editorder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function FileMenu_Callback(hObject, eventdata, handles)
% hObject    handle to FileMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function OpenMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to OpenMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename,pathname] = uigetfile({'*.tif';'*.tiff';'*.jpg';'*.jpeg'});
ShowImageFile(filename,pathname,handles);



function editlen_Callback(hObject, eventdata, handles)
% hObject    handle to editlen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editlen as text
%        str2double(get(hObject,'String')) returns contents of editlen as a double


% --- Executes during object creation, after setting all properties.
function editlen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editlen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edittheta_Callback(hObject, eventdata, handles)
% hObject    handle to edittheta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edittheta as text
%        str2double(get(hObject,'String')) returns contents of edittheta as a double


% --- Executes during object creation, after setting all properties.
function edittheta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edittheta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editpeaks_Callback(hObject, eventdata, handles)
% hObject    handle to editpeaks (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editpeaks as text
%        str2double(get(hObject,'String')) returns contents of editpeaks as a double


% --- Executes during object creation, after setting all properties.
function editpeaks_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editpeaks (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3

img_ori=get(handles.image_original,'Userdata');     
    
    sel_val=get(hObject,'Value');
    switch sel_val
        case 1
            m=str2num(get(handles.editm,'String'));
            n=str2num(get(handles.editn,'String'));
            d=str2num(get(handles.editd,'String'));
            img_res=alpha(img_ori,m,n,d);
    
        case 2
            m=str2num(get(handles.editm,'String'));
            n=str2num(get(handles.editn,'String'));
            img_res=arithmetic(img_ori,m,n);
               
        case 3
            m=str2num(get(handles.editm,'String'));
            n=str2num(get(handles.editn,'String'));
            img_res=geometric(img_ori,m,n);
        case 4
            m=str2num(get(handles.editm,'String'));
            n=str2num(get(handles.editn,'String'));
            img_res=harmonic(img_ori,m,n);
        case 5
            m=str2num(get(handles.editm,'String'));
            n=str2num(get(handles.editn,'String'));
            q=str2num(get(handles.editorder,'String'));
            img_res=contra(img_ori,m,n,q);
        case 6
             m=str2num(get(handles.editm,'String'));
            n=str2num(get(handles.editn,'String'));
           img_res= median(img_ori,m,n);
        case 7
             m=str2num(get(handles.editm,'String'));
            n=str2num(get(handles.editn,'String'));
            img_res=minf(img_ori,m,n);
        case 8
            m=str2num(get(handles.editm,'String'));
            n=str2num(get(handles.editn,'String'));
            img_res=maxf(img_ori,m,n);
        case 9
            m=str2num(get(handles.editm,'String'));
            n=str2num(get(handles.editn,'String'));
            img_res=mid(img_ori,m,n);
        case 10
            fc=str2num(get(handles.editf1,'String'));
            img_res=ideallow(img_ori, fc);
        case 11
            fc=str2num(get(handles.editf1,'String'));
            img_res=idealhigh(img_ori, fc);
        case 12
            fc1=str2num(get(handles.editf1,'String'));
            fc2=str2num(get(handles.editf2,'String'));
            img_res =idealreject(img_ori,fc1,fc2);
        case 13
            fc=str2num(get(handles.editf1,'String'));
             q=str2num(get(handles.editorder,'String'));
           img_res= butterworthlow (img_ori,fc,q);
        case 14
             fc=str2num(get(handles.editf1,'String'));
             q=str2num(get(handles.editorder,'String'));
           img_res= butterworthhigh (img_ori,fc,q);
        case 15
             fc1=str2num(get(handles.editf1,'String'));
            fc2=str2num(get(handles.editf2,'String'));
             q=str2num(get(handles.editorder,'String'));
            img_res=butterworthreject(img_ori,fc1,fc2,q);
        case 16
               fc=str2num(get(handles.editf1,'String'));
            img_res=gaussianlow(img_ori, fc);

        case 17
               fc=str2num(get(handles.editf1,'String'));
                img_res=gaussianhigh(img_ori,fc);
        case 18
             fc1=str2num(get(handles.editf1,'String'));
            fc2=str2num(get(handles.editf2,'String'));
            img_res=gaussianreject(img_ori,fc1,fc2);
        case 19
            k=0.01*str2num(get(handles.editk,'String'));
            img_res=inverse(img_ori,k);
        case 20
            len=str2num(get(handles.editlen,'String'));
            theta=str2num(get(handles.edittheta,'String'));
            img_res=wiener(img_ori,len,theta);
        case 21
            img_res=sobel(img_ori);
        case 22
            img_res=canny(img_ori);
       
        case 23
            img_res=otsuseg(img_ori);
            
        case 24
            img_res=morwater(img_ori);
            
        case 25
            pe=str2num(get(handles.editpeaks,'String'));
            e = get(handles.contents,'String');
            img_res= hough(img_ori,e,pe);
            
             
    end

    axes(handles.image_processed);
    imagesc(img_res);colormap(gray);
    
    
% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenuedge.
function popupmenuedge_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenuedge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenuedge contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenuedge

contents = get(hObject,'Value');
    switch contents
        case 1
            set(handles.contents,'String','Sobel');
        case 2
            set(handles.contents,'String','Canny');
    end

        

% --- Executes during object creation, after setting all properties.
function popupmenuedge_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenuedge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function SaveMenuitem_Callback(hObject, eventdata, handles)
% hObject    handle to SaveMenuitem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img_res=get(handles.image_processed,'Userdata');   
savePlotWithinGUI(img_res);


