

def foo(modname, clsname)
    require modname

    b = eval(clsname + '.new')
    b.method1
end

modname = 'B.rb'
clsname = 'B'
foo(modname, clsname)
