FROM blang/latex:ctanfull

WORKDIR /app
COPY CV.tex .

# Кэшируем зависимости
RUN pdflatex -interaction=nonstopmode -draftmode CV.tex

CMD ["pdflatex", "-interaction=nonstopmode", "CV.tex"]



