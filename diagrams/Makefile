all: executive-engine-control.png logging-display.png alarm-system.png rpm-torque-control-loop.png

%.png: %.dia
	dia $^ -e $@

clean: 
	rm -f *.png *~ \#*\#
