from subprocess import *
ns = range(100, 1600, 100)
res = ''
c = []
for n in ns:
    res = run(['./no_opt', str(n)], stdout=PIPE)
    output = res.stdout.decode('utf-8')
    output = output.splitlines()
    c.append(float(output))


