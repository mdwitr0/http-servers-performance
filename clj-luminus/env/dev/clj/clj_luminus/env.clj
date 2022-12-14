(ns clj-luminus.env
  (:require
    [selmer.parser :as parser]
    [clojure.tools.logging :as log]
    [clj-luminus.dev-middleware :refer [wrap-dev]]))

(def defaults
  {:init
   (fn []
     (parser/cache-off!)
     (log/info "\n-=[clj-luminus started successfully using the development profile]=-"))
   :stop
   (fn []
     (log/info "\n-=[clj-luminus has shut down successfully]=-"))
   :middleware wrap-dev})
