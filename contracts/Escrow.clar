;; ------------------------------------------------------------
;; escrow-v2.clar
;; Author: Victor James
;; Purpose: Secure on-chain escrow between buyer and seller
;; Version: 2.0 (Refined)
;; ------------------------------------------------------------

;; ------------------------------------------------------------
;; Contract storage
;; ------------------------------------------------------------

;; Fixed invalid principal literals - using burn address as placeholder
(define-data-var buyer principal 'SP000000000000000000002Q6VF78)
(define-data-var seller principal 'SP000000000000000000002Q6VF78)
(define-data-var arbiter principal tx-sender) ;; optional third party
(define-data-var amount uint u0)
(define-data-var funded bool false)
(define-data-var released bool false)
(define-data-var cancelled bool false)
