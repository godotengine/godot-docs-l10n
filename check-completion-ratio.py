# /usr/bin/env python3

import polib


def get_percent_translated(lang):
    """
    Get overall translation completion percentage.
    """
    pofile = polib.pofile("./weblate/{}.po".format(lang))
    return pofile.percent_translated()


def get_stats(lang):
    """
    Print completion stats per folder.
    """
    pofile = polib.pofile("./weblate/{}.po".format(lang))
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
        print("{:5.1f}\t{}".format(100 * ratio, k or "<root>"))


with open("build_langs.txt") as f:
    for lang in f.read().splitlines():
        completion = get_percent_translated(lang)
        print("==== {}:\t{}% translated ====".format(lang, completion))
