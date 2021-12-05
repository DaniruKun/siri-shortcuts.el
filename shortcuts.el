;;; package-name.el --- Package description (don't include the word "Emacs")  -*- lexical-binding: t; -*-

;; Copyright (C) 2017 First Last

;; Author: First Last <name@example.com>
;; URL: https://example.com/package-name.el
;; Version: 0.1-pre
;; Package-Requires: ((emacs "25.2"))
;; Keywords: something

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This package allows flanges to be easily frobnicated.

;;;; Installation

;;;;; MELPA

;; If you installed from MELPA, you're done.

;;;;; Manual

;; Install these required packages:

;; + foo
;; + bar

;; Then put this file in your load-path, and put this in your init
;; file:

;; (require 'package-name)

;;;; Usage

;; Run one of these commands:

;; `package-name-command': Frobnicate the flange.

;;;; Tips

;; + You can customize settings in the `package-name' group.

;;;; Credits

;; This package would not have been possible without the following
;; packages: foo[1], which showed me how to bifurcate, and bar[2],
;; which takes care of flanges.
;;
;;  [1] https://example.com/foo.el
;;  [2] https://example.com/bar.el

;;; Code:

;;;; Requirements

(require 'foo)
(require 'bar)

;;;; Customization

(defgroup package-name nil
  "Settings for `package-name'."
  :link '(url-link "https://example.com/package-name.el"))

(defcustom package-name-something nil
  "This setting does something."
  :type 'something)

;;;; Variables

(defvar package-name-var nil
  "A variable.")

;;;;; Keymaps

;; This technique makes it easier and less verbose to define keymaps
;; that have many bindings.

(defvar package-name-map
  ;; This makes it easy and much less verbose to define keys
  (let ((map (make-sparse-keymap "package-name map"))
        (maps (list
               ;; Mappings go here, e.g.:
               "RET" #'package-name-RET-command
               [remap search-forward] #'package-name-search-forward
               )))
    (cl-loop for (key fn) on maps by #'cddr
             do (progn
                  (when (stringp key)
                    (setq key (kbd key)))
                  (define-key map key fn)))
    map))

;;;; Commands

;;;###autoload
(defun package-name-command (args)
  "Frobnicate the flange."
  (interactive)
  (package-name-foo
   (package-name--bar args)))

;;;; Functions

;;;;; Public

(defun package-name-foo (args)
  "Return foo for ARGS."
  (foo args))

;;;;; Private

(defun package-name--bar (args)
  "Return bar for ARGS."
  (bar args))

;;;; Footer

(provide 'package-name)

;;; package-name.el ends here
