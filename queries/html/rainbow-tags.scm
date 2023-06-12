;;; A pair of opening and closing tag with any content in-between. Excludes
;;; self-closing tags or opening tags without closing tag.

(element
  (start_tag
    "<" @opening.0
    (tag_name) @opening.1
    ">" @opening.2)
  ; (element (self_closing_tag) @intermediate)*
  (end_tag
    "</" @closing.0
    (tag_name) @closing.1
    ">" @closing.2)) @container

(element
  (self_closing_tag
    "<" @opening.0
    (tag_name) @opening.1
    "/>" @opening.2)
  ) @container

(style_element
  (start_tag
    "<" @opening.0
    (tag_name) @opening.1
    ">" @opening.2)
  (end_tag
    "</" @closing.0
    (tag_name) @closing.1
    ">" @closing.2)) @container

(script_element
  (start_tag
    "<" @opening.0
    (tag_name) @opening.1
    ">" @opening.2)
  (end_tag
    "</" @closing.0
    (tag_name) @closing.1
    ">" @closing.2)) @container
