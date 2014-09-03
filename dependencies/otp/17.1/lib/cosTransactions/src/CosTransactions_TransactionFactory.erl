%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosTransactions_TransactionFactory
%% Source: /net/isildur/ldisk/daily_build/17_prebuild_opu_o.2014-06-23_21/otp_src_17/lib/cosTransactions/src/CosTransactions.idl
%% IC vsn: 4.3.5
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosTransactions_TransactionFactory').
-ic_compiled("4_3_5").


%% Interface functions
-export([create/2, create/3, recreate/2]).
-export([recreate/3]).

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



%%%% Operation: create
%% 
%%   Returns: RetVal
%%
create(OE_THIS, Time_out) ->
    corba:call(OE_THIS, create, [Time_out], ?MODULE).

create(OE_THIS, OE_Options, Time_out) ->
    corba:call(OE_THIS, create, [Time_out], ?MODULE, OE_Options).

%%%% Operation: recreate
%% 
%%   Returns: RetVal
%%
recreate(OE_THIS, Ctx) ->
    corba:call(OE_THIS, recreate, [Ctx], ?MODULE).

recreate(OE_THIS, OE_Options, Ctx) ->
    corba:call(OE_THIS, recreate, [Ctx], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosTransactions/TransactionFactory:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(create) -> 
	{{tk_objref,"IDL:omg.org/CosTransactions/Control:1.0","Control"},
         [tk_ulong],
         []};
oe_tc(recreate) -> 
	{{tk_objref,"IDL:omg.org/CosTransactions/Control:1.0","Control"},
         [{tk_struct,"IDL:omg.org/CosTransactions/PropagationContext:1.0",
              "PropagationContext",
              [{"timeout",tk_ulong},
               {"current",
                {tk_struct,"IDL:omg.org/CosTransactions/TransIdentity:1.0",
                    "TransIdentity",
                    [{"coord",
                      {tk_objref,
                          "IDL:omg.org/CosTransactions/Coordinator:1.0",
                          "Coordinator"}},
                     {"term",
                      {tk_objref,
                          "IDL:omg.org/CosTransactions/Terminator:1.0",
                          "Terminator"}},
                     {"otid",
                      {tk_struct,"IDL:omg.org/CosTransactions/otid_t:1.0",
                          "otid_t",
                          [{"formatID",tk_long},
                           {"bqual_length",tk_long},
                           {"tid",{tk_sequence,tk_octet,0}}]}}]}},
               {"parents",
                {tk_sequence,
                    {tk_struct,
                        "IDL:omg.org/CosTransactions/TransIdentity:1.0",
                        "TransIdentity",
                        [{"coord",
                          {tk_objref,
                              "IDL:omg.org/CosTransactions/Coordinator:1.0",
                              "Coordinator"}},
                         {"term",
                          {tk_objref,
                              "IDL:omg.org/CosTransactions/Terminator:1.0",
                              "Terminator"}},
                         {"otid",
                          {tk_struct,
                              "IDL:omg.org/CosTransactions/otid_t:1.0",
                              "otid_t",
                              [{"formatID",tk_long},
                               {"bqual_length",tk_long},
                               {"tid",{tk_sequence,tk_octet,0}}]}}]},
                    0}},
               {"implementation_specific_data",tk_any}]}],
         []};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"recreate", oe_tc(recreate)},
	{"create", oe_tc(create)}].




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
    "IDL:omg.org/CosTransactions/TransactionFactory:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosTransactions/TransactionFactory:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTransactions/TransactionFactory:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosTransactions/TransactionFactory:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTransactions/TransactionFactory:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosTransactions/TransactionFactory:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTransactions/TransactionFactory:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosTransactions_TransactionFactory_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosTransactions_TransactionFactory_impl', Reason, State).


%%%% Operation: create
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, create, [Time_out]}, _, OE_State) ->
  corba:handle_call('CosTransactions_TransactionFactory_impl', create, [Time_out], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: recreate
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, recreate, [Ctx]}, _, OE_State) ->
  corba:handle_call('CosTransactions_TransactionFactory_impl', recreate, [Ctx], OE_State, OE_Context, OE_THIS, false);



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
    corba:handle_info('CosTransactions_TransactionFactory_impl', Info, State).


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosTransactions_TransactionFactory_impl', OldVsn, State, Extra).

