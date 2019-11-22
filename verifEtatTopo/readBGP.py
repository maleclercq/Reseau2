import re

if __name__ == "__main__":
    f=open("resultBGP", "r")
    contents =f.read()
    #print(contents)

    regexTab = r"Neighbor.*\n((?:.*\n)*?)(?:Total)"
    matches = re.finditer(regexTab, contents, re.MULTILINE)

    arrayTab = []

    for matchNum, match in enumerate(matches, start=1):

        for groupNum in range(0, len(match.groups())):
            groupNum += 1
            if(groupNum == 1): arrayTab.append(match.group(groupNum))


    for elem in arrayTab:
        tab = elem
        #print(arrayTab[0])


        regexValues = r"(.*?) (?:.*?)(\w+)\n"

        matches = re.finditer(regexValues, tab, re.MULTILINE)

        arrayValues = []
        arrayAddr = []

        for matchNum, match in enumerate(matches, start=1):
            for groupNum in range(0, len(match.groups())):
                groupNum += 1
                if(groupNum == 1): arrayAddr.append(match.group(groupNum))
                if(groupNum == 2): arrayValues.append(match.group(groupNum))


        i = 0
        for val in arrayValues:
            if(not val.isdigit()): print("Error: " + val + " on " + arrayAddr[i])
            i += 1

