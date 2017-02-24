:-initialization(assert(user:file_search_path(proactive, './proactive/proactive-0.3.15')), now).
:-initialization(assert(user:file_search_path(proactive, './assets')), now).

:-ensure_loaded(proactive(src/react)).
:-ensure_loaded(proactive(src/jsx)).
:-ensure_loaded(proactive(src/vdiff)).
:-ensure_loaded(proactive(src/dom)).
:-ensure_loaded('src/server').
:-ensure_loaded('src/dogfood').