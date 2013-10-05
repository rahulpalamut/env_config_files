;; Rahul Palamuttam
;; use C-q C-# to enter a ctrl- command where # is the key u wish to add

;;---------------------------------Package Archives ------------------------------------------------
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;;---------------------------------Preferences-------------------------------------------------------

;; line numbers
(global-linum-mode t)

;;enable smartparens
;;-------------------------------------Macros--------------------------------------------------------
(package-initialize)
(smartparens-global-mode t)
;; Makefile macro
;; Description: runs the make command and pipes the output to a new buffer called makefile
;; Process:
;; 1) Save the file 2) Eliminate other windows 3) Make new vertical window 4) Switch to new window 5) open buffer makefile
;; 6) Delete buffer contents 7) execute make command and pipe to buffer 8) shrink window by 30 spaces 
;; Quick-Key: C-c C-m

(fset 'makefile
(lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("13obmakefile!make25{o" 0 "%d")) arg)))
(global-set-key (kbd "C-c C-m") 'makefile)

;; Test_local macro
;; Description: runs the test_local script which tests my code
;; Process:
;; 1) delete all other windows 2) run the script in command 3) switch buffer 4) horizontally split the buffer 5) switch buffer
;; 6) open the output.diff file
(fset 'test_local
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("1xkill-matching-buffersoutput.diffyes!./test_localo3ooutput.diffo" 0 "%d")) arg)))
(global-set-key (kbd "C-c C-t") 'test_local)
