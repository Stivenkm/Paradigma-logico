semestre(18).
adicional('tco',0.25).
adicional('mto',0.10).
adicional('hc',0).
adicional('honorarios',0).
cargo('tco','titular',200000).
cargo('tco','aistente',150000).
cargo('tco','auxiliar',100000).
cargo('mto','titular',180000).
cargo('mto','asistente',130000).
cargo('mto','auxiliar',80000).
cargo('hc','titular',120000).
cargo('hc','asistente',70000).
cargo('hc','auxiliar',20000).
cargo('honorarios','titular',110000).
cargo('honorarios','asistente',60000).
cargo('honorarios','auxiliar',15000).
vinculacion('carlos','tco','titular',40).
vinculacion('pedro','mto','auxiliar',50).
vinculacion('miguel','hc','titular',30).
vinculacion('andres','honorarios','asistente',10).
vinculacion('sandra','tco','titular',15).
vinculacion('sofia','mto','auxiliar',20).
vinculacion('sebastian','tco','asistente',50).
vinculacion('camilo','tco','titular',60).
vinculacion('juan','hc','auxiliar',70).
pago(N,V):-vinculacion(N,C,T,H),cargo(C,T,VH), semestre(S),adicional(C,E),VT is H*VH*S,A is VT*E, V is VT+A.
