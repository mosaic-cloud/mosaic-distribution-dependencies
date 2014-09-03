%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNotifyFilter_InvalidConstraint
%% Source: /net/isildur/ldisk/daily_build/17_prebuild_opu_o.2014-06-23_21/otp_src_17/lib/cosNotification/src/CosNotifyFilter.idl
%% IC vsn: 4.3.5
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNotifyFilter_InvalidConstraint').
-ic_compiled("4_3_5").


-include("CosNotifyFilter.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_except,"IDL:omg.org/CosNotifyFilter/InvalidConstraint:1.0",
            "InvalidConstraint",
            [{"constr",
              {tk_struct,"IDL:omg.org/CosNotifyFilter/ConstraintExp:1.0",
                  "ConstraintExp",
                  [{"event_types",
                    {tk_sequence,
                        {tk_struct,
                            "IDL:omg.org/CosNotification/EventType:1.0",
                            "EventType",
                            [{"domain_name",{tk_string,0}},
                             {"type_name",{tk_string,0}}]},
                        0}},
                   {"constraint_expr",{tk_string,0}}]}}]}.

%% returns id
id() -> "IDL:omg.org/CosNotifyFilter/InvalidConstraint:1.0".

%% returns name
name() -> "CosNotifyFilter_InvalidConstraint".



