;;commenting 
(global-set-key [f6] 'comment-region)
(global-set-key [f7] 'uncomment-region)

(global-set-key [f9] 'revert-buffer)

(global-set-key [f12] 'restore-default-frame)


;; Sets the delete key to work correctly
(global-set-key [f13] 'delete-char)

(global-set-key [f5] 'compile)

(global-set-key [(control ?x) (?x)] 'ff-find-other-file )

(global-set-key [(control ?x)(control ?g)] 'find-grep)
;;find file at point
(ffap-bindings)

(defun project-search ()
  (interactive)
  (helm-do-grep-1 '("/home/adev/workspace/yieldmo-tld/")
                  '(4)
                  nil
                  '("*.java" "*.scala" "*.proto" "*.hbs" "*.coffee" "*.js" "*.html" "*.xml" "*.sbt" "*.project" "*.gitignore" "*.config" "*.cfg" "*.json")))

(global-set-key [f2] 'project-search)
