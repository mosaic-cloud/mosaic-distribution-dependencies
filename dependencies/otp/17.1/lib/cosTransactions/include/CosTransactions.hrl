%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Erlang header file
%% 
%% Target: CosTransactions
%% Source: /net/isildur/ldisk/daily_build/17_prebuild_opu_o.2014-06-23_21/otp_src_17/lib/cosTransactions/src/CosTransactions.idl
%% IC vsn: 4.3.5
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------


-ifndef(COSTRANSACTIONS_HRL).
-define(COSTRANSACTIONS_HRL, true).


-record('CosTransactions_otid_t', {formatID, bqual_length, tid}).
-record('CosTransactions_TransIdentity', {coord, term, otid}).
-record('CosTransactions_PropagationContext', {timeout, current, parents, implementation_specific_data}).
-record('CosTransactions_HeuristicRollback', {'OE_ID'="IDL:omg.org/CosTransactions/HeuristicRollback:1.0"}).
-record('CosTransactions_HeuristicCommit', {'OE_ID'="IDL:omg.org/CosTransactions/HeuristicCommit:1.0"}).
-record('CosTransactions_HeuristicMixed', {'OE_ID'="IDL:omg.org/CosTransactions/HeuristicMixed:1.0"}).
-record('CosTransactions_HeuristicHazard', {'OE_ID'="IDL:omg.org/CosTransactions/HeuristicHazard:1.0"}).
-record('CosTransactions_WrongTransaction', {'OE_ID'="IDL:omg.org/CosTransactions/WrongTransaction:1.0"}).
-record('CosTransactions_SubtransactionsUnavailable', {'OE_ID'="IDL:omg.org/CosTransactions/SubtransactionsUnavailable:1.0"}).
-record('CosTransactions_NotSubtransaction', {'OE_ID'="IDL:omg.org/CosTransactions/NotSubtransaction:1.0"}).
-record('CosTransactions_Inactive', {'OE_ID'="IDL:omg.org/CosTransactions/Inactive:1.0"}).
-record('CosTransactions_NotPrepared', {'OE_ID'="IDL:omg.org/CosTransactions/NotPrepared:1.0"}).
-record('CosTransactions_NoTransaction', {'OE_ID'="IDL:omg.org/CosTransactions/NoTransaction:1.0"}).
-record('CosTransactions_InvalidControl', {'OE_ID'="IDL:omg.org/CosTransactions/InvalidControl:1.0"}).
-record('CosTransactions_Unavailable', {'OE_ID'="IDL:omg.org/CosTransactions/Unavailable:1.0"}).
-record('CosTransactions_SynchronizationUnavailable', {'OE_ID'="IDL:omg.org/CosTransactions/SynchronizationUnavailable:1.0"}).


-endif.


