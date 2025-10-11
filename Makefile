EMACS_DIRECTORY := $(HOME)/.emacs.d
EMACS_LISP_DIR := $(EMACS_DIRECTORY)/lisp

run-local:
	@echo "Starting SelenEmacs..."
	@SELENEMACS_RUN_LOCAL=1 emacs --init-directory .

run-local-term:
	@echo "Starting SelenEmacs in terminal..."
	@SELENEMACS_RUN_LOCAL=1 emacs --init-directory . -nw

clean:
	@echo "Cleaning SelenEmacs files..."
	@rm -f $(EMACS_DIRECTORY)/init.el
	@rm -f $(EMACS_DIRECTORY)/se-config.el
	@rm -rf $(EMACS_LISP_DIR)

clean-packages:
	@echo "Deleting package directories..."
	@rm -rf ./elpa ./elpaca

install:
	@echo "Installing SelenEmacs..."
	@mkdir -p $(EMACS_LISP_DIR)
	@cp ./init.el $(EMACS_DIRECTORY)/init.el
	@cp ./se-config.el $(EMACS_DIRECTORY)/se-config.el
	@cp -r ./lisp/* $(EMACS_LISP_DIR)/

reinstall: clean install
	@echo "SelenEmacs reinstallation complete!"
