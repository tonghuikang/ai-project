FROM pandoc/latex

RUN tlmgr install latexmk xpatch tabu cleveref mdframed zref needspace

ENTRYPOINT ["latexmk"]
CMD ["-pdflua"]
