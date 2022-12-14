(ns clj-luminus.env
  (:require [clojure.tools.logging :as log]))

(def defaults
  {:init
   (fn []
     (log/info "\n-=[clj-luminus started successfully]=-"))
   :stop
   (fn []
     (log/info "\n-=[clj-luminus has shut down successfully]=-"))
   :middleware identity})
