%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: oe_CosNotificationComm_Event
%% Source: /net/isildur/ldisk/daily_build/17_prebuild_opu_o.2014-06-23_21/otp_src_17/lib/cosNotification/src/cosNotificationAppComm.idl
%% IC vsn: 4.3.5
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module(oe_CosNotificationComm_Event).
-ic_compiled("4_3_5").


%% Interface functions
-export([callSeq/3, callSeq/4, callAny/3]).
-export([callAny/4]).

%% Type identification function
-export([typeID/0]).

%% Used to start server
-export([oe_create/0, oe_create_link/0, oe_create/1]).
-export([oe_create_link/1, oe_create/2, oe_create_link/2]).

%% TypeCode Functions and inheritance
-export([oe_tc/1, oe_is_a/1, oe_get_interface/0]).

%% gen server export stuff
-behaviour(gen_server).
-export([init/1, terminate/2, handle_call/3]).
-export([handle_cast/2, handle_info/2, code_change/3]).

-include_lib("orber/include/corba.hrl").


%%------------------------------------------------------------
%%
%% Object interface functions.
%%
%%------------------------------------------------------------



%%%% Operation: callSeq
%% 
%%   Returns: RetVal
%%
callSeq(OE_THIS, Events, Stat) ->
    corba:call(OE_THIS, callSeq, [Events, Stat], ?MODULE).

callSeq(OE_THIS, OE_Options, Events, Stat) ->
    corba:call(OE_THIS, callSeq, [Events, Stat], ?MODULE, OE_Options).

%%%% Operation: callAny
%% 
%%   Returns: RetVal
%%
callAny(OE_THIS, Event, Stat) ->
    corba:call(OE_THIS, callAny, [Event, Stat], ?MODULE).

callAny(OE_THIS, OE_Options, Event, Stat) ->
    corba:call(OE_THIS, callAny, [Event, Stat], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:oe_CosNotificationComm/Event:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(callSeq) -> 
	{tk_void,
            [{tk_sequence,
                 {tk_struct,
                     "IDL:omg.org/CosNotification/StructuredEvent:1.0",
                     "StructuredEvent",
                     [{"header",
                       {tk_struct,
                           "IDL:omg.org/CosNotification/EventHeader:1.0",
                           "EventHeader",
                           [{"fixed_header",
                             {tk_struct,
                                 "IDL:omg.org/CosNotification/FixedEventHeader:1.0",
                                 "FixedEventHeader",
                                 [{"event_type",
                                   {tk_struct,
                                       "IDL:omg.org/CosNotification/EventType:1.0",
                                       "EventType",
                                       [{"domain_name",{tk_string,0}},
                                        {"type_name",{tk_string,0}}]}},
                                  {"event_name",{tk_string,0}}]}},
                            {"variable_header",
                             {tk_sequence,
                                 {tk_struct,
                                     "IDL:omg.org/CosNotification/Property:1.0",
                                     "Property",
                                     [{"name",{tk_string,0}},
                                      {"value",tk_any}]},
                                 0}}]}},
                      {"filterable_data",
                       {tk_sequence,
                           {tk_struct,
                               "IDL:omg.org/CosNotification/Property:1.0",
                               "Property",
                               [{"name",{tk_string,0}},{"value",tk_any}]},
                           0}},
                      {"remainder_of_body",tk_any}]},
                 0},
             {tk_enum,"IDL:oe_CosNotificationComm/Event/status:1.0","status",
                 ["MATCH","MATCHED"]}],
            []};
oe_tc(callAny) -> 
	{tk_void,[tk_any,
                  {tk_enum,"IDL:oe_CosNotificationComm/Event/status:1.0",
                           "status",
                           ["MATCH","MATCHED"]}],
                 []};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"callAny", oe_tc(callAny)},
	{"callSeq", oe_tc(callSeq)}].




%%------------------------------------------------------------
%%
%% Object server implementation.
%%
%%------------------------------------------------------------


%%------------------------------------------------------------
%%
%% Function for fetching the interface type ID.
%%
%%------------------------------------------------------------

typeID() ->
    "IDL:oe_CosNotificationComm/Event:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:oe_CosNotificationComm/Event:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:oe_CosNotificationComm/Event:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:oe_CosNotificationComm/Event:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:oe_CosNotificationComm/Event:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:oe_CosNotificationComm/Event:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:oe_CosNotificationComm/Event:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init(oe_CosNotificationComm_Event_impl, Env).

terminate(Reason, State) ->
    corba:handle_terminate(oe_CosNotificationComm_Event_impl, Reason, State).


%%%% Operation: callSeq
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, callSeq, [Events, Stat]}, OE_From, OE_State) ->
  corba:handle_call(oe_CosNotificationComm_Event_impl, callSeq, [Events, Stat], OE_State, OE_Context, OE_THIS, OE_From);

%%%% Operation: callAny
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, callAny, [Event, Stat]}, OE_From, OE_State) ->
  corba:handle_call(oe_CosNotificationComm_Event_impl, callAny, [Event, Stat], OE_State, OE_Context, OE_THIS, OE_From);



%%%% Standard gen_server call handle
%%
handle_call(stop, _, State) ->
    {stop, normal, ok, State};

handle_call(_, _, State) ->
    {reply, catch corba:raise(#'BAD_OPERATION'{minor=1163001857, completion_status='COMPLETED_NO'}), State}.


%%%% Standard gen_server cast handle
%%
handle_cast(stop, State) ->
    {stop, normal, State};

handle_cast(_, State) ->
    {noreply, State}.


%%%% Standard gen_server handles
%%
handle_info(Info, State) ->
    corba:handle_info(oe_CosNotificationComm_Event_impl, Info, State).


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change(oe_CosNotificationComm_Event_impl, OldVsn, State, Extra).
