#!/usr/bin/env python3
"""Run from the repo root after extracting the PNGs. Moves 7 species out of the
crowded sprite banks (Pics 2 / Pics 4) into Pics 8 / Pics 9 and flags them."""
import re, os
P = 'gfx/pics.asm'
s = open(P).read()
MOVE = {'Moltres': 'NEWPICBANK2', 'Kadabra': 'NEWPICBANK2', 'Dragonite': 'NEWPICBANK2', 'Machoke': 'NEWPICBANK2',
        'Machamp': 'NEWPICBANK2', 'Alakazam': 'NEWPICBANK', 'Cloyster': 'NEWPICBANK2'}
SEC = {'NEWPICBANK': 'Pics 8', 'NEWPICBANK2': 'Pics 9'}
for sp, flag in MOVE.items():
    bs = f'data/pokemon/base_stats/{sp.lower()}.asm'
    b = open(bs).read()
    if 'NEWPICBANK' in b:
        print(sp, 'already flagged, skipped'); continue
    pat = re.compile(rf'(?m)^{sp}Pic(Front|Back)::.*\n')
    lines = [m.group(0) for m in pat.finditer(s)]
    if len(lines) != 2: print(sp, 'pics lines not found, skipped'); continue
    s = pat.sub('', s)
    i = s.index(f'SECTION "{SEC[flag]}"'); j = s.find('\nSECTION', i + 1); j = len(s) if j < 0 else j
    s = s[:j].rstrip('\n') + '\n' + ''.join(lines) + '\n' + s[j:]
    L = b.split('\n'); k = next(n for n, l in enumerate(L) if l.strip().startswith('tmhm'))
    while L[k].rstrip().endswith('\\'): k += 1
    L[k] = L[k].rstrip() + ', ' + flag
    open(bs, 'w').write('\n'.join(L)); print(sp, '->', SEC[flag])
open(P, 'w').write(s)
