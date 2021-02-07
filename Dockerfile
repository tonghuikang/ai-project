FROM pandoc/latex

RUN tlmgr install latexmk xpatch tabu cleveref

ENTRYPOINT ["latexmk"]
CMD ["-pdflua", "thesis"]
