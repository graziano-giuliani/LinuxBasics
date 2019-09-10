PROJECT_NAME = slides

NOTEXFILES = $(filter-out $(PROJECT_NAME).tex,$(wildcard $(PROJECT_NAME).*))

all : $(PROJECT_NAME).pdf

$(PROJECT_NAME).pdf : $(PROJECT_NAME).tex
	pdflatex $(PROJECT_NAME).tex
	pdflatex $(PROJECT_NAME).tex

clean :
	@for FILE in ${NOTEXFILES}; do rm $$FILE ; done
