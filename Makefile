
all: compile

compile:
	@mkdir -p ebin
	@erlc -o ebin src/*.erl

clean:
	@rm -rf ebin

