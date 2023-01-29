using SQLREPL

SQLREPL.connect("host=www.pvtool.com port=5532 dbname=test user=test1 password=test1")
SQL> select * from lmr where xingming='李敏睿'

#=
(select tablename from pg_tables
where tablename not like 'pg%' and tablename not like 'sql_%'
order by tablename)
=#

using SQLStrings, LibPQ
conn = LibPQ.Connection("host=www.pvtool.com port=5532 dbname=test user=test1 password=test1");
LibPQ.execute(conn, sql`insert into t1 values (1, 'limingrui')`)
for y=1:10
  msg = "Hi $y"
  LibPQ.execute(conn, sql`insert into t1 values ($y, $msg)`)
end
