%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% @doc SoapBox transport behaviour.
%%% @copyright 2011 Klarna AB
%%% @end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%
%%%   Copyright 2011-2013 Klarna AB
%%%
%%%   Licensed under the Apache License, Version 2.0 (the "License");
%%%   you may not use this file except in compliance with the License.
%%%   You may obtain a copy of the License at
%%%
%%%       http://www.apache.org/licenses/LICENSE-2.0
%%%
%%%   Unless required by applicable law or agreed to in writing, software
%%%   distributed under the License is distributed on an "AS IS" BASIS,
%%%   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%%%   See the License for the specific language governing permissions and
%%%   limitations under the License.
%%%

%%%_* Module declaration ===============================================
%% @private
-module(soapbox_transport).

%%%_* Exports ==========================================================
-export([behaviour_info/1]).

%%%_* Includes =========================================================
%%-include_lib("").

%%%_* Code =============================================================
%% -type handler() :: fun((soapbox_stub:method(), soapbox_stub:args(), _) -> _).
%% -type id()      :: _.

%% -callback start()               -> id().
%% -callback start_link()          -> id().
%% -callback start(handler())      -> id().
%% -callback start_link(handler()) -> id().
%% -callback stop()                -> _.
%% -callback stop(id())            -> _.

behaviour_info(callbacks) ->
  [ {start,      0} %\ Handler passed
  , {start_link, 0} %/ as module param
  , {start,      1} %\ Handler passed
  , {start_link, 1} %/ as fun param
  , {stop,       0}
  , {stop,       1}
  ];
behaviour_info(_) -> undefined.

%%%_* Emacs ============================================================
%%% Local Variables:
%%% allout-layout: t
%%% erlang-indent-level: 2
%%% End: