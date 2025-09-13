PROJECT_NAME = slides_lesson2

NOTEXFILES = $(filter-out $(PROJECT_NAME).tex,$(wildcard $(PROJECT_NAME).*))
PICFILES = $(wildcard pics/.*)

all : $(PROJECT_NAME).pdf

$(PROJECT_NAME).pdf : $(PROJECT_NAME).tex $(PICFILES)
	pdflatex $(PROJECT_NAME).tex
	pdflatex $(PROJECT_NAME).tex

clean :
	@for FILE in ${NOTEXFILES}; do rm $$FILE ; done
