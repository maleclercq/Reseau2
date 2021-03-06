import re

if __name__ == "__main__":
    f=open("resultPING", "r")
    contents =f.read()
    #print(contents)

    regex = r"(?=---)\S* (?P<ip>\S*).*\n.*(?P<perc> \d+%).*"

    matches = re.finditer(regex, contents, re.MULTILINE)

    arrayVal = []
    arrayAddr = []



    for matchNum, match in enumerate(matches, start=1):

        for groupNum in range(0, len(match.groups())):
            groupNum = groupNum + 1
            if(groupNum == 1): arrayAddr.append(match.group(groupNum))
            if(groupNum == 2): arrayVal.append(match.group(groupNum))

    i = 0
    flag = True
    for val in arrayVal:
        if(val != " 0%"): 
            print("erreur de ping sur cette adresse: " + arrayAddr[i] +" :" + val + " de perte")
            flag = False
        i = i+1



    arrayAddr = []
    matchArray = []

    regexUnreachable = r"try ping.*: (?P<ip>\S*).*\nconnect: Network is unreachable"
    matches = re.finditer(regexUnreachable, contents, re.MULTILINE)

    for matchNum, match in enumerate(matches, start=1):
        #print ("Match {matchNum} was found at {start}-{end}: {match}".format(matchNum = matchNum, start = match.start(), end = match.end(), match = match.group()))
        matchArray.append("{match}".format(match = match.group()))
        for groupNum in range(0, len(match.groups())):
            groupNum = groupNum + 1
            if(groupNum == 1): arrayAddr.append(match.group(groupNum))

    i = 0
    flag = True
    for addr in arrayAddr:
        print("Erreur de ping sur cette adresse: " + addr + " : Network is unreachable")
        print("Erreur totale: ")
        print(matchArray[i])
        print("")
        flag = False
        i+=1

    if(flag): print("Aucune erreur de ping")

