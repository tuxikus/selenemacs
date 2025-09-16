run-local:
	@echo "Starting SelenEmacs..."
	SELENEMACS_RUN_LOCAL=1 emacs --init-directory .

run-local-term:
	@echo "Starting SelenEmacs..."
	SELENEMACS_RUN_LOCAL=1 emacs --init-directory . -nw

benchmark:
	@echo "Benchmarking startup..."
	SELENEMACS_BENCHMARK=1 time emacs --init-directory .
