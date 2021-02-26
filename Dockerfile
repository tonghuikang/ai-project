FROM pandoc/latex

RUN tlmgr update --self && \
    tlmgr install latexmk xpatch tabu cleveref mdframed zref needspace enumitem

ENV TZ="Asia/Singapore"
ENTRYPOINT ["latexmk"]
CMD ["-pdflua"]
