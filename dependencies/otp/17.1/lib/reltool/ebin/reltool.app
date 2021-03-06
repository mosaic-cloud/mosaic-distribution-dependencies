%% This is an -*- erlang -*- file.
%%
%% %CopyrightBegin%
%%
%% Copyright Ericsson AB 2009-2011. All Rights Reserved.
%%
%% The contents of this file are subject to the Erlang Public License,
%% Version 1.1, (the "License"); you may not use this file except in
%% compliance with the License. You should have received a copy of the
%% Erlang Public License along with this software. If not, it can be
%% retrieved online at http://www.erlang.org/.
%%
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and limitations
%% under the License.
%%
%% %CopyrightEnd%

{application, reltool,
 [{description, "Reltool the release management tool"},
  {vsn, "0.6.6"},
  {modules,
   [
    reltool,
    reltool_app_win,
    reltool_fgraph,
    reltool_fgraph_win,
    reltool_mod_win,
    reltool_server,
    reltool_sys_win,
    reltool_target,
    reltool_utils
   ]},
  {registered, []},
  {applications, [stdlib, kernel]},
  {env, []},
  {runtime_dependencies, ["wx-1.2","tools-2.6.14","stdlib-2.0","sasl-2.4",
			  "kernel-3.0","erts-6.0"]}
 ]}.
