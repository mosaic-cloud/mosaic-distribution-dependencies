%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNaming_NameComponent
%% Source: /net/isildur/ldisk/daily_build/17_prebuild_opu_o.2014-06-23_21/otp_src_17/lib/orber/COSS/CosNaming/cos_naming.idl
%% IC vsn: 4.3.5
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNaming_NameComponent').
-ic_compiled("4_3_5").


-include("CosNaming.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_struct,"IDL:omg.org/CosNaming/NameComponent:1.0","NameComponent",
                   [{"id",{tk_string,0}},{"kind",{tk_string,0}}]}.

%% returns id
id() -> "IDL:omg.org/CosNaming/NameComponent:1.0".

%% returns name
name() -> "CosNaming_NameComponent".



