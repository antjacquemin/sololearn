;; 1 Solve Me First
(defn solveMeFirst [x y]    
    (+ x y))

(def a (read-line))
(def b (read-line))

(println (solveMeFirst (Integer/parseInt a) (Integer/parseInt b)))

;; 2 Hello World
(print "Hello World")

;; 3 Hello World N Times
(defn hello_word_n_times[nb] 
    (dotimes [_ nb] 
        (println "Hello World")))

(def n (Integer/parseInt (read-line)))
(hello_word_n_times n)
