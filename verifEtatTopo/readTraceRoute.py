import re

if __name__ == "__main__":
    f=open("resultTraceRoute", "r")
    contents =f.read()
    #print(contents)

    regexTraceRoute = r"traceroute to (?P<id>\S*).*\n(?P<lines>^[^t]+)"
    matches = re.finditer(regexTraceRoute, contents, re.MULTILINE)

    arrayLine = []
    arrayAddr = []


    for matchNum, match in enumerate(matches, start=1):

        for groupNum in range(0, len(match.groups())):
            groupNum = groupNum + 1
            if(groupNum == 1): arrayAddr.append(match.group(groupNum))
            if(groupNum == 2): arrayLine.append(match.group(groupNum))

    i = 0
    flag = True
    for addr in arrayAddr:
        nlines = arrayLine[i].count('\n')
        if(addr == "fde4:2:0:bc::c"):
            if(nlines > 5): 
                print("Traceroute count " + str(nlines) + " steps but it should be 5 steps on trying to reach " + addr)
                flag = False
        if(addr == "fde4:2:0:57::7"):
            if(nlines > 2): 
                print("Traceroute count " + str(nlines) + " steps but it should be 2 steps on trying to reach " + addr)
                flag = False
        i += 1


    if(flag): print("Aucune erreur de Traceroute")



