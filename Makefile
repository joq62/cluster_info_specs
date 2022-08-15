all:
	rm -rf *~ *.beam *_crash.dump;
	git add *;
	git commit -m $(m);
	git push;
	echo Ok there you go!
check:
	rm -rf *~ *.beam *_crash.dump;
	erlc *.erl;
	erl -run cluster_spec_check start
