;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;Created by SciTE4AutoHotkey
;This will open Ease of Access Center
;Because Windows logo key +U is assigned to that
;You cant use Blind here because otherwise it will not cansel input of # itself I assume
;#q::SendInput {Blind}u
;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;Main Section.
;First Line
XButton1 & q::SendInput {Blind}u
XButton1 & w::SendInput {Blind}i
XButton1 & e::SendInput {Blinds}o
XButton1 & r::SendInput {Blind}p
XButton1 & t::SendInput {Blind}[
XButton1 & y::SendInput {Blind}]
;Second Line
XButton1 & a::SendInput {Blind}j
XButton1 & s::SendInput {Blind}k
XButton1 & d::SendInput {Blind}l
XButton1 & f::SendInput {Blind}`;
XButton1 & g::SendInput {Blind}`'
XButton1 & h::SendInput {Blind}a ;Available
;Third Line
XButton1 & z::SendInput {Blind}m
XButton1 & x::SendInput {Blind}`,
XButton1 & c::SendInput {Blind}.
XButton1 & v::SendInput {Blind}/
XButton1 & b::SendInput {Blind}a ;Available
XButton1 & n::SendInput {Blind}a ;Available
;Numbers
XButton1 & 1::SendInput {Blind}7
XButton1 & 2::SendInput {Blind}8
XButton1 & 3::SendInput {Blind}9
XButton1 & 4::SendInput {Blind}0
XButton1 & 5::SendInput {Blind}-
XButton1 & 6::SendInput {Blind}=
;Tilda or Space will be used as Enter
XButton1 & `::SendInput {Blind}{BS} ;Tilda. Special.
XButton1 & vkF4sc029::SendInput {Blind}{BS} ;For the case above didn't work I guess. Special.
XButton1 & Space::SendInput {Blind}{Enter} ;Space for Enter. Special.
;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;Main Numpad
XButton2 & z::SendInput {Blind}{Numpad1}
XButton2 & x::SendInput {Blind}{Numpad2}
XButton2 & c::SendInput {Blind}{Numpad3}
XButton2 & a::SendInput {Blind}{Numpad4}
XButton2 & s::SendInput {Blind}{Numpad5}
XButton2 & d::SendInput {Blind}{Numpad6}
XButton2 & q::SendInput {Blind}{Numpad7}
XButton2 & w::SendInput {Blind}{Numpad8}
XButton2 & e::SendInput {Blind}{Numpad9}
XButton2 & 1::SendInput {Blind}{Numpad0}
XButton2 & Space::SendInput {Blind}!{Home} ;Space is Alt + Home for moveing viewing center to cursor. Special.
;Numbers for Numpad.
XButton2 & 2::SendInput {Blind}{NumpadDiv}
XButton2 & 3::SendInput {Blind}{NumpadMult}
XButton2 & 4::SendInput {Blind}{NumpadSub}
XButton2 & r::SendInput {Blind}{NumpadAdd}
XButton2 & `::SendInput {Blind}. ;Tilda for Dot. Special.
;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;Special Test Functions
XButton1 & Tab::SendInput {Blind}!^+{F1} ;Tab for Alt + Control + Shift + F1
XButton2 & Tab::SendInput {Blind}!^+{F2} ;Tab for Alt + Control + Shift + F2
;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;Disabling Caps Lock and using for Numpad
CapsLock::Return
CapsLock & z::SendInput {Blind}{Numpad1}
CapsLock & x::SendInput {Blind}{Numpad2}
CapsLock & c::SendInput {Blind}{Numpad3}
CapsLock & a::SendInput {Blind}{Numpad4}
CapsLock & s::SendInput {Blind}{Numpad5}
CapsLock & d::SendInput {Blind}{Numpad6}
CapsLock & q::SendInput {Blind}{Numpad7}
CapsLock & w::SendInput {Blind}{Numpad8}
CapsLock & e::SendInput {Blind}{Numpad9}
CapsLock & 1::SendInput {Blind}{Numpad0}
CapsLock & 4::SendInput {Blind}{NumpadSub}
CapsLock & r::SendInput {Blind}{NumpadAdd}
CapsLock & 2::SendInput {Blind}{NumpadDiv}
CapsLock & 3::SendInput {Blind}{NumpadMult}
CapsLock & Space::SendInput {Blind}!{Home} ;Space is Alt + Home for moveing viewing center to cursor. Special.
CapsLock & `::SendInput {Blind}. ;Tilda for Dot. Special.
CapsLock & Tab::SendInput {Blind}!^+{F2} ;Tab for Alt + Control + Shift + F2
;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;Grobal Variables
;For Input Type
global Type
;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;I Will be Triggered when Ctrl + Q was pressed.
;Type = 0 means waiting for pressing q or a. Type = -1 means not waiting at all.
^q::
;Enable
if(Type = -1 or Type = "")
{
	;Show Gui, just used sample on documentation
	Gui Destroy
	Gui,+AlwaysOnTop +Disabled -SysMenu +Owner
	Gui, Add, Text,,Tablet Mode
	Gui,Show,X1800 Y30 NoActivate,Mode
	
	;Set to Type -1
	Type := 0
	;MsgBox Enabled
}
;Disable
else
{
	;just delete Gui
	Gui Destroy
	;Gui,+AlwaysOnTop +Disabled -SysMenu +Owner
	;Gui, Add, Text,,Normal Mode
	;Gui,Show,X1800 Y30 NoActivate,Mode
	
	;Set to Type -1
	Type := -1
	;MsgBox Disabled
}
Return
;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;Pentablet Mode. Waiting for Q or W to be pressed.
#If Type = 0
q::
Type := 1
while (Type = 1)
{
}
Return
w::
Type := 2
while (Type = 2)
{
}
Return
;Normal State
q::q
w::w
e::e
r::r
t::t
y::y
a::a
s::s
d::d
f::f
g::g
h::h
z::z
x::x
c::c
v::v
b::b
n::n
1::1
2::2
3::3
4::4
5::5
6::6
vkF4sc029::vkF4sc029
`::`
Space::Space
Tab::Tab
;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;Pen Tablet Mode. Mode 1.
#If Type = 1

