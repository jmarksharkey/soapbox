%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% @doc SoapBox method behaviour.
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
-module(soapbox_method).

%%%_* Exports ==========================================================
-export([behaviour_info/1]).

-export_type([args/0]).

%%%_* Includes =========================================================
%%-include_lib("").

%%%_* Code =============================================================
-type args() :: soapbox_obj:ect().

%% -callback call(args())   -> maybe().
%% -callback spec([_])      -> args().
%% -callback verify(args()) -> maybe().

behaviour_info(callbacks) ->
  [ {call,   1}
  , {spec,   1}
  , {verify, 1}
  ];
behaviour_info(_) -> undefined.

%%%_* Emacs ============================================================
%%% Local Variables:
%%% allout-layout: t
%%% erlang-indent-level: 2
%%% End:
