FROM pandoc/latex

RUN tlmgr update --self && \
    tlmgr install latexmk xpatch tabu cleveref mdframed zref needspace enumitem

ENTRYPOINT ["latexmk"]
CMD ["-pdflua"]
