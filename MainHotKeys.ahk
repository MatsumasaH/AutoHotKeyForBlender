#q::SendInput {Blind}u

XButton1 & q::SendInput {Blind}u
XButton1 & w::SendInput {Blind}i
XButton1 & e::SendInput {Blinds}o
XButton1 & r::SendInput {Blind}p
XButton1 & t::SendInput {Blind}[
XButton1 & y::SendInput {Blind}]

XButton1 & a::SendInput {Blind}j
XButton1 & s::SendInput {Blind}k
XButton1 & d::SendInput {Blind}l
XButton1 & f::SendInput {Blind}`;
XButton1 & g::SendInput {Blind}`'
XButton1 & h::SendInput {Blind}a

XButton1 & z::SendInput {Blind}m
XButton1 & x::SendInput {Blind}`,
XButton1 & c::SendInput {Blind}.
XButton1 & v::SendInput {Blind}/
XButton1 & b::SendInput {Blind}a
XButton1 & n::SendInput {Blind}a

XButton1 & 1::SendInput {Blind}7
XButton1 & 2::SendInput {Blind}8
XButton1 & 3::SendInput {Blind}9
XButton1 & 4::SendInput {Blind}0
XButton1 & 5::SendInput {Blind}-
XButton1 & 6::SendInput {Blind}=

XButton1 & vkF4sc029::SendInput {Blind}{BS}
XButton1 & `::SendInput {Blind}{BS}
XButton1 & Space::SendInput {Blind}{Enter}

XButton2 & Space::SendInput {Blind}!{Home}
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

XButton2 & 4::SendInput {Blind}{NumpadSub}
XButton2 & r::SendInput {Blind}{NumpadAdd}
XButton2 & 2::SendInput {Blind}{NumpadDiv}
XButton2 & 3::SendInput {Blind}{NumpadMult}

XButton2 & `::SendInput {Blind}.

XButton1 & Tab::SendInput {Blind}!^+{F1}
XButton2 & Tab::SendInput {Blind}!^+{F2}


CapsLock::Return
CapsLock & Space::SendInput {Blind}!{Home}
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
CapsLock & `::SendInput {Blind}.
CapsLock & Tab::SendInput {Blind}!^+{F2}

;//////////////////////////////////////////////////////////////////////////////
;//////////////////////////////////////////////////////////////////////////////

a := 0
flag := 0

^q::

if flag = 0
{
a := 0
flag := 1
MsgBox Enabled
}
else
{
a := -1
flag := 0
MsgBox Disabled
}

Return

#If a = 0
q::
a := 1
while (a = 1)
{
}
Return

w::
a := 2
while (a = 2)
{
}
Return

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

#If a = 1
*q::
SendInput {Blind}u
a := 0
Return

*w::
SendInput {Blind}i
a := 0
Return

*e::
SendInput {Blind}o
a := 0
Return

*r::
SendInput {Blind}p
a := 0
Return

*t::
SendInput {Blind}[
a := 0
Return

*y::
SendInput {Blind}]
a := 0
Return

*a::
SendInput {Blind}j
a := 0
Return

*s::
SendInput {Blind}k
a := 0
Return

*d::
SendInput {Blind}l
a := 0
Return

*f::
SendInput {Blind}`;
a := 0
Return

*g::
SendInput {Blind}`'
a := 0
Return

*h::
SendInput {Blind}a
a := 0
Return

*z::
SendInput {Blind}m
a := 0
Return

*x::
SendInput {Blind}`,
a := 0
Return

*c::
SendInput {Blind}.
a := 0
Return

*v::
SendInput {Blind}/
a := 0
Return

*b::
SendInput {Blind}a
a := 0
Return

*n::
SendInput {Blind}a
a := 0
Return

*1::
SendInput {Blind}7
a := 0
Return

*2::
SendInput {Blind}8
a := 0
Return

*3::
SendInput {Blind}9
a := 0
Return

*4::
SendInput {Blind}0
a := 0
Return

*5::
SendInput {Blind}-
a := 0
Return

*6::
SendInput {Blind}=
a := 0
Return

*vkF4sc029::
SendInput {Blind}{BS}
a := 0
Return

*`::
SendInput {Blind}{BS}
a := 0
Return

*Space::
SendInput {Blind}{Enter}
a := 0
Return

*Tab::
SendInput {Blind}!^+{F1}
a := 0
Return

#If a = 2
*Space::
SendInput {Blind}!{Home}
a := 0
Return

*z::
SendInput {Blind}{Numpad1}
a := 0
Return

*x::
SendInput {Blind}{Numpad2}
a := 0
Return

*c::
SendInput {Blind}{Numpad3}
a := 0
Return

*a::
SendInput {Blind}{Numpad4}
a := 0
Return

*s::
SendInput {Blind}{Numpad5}
a := 0
Return

*d::
SendInput {Blind}{Numpad6}
a := 0
Return

*q::
SendInput {Blind}{Numpad7}
a := 0
Return

*w::
SendInput {Blind}{Numpad8}
a := 0
Return

*e::
SendInput {Blind}{Numpad9}
a := 0
Return

*1::
SendInput {Blind}{Numpad0}
a := 0
Return

*4::
SendInput {Blind}{NumpadSub}
a := 0
Return

*r::
SendInput {Blind}{NumpadAdd}
a := 0
Return

*2::
SendInput {Blind}{NumpadDiv}
a := 0
Return

*3::
SendInput {Blind}{NumpadMult}
a := 0
Return

*`::
SendInput {Blind}.
a := 0
Return

*Tab::
SendInput {Blind}!^+{F2}
a := 0
Return