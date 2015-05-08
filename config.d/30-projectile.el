

(req-package projectile
  :require (helm-projectile helm-ag)
  :config (progn
            (projectile-global-mode)
            (helm-projectile-on)))
