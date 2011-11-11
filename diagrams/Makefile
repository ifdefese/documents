ALL=executive-engine-control.png\
    logging-display.png\
    alarm-system.png\
    rpm-torque-control-loop.png\
    system-design.png

all: $(ALL)

%.png: %.dia
	dia $^ -e $@

clean: 
	rm -f *.png *~ \#*\#
