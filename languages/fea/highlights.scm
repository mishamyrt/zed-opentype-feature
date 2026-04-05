; Comments
(comment) @comment

; Strings
(string) @string

; Numbers
(number) @number
(hex_number) @number
(float_number) @number

; Glyph class names (@name)
(glyph_class_name) @variable.special

; CID references
(cid) @constant

; Include path
(include_directive (path) @string)

; Block keywords
[
  "feature"
  "lookup"
  "table"
  "anonymous"
  "anon"
  "featureNames"
  "cvParameters"
  "FeatUILabelNameID"
  "FeatUITooltipTextNameID"
  "SampleTextNameID"
  "ParamUILabelNameID"
  "AxisValue"
] @keyword

; Statement keywords
[
  "substitute"
  "sub"
  "position"
  "pos"
  "ignore"
  "reversesub"
  "rsub"
  "enumerate"
  "enum"
  "languagesystem"
  "include"
  "markClass"
  "valueRecordDef"
  "anchorDef"
  "script"
  "language"
  "lookupflag"
  "subtable"
  "parameters"
  "sizemenuname"
  "name"
  "nameid"
  "Character"
  "useExtension"
] @keyword

; Rule keywords (inside substitution/position rules)
[
  "by"
  "from"
  "mark"
  "cursive"
  "base"
  "ligature"
  "ligComponent"
  "contourpoint"
  "anchor"
  "required"
] @keyword

; Lookupflag values
[
  "RightToLeft"
  "IgnoreBaseGlyphs"
  "IgnoreLigatures"
  "IgnoreMarks"
  "MarkAttachmentType"
  "UseMarkFilteringSet"
] @keyword

; Language statement keywords
[
  "exclude_dflt"
  "include_dflt"
] @keyword

; Built-in constant
"NULL" @constant.builtin

; Table field keywords
[
  "GlyphClassDef"
  "Attach"
  "LigatureCaretByPos"
  "LigatureCaretByIndex"
  "LigatureCaretByDev"
  "FontRevision"
  "Ascender"
  "Descender"
  "LineGap"
  "CaretOffset"
  "CaretSlopeRise"
  "CaretSlopeRun"
  "TypoAscender"
  "TypoDescender"
  "TypoLineGap"
  "winAscent"
  "winDescent"
  "XHeight"
  "CapHeight"
  "UnicodeRange"
  "CodePageRange"
  "Panose"
  "Vendor"
  "FSType"
  "WeightClass"
  "WidthClass"
  "VertTypoAscender"
  "VertTypoDescender"
  "VertTypoLineGap"
  "VertAdvanceY"
  "VertOriginY"
  "HorizAxis.BaseTagList"
  "HorizAxis.BaseScriptList"
  "HorizAxis.MinMax"
  "VertAxis.BaseTagList"
  "VertAxis.BaseScriptList"
  "VertAxis.MinMax"
  "ElidedFallbackName"
  "ElidedFallbackNameID"
  "DesignAxis"
  "flag"
  "location"
  "ElidableAxisValueName"
  "OlderSiblingFontAttribute"
  "SubscriptXSize"
  "SubscriptXOffset"
  "SubscriptYSize"
  "SubscriptYOffset"
  "SuperscriptXSize"
  "SuperscriptXOffset"
  "SuperscriptYSize"
  "SuperscriptYOffset"
  "StrikeoutSize"
  "StrikeoutPosition"
  "FamilyClass"
] @property

; Feature/table tags
(feature_block name: (tag (identifier) @type))
(feature_block (tag (identifier) @type))
(table_block name: (table_name) @type)
(table_block (table_name) @type)

; Script and language tags
(languagesystem (tag (identifier) @type))
(script_statement (tag (identifier) @type))
(language_statement (tag (identifier) @type))
(feature_reference (tag (identifier) @type))
(anonymous_block name: (tag (identifier) @type))
(anonymous_block (tag (identifier) @type))

; Lookup labels
(lookup_block name: (label (identifier) @function))
(lookup_block (label (identifier) @function))
(lookup_reference (label (identifier) @function))
(lookup_ref (label (identifier) @function))

; Value record / anchor definition names
(value_record_definition (label (identifier) @variable))
(anchor_definition (label (identifier) @variable))

; Context mark (apostrophe for contextual rules)
(context_mark) @operator

; Operators and punctuation
"=" @operator
";" @punctuation.delimiter
"," @punctuation.delimiter

; Brackets
"{" @punctuation.bracket
"}" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"<" @punctuation.bracket
">" @punctuation.bracket
"(" @punctuation.bracket
")" @punctuation.bracket

; Range operator inside glyph classes
(glyph_range "-" @operator)
