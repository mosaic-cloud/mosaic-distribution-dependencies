%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: erlang_pid
%% Source: /net/isildur/ldisk/daily_build/17_prebuild_opu_o.2014-06-23_21/otp_src_17/lib/ic/include/erlang.idl
%% IC vsn: 4.3.5
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module(erlang_pid).
-ic_compiled("4_3_5").


-include("erlang.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_struct,"IDL:erlang/pid:1.0","pid",
                   [{"node",{tk_string,256}},
                    {"num",tk_ulong},
                    {"serial",tk_ulong},
                    {"creation",tk_ulong}]}.

%% returns id
id() -> "IDL:erlang/pid:1.0".

%% returns name
name() -> "erlang_pid".



