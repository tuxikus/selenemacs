run-local:
	@echo "Starting SelenEmacs..."
	emacs --init-directory .

run-local-term:
	@echo "Starting SelenEmacs..."
	emacs --init-directory . -nw

benchmark:
	@echo "Benchmarking startup..."
	time emacs --init-directory . --eval "(kill-emacs)"
