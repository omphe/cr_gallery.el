;; Copyright (C) 2011  by Branden Faulls, http://www.clockworkrobot.co.uk
;; 
;; Permission is hereby granted, free of charge, to any person 
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;; 
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;; 
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
;; THE SOFTWARE.



(defun cr_gallery ()
  "Construct a Liquid CR Gallery"
  (interactive)
  (let (directory img_dir)
    (setq directory (read-directory-name "The gallery directory: "))
    (setq img_dir  (car (last (delete "" (split-string directory "\/"))))) 
    (insert "{% cr_gallery img_dir:" img_dir " %}\n")  
    (insert-directory directory "-1")
    (insert "{% endcr_gallery %}\n")    
  )
)