;Tab for real key
*Tab::
SendInput {Blind}q
Type := 0
Return

*q::
SendInput {Blind}u
Type := 0
Return

*w::
SendInput {Blind}i
Type := 0
Return

*e::
SendInput {Blind}o
Type := 0
Return

*r::
SendInput {Blind}p
Type := 0
Return

*t::
SendInput {Blind}[
Type := 0
Return

*y::
SendInput {Blind}]
Type := 0
Return

*a::
SendInput {Blind}j
Type := 0
Return

*s::
SendInput {Blind}k
Type := 0
Return

*d::
SendInput {Blind}l
Type := 0
Return

*f::
SendInput {Blind}`;
Type := 0
Return

*g::
SendInput {Blind}`'
Type := 0
Return

*h::
SendInput {Blind}a
Type := 0
Return

*z::
SendInput {Blind}m
Type := 0
Return

*x::
SendInput {Blind}`,
Type := 0
Return

*c::
SendInput {Blind}.
Type := 0
Return

*v::
SendInput {Blind}/
Type := 0
Return

*b::
SendInput {Blind}a
Type := 0
Return

*n::
SendInput {Blind}a
Type := 0
Return

*1::
SendInput {Blind}7
Type := 0
Return

*2::
SendInput {Blind}8
Type := 0
Return

*3::
SendInput {Blind}9
Type := 0
Return

*4::
SendInput {Blind}0
Type := 0
Return

*5::
SendInput {Blind}-
Type := 0
Return

*6::
SendInput {Blind}=
Type := 0
Return

*vkF4sc029::
SendInput {Blind}{BS}
Type := 0
Return

*`::
SendInput {Blind}{BS}
Type := 0
Return

*Space::
SendInput {Blind}{Enter}
Type := 0
Return

;*Tab::
;SendInput {Blind}!^+{F1}
;Type := 0
;Return
;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;Pen Tablet Mode. Mode 2.
#If Type = 2

;Tab for real key
*Tab::
SendInput {Blind}w
Type := 0
Return

*Space::
SendInput {Blind}!{Home}
Type := 0
Return

*z::
SendInput {Blind}{Numpad1}
Type := 0
Return

*x::
SendInput {Blind}{Numpad2}
Type := 0
Return

*c::
SendInput {Blind}{Numpad3}
Type := 0
Return

*a::
SendInput {Blind}{Numpad4}
Type := 0
Return

*s::
SendInput {Blind}{Numpad5}
Type := 0
Return

*d::
SendInput {Blind}{Numpad6}
Type := 0
Return

*q::
SendInput {Blind}{Numpad7}
Type := 0
Return

*w::
SendInput {Blind}{Numpad8}
Type := 0
Return

*e::
SendInput {Blind}{Numpad9}
Type := 0
Return

*1::
SendInput {Blind}{Numpad0}
Type := 0
Return

*4::
SendInput {Blind}{NumpadSub}
Type := 0
Return

*r::
SendInput {Blind}{NumpadAdd}
Type := 0
Return

*2::
SendInput {Blind}{NumpadDiv}
Type := 0
Return

*3::
SendInput {Blind}{NumpadMult}
Type := 0
Return

*`::
SendInput {Blind}.
Type := 0
Return

;*Tab::
;SendInput {Blind}!^+{F2}
;Type := 0
;Return
;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////