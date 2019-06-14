# Using vim as git merge tool
- git mergetool -t vimdiff
- git config --global merge.tool vimdiff
- launch with git mergetool
- in bottom (result) window run :diffoff to declutter, and :diffthis to turn back o- Window layout:
    - Top Row:
      - 2: LOCAL
      - 3: BASE
      - 4: REMOTE
    - Bottom Row:
      - 1: output/result file
- :diffget LOCAL | REMOTE will choose one or the other for the result file and then you have to manually make additional changes.
- :diffupdate
    - run after each change in result window
- Jumping between diffs: ]c, [c 
- Helps to use diffo/difft to turn on/off diff in just two windows that you want to compare: base vs. LOCAL and then base vs. REMOTE

