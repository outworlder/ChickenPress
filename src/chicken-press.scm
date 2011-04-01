(use args)                              ;Command-line argument parsing
(use ports)

(define opts
  (list 
   (args:make-option (c create) #:required "Create a new blog with the given name."
                     (create-blog ARG))
   (args:make-option (h help) #:none "Display help options."
                     (usage))))

(define (usage)
  (with-output-to-port (current-error-port)
    (lambda ()
      (print "Usage: " (car argv) " [options]")
      (newline)
      (print (args:usage opts)))))

(receive (options operands)
  (args:parse (command-line-arguments) opts)
  (print "Chicken Press. Nothing to do."))

