ALL=executive-engine-control.pdf\
    logging-display.pdf\
    alarm-system.pdf\
    rpm-torque-control-loop.pdf\
    system-design.pdf

all: $(ALL)

%.pdf: %.eps
	epstopdf $^

%.eps: %.dia
	dia $^ -e $@

%.png: %.dia
	dia $^ -e $@

clean: 
	rm -f *.png *~ \#*\#
