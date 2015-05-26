

(req-package projectile
  :require (helm-projectile helm-ag)
  :bind (("C-c h" . helm-projectile))
  :config (progn
            (projectile-global-mode)
            (helm-projectile-on)))
