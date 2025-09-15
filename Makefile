run-local:
	@echo "Starting SelenEmacs..."
	emacs --init-directory .

benchmark:
	@echo "Benchmarking startup..."
	time emacs --init-directory . --eval "(kill-emacs)"
