emacs --batch --eval "(progn (require 'org) (org-babel-do-load-languages 'org-babel-load-languages '((dot . t))) (setq org-confirm-babel-evaluate nil)) (defun safe-local-variable-p (sym val) t)" --visit=$1 --funcall "org-latex-export-to-latex"
