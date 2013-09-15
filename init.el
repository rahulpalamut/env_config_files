;; Rahul Palamuttam
;; use C-q C-# to enter a ctrl- command where # is the key u wish to add

;; Makefile macro
;; Description: runs the make command and pipes the output to a new buffer called makefile
;; Process:
;; 1) Save the file 2) Eliminate other windows 3) Make new vertical window 4) Switch to new window 5) open buffer makefile
;; 6) Delete buffer contents 7) execute make command and pipe to buffer 8) shrink window by 30 spaces 
;; Quick-Key: C-c C-m

(fset 'makefile
(lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("13obmakefile!make30{o" 0 "%d")) arg)))

(define-key global-map [()] 'makefile)
(global-set-key (kbd "C-c C-m") 'makefile)
