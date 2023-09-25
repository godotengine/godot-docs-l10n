# /usr/bin/env python3

import polib


def check(lang):
    pofile = polib.pofile("./weblate/{}.po".format(lang))

    if pofile.percent_translated() > 50:
        return
    print("==== {} - {}% translated ====".format(lang, pofile.percent_translated()))

    statistic = {}  # section -> [complete, incomplete]

    for entry in pofile:
        for occ in entry.occurrences:
            if "<rst_epilog>" in occ[0]:
                continue

            path = occ[0].removeprefix("../../docs/")
            section = "/".join(path.split("/", maxsplit=2)[:-1])
            statistic.setdefault(section, [0, 0])
            if entry.translated():
                statistic[section][0] += 1
            else:
                statistic[section][1] += 1

    for k, v in sorted(statistic.items()):
        ratio = v[0] / (v[0] + v[1])
        if ratio > 0.5:
            print("{:5.1f}\t{}".format(100 * ratio, k or "<root>"))


with open("build_langs.txt") as f:
    for lang in f.read().splitlines():
        check(lang)
