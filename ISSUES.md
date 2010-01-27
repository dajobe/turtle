Turtle Spec Issues
==================

* issue 2006-04-03: grammar presentation rework - make it inline with a
  summary like RDF/XML

* issue 2006-04-25: The 'resource' link in production rule [10]
  predicate" targets #uriref instead of #resource.  
  > -- Arjohn Kampman (private email)

* issue 2007-11-28-01: language tags do not allow A-Z as SPARQL does

* issue 2007-11-28-02: predicateObjectList can be refactored like sparql

* issue 2008-01-02: inconsistent \\-escapes  
  SPARQL has tbnrf : http://www.w3.org/TR/2008/REC-rdf-sparql-query-20080115/#rECHAR
  Turtle has tnr.  
  N3: tnr
  > "Some escapes (\a, \b, \f, \v) should be avoided because the
  > corresponding characters are not allowed in RDF." 
  >  -- http://www.w3.org/DesignIssues/Notation3.html

* issue 2008-01-17-01: substantial comment with typos / wordings:  
  > triple-generating statements or blank lines. -> triple-generating statements and blank lines.  
  >
  > in the RDF Concepts and -> in RDF Concepts
  >
  > keeping it in the RDF model. -> keeping within the RDF model.
  >
  > separated by whitespace and terminated by '.' after each triple. -> ???
  >
  > repeated URIs -> URIs
  >
  > any legal URI form (full or qualified) : full URI has not been defined
  >
  > a blank node either from the given nodeID. -> a blank node with the given nodeID.
  >
  > A generated blank node -> An anonymous blank node ??
  >
  > be made with [] -> written as []
  >
  > Boolean may be -> Booleans may be
  >
  > an relative -> a relative
  >  
  > -- Peter F. Patel-Schneider  
  > http://lists.w3.org/Archives/Public/semantic-web/2008Jan/0128.html

* issue 2008-01-17-02: substantial comment including a processing model.  
  http://lists.w3.org/Archives/Public/semantic-web/2008Jan/0128.html  
  -- Peter F. Patel-Schneider 

* issue 2008-07-13: make objectList allow a terminating optional comma like N3  
  http://lists.w3.org/Archives/Public/public-cwm-talk/2008JulSep/0002.html
  -- Hugh Glaser

* issue 2009-01-25: 
  > The only issue with the spec itself was the point about allowing
  > white space between tokens: that can be simply dealt with by a
  > statement within the "white space" section, noting that the WS
  > productions indicate where white space is required, but that it is
  > allowed between tokens anywhere else. This was indeed clear from
  > the examples.  
  > -- Richard Light  
  > http://lists.w3.org/Archives/Public/semantic-web/2010Jan/0313.html

* issue 2009-05-30: mime type registration.  update it

* issue 2009-06-18: request to add single-quoted literals (like
  SPARQL)  
  -- Ted Stockwell (private mail)

* issue 2009-06-22: missing definition for 'a'  
  -- Ivan Herman (private mail)

* issue 2009-07-03-01: EBNF rule for character includes ASCII DEL  
  > This could be fixed by changing it to read
  > 
  > [38] character ::= '\u' hex hex hex hex |
  >                    '\U' hex hex hex hex hex hex hex hex |
  >                    '\\' |
  >                    [#x20-#x5B] | [#x5D-#x7E] | [#x80-#x10FFFF]  
  >  -- Tuukka Hastrup (private mail)

* issue 2009-07-03-02 2.1 RDF Terms wording
  > 
  > Suggested change to:
  > 
  >   Literals and URIs may also contain special characters, but they must be escaped. All other Unicode characters can be used directly (encoded as UTF-8) or escaped with their codepoint number. The escapes and respective special characters are:
  > 
  > * \t (U+0009, tab)
  > * \n (U+000A, linefeed)
  > * \r (U+000D, carriage return)
  > * \\" (U+0022, double quote - only allowed and required inside strings)
  > * \\> (U+003E, greater than - only allowed and required inside URIs)
  > * \\\\ (U+005C, backslash)
  > * \uHHHH or \UHHHHHHHH for writing Unicode characters by hexadecimal codepoint where H is a single hexadecimal digit - only required for the non-printing characters U+0000 - U+001F and U+007F.  
  >  -- Tuukka Hastrup (private mail)

* issue 2009-07-03-03 3.3 Strings wording
  > suggested change to:
  > 
  >   In Turtle, strings and URIs may include certain escape sequences that represent Unicode characters. The following characters must be escaped:
  > 
  > * U+005C, backslash
  > * U+0022, double quote (inside string and longString only)
  > * U+003E, greater than (inside relativeURI only)
  > * U+0000 - U+001F and U+007F, non-printing characters  
  >  -- Tuukka Hastrup (private mail)

* issue 2009-08-03 Multiple wording suggestions (read markdown source)
  > 1.
  > 
  >   ... that prevent it      encoding all RDF graphs ...
  >                       from
  > 
  > 2.
  > 
  >   ... directives, triple-generating statements  or blank lines.
  >                                     statements,
  > 
  > 
  >   Simple triples are a sequence of (subject, predicate, object)
  >   terms, separated by whitespace and terminated by '.' after
  >   each triple.
  >   ---
  >   A simple triple is a sequence of (subject, predicate, object)
  >   terms, separated by whitespace and terminated by '.'.
  > 
  >   There are three types of RDF Term:
  >                                Terms:
  > 
  >   ... References (URIs for short), literals  and blank nodes.
  >                                    literals,
  > 
  > 2.1
  > 
  >   So  for example, the qualified name ...
  >   So,
  > 
  >   Literals are written either using double-quotes when they do
  >   not contain linebreaks like "simple literal" or
  >   """long literal""" when they may contain linebreaks.
  >   ---
  >   Literals are written either using double-quotes (when they do
  >   not contain line breaks like "simple literal") or
  >   """long literal""" (when they may contain line breaks).
  > 
  > 
  >   Blank nodes are written as _:nodeID to provide a blank node
  >   either from the given nodeID.  A generated blank node may also
  >   be made with [] which is useful to provide the subject of RDF
  >   triples for each pair from the predicateObjectList or the root
  >   of the collection.
  >   >> I don't understand this text.
  > 
  >   ... made with [] which is useful ...
  >                 []. This
  > 
  >   Literals and URIs may also contain escapes to encode surrounding
  >   syntax, non-printable characters and to encode Unicode characters
  >   by codepoint number (although they may also be given directly,
  >   encoded as UTF-8).
  >   ---
  >   Literals and URIs may contain escapes to encode surrounding
  >   syntax and non-printable characters.  Escapes may also be used to
  >   encode Unicode characters by codepoint number (although they may
  >   also be entered directly, encoded as UTF-8).
  > 
  >   ... hexadecimal codepoint  where H is ...
  >                   codepoint,
  > 
  > 2.2
  > 
  >   ... in a Turtle document  using the ...
  >                   document,
  > 
  >   ... it defines the base URI for which all ...
  >   ... it defines the base URI which all ...
  > 
  >   ... names,     prefix directives  as well as ...
  >   ... names, and prefix directives,
  > 
  > 2.3
  > 
  >   The  ,  symbol may be used ...
  >       ','
  > 
  >   The  ;  symbol may be used ...
  >       ';'
  > 
  > 2.4
  > 
  >   Boolean  may be written directly ...
  >   Booleans
  > 
  > 2.5
  > 
  >   :subject :predicate ( :a : b : c ) .
  >                       ( :a :b :c ) .             ???
  > 
  >   See section Collections for the details on ...
  >   See section Collections for details on ...
  > 
  > 3.
  > 
  >   Unicode codepoints only in the ...
  >   Only Unicode codepoints
  > 
  > 3.1
  > 
  >   ... in tokens relativeURI, string  and longString.
  >                              string,
  > 
  > 3.2
  > 
  >   ... of '#', outside an relativeURI or strings, and ...
  >   ... of '#', outside of a relativeURI or string, and ...
  > 
  >   ... and defined by     token comment.
  >                      the
  > 
  > 3.3
  > 
  >   ... inside a string, longString  or relativeURI:
  >                        longString,
  > 
  > 3.4
  > 
  >   ... by the @base directive  which sets ...
  >                    directive,
  > 
  > 
  >   <http://www.w3.org/2001/sw/DataAccess/df1/tests/test-00.ttl> ...
  >   <http://example.org/ns/foo/bar#a4> ...
  >   >> I would fold these lines.
  > 
  > 3.5
  > 
  >   The triples ... term is  given by ...
  >                        are
  > 
  > 
  > 4.
  > 
  >   An example of an RDF collection of two literals.
  >                                          literals:
  > 
  > 10.
  > 
  >   ... for the Triple patterns  including the ...
  >                      patterns,
  > 
  > 
  > 
  > The rationale for use of single and double quotes is not clear.
  > I would decide which are to be used for what purpose, then make
  > the usage consistent throughout.  
  > -- Rich Morin (private mail)

* issue 2009-11-23-01 links for xsd:decimal and xsd:double wrong  
  > In section 2.4 of the Turtle Team Submission, there are hyperlinks for
  > xsd:decimal and xsd:double that mistakenly link to information about
  > xsd:integer.
  > -- Jesse Weaver (private email)

* issue 2009-11-23-02 decimal and integer are ambiguous  
  > Also, I think there may be some ambiguity in the grammar.  For example,
  > +1 could be parsed as either a decimal or an integer.
  > -- Jesse Weaver (private email)

* issue 2009-11-23-03 rounding in test-28  
  > I also wanted to ask about test-28.ttl.  Why is it that the output
  > shortens some literals?  For example, in the ttl file:
  > 
  > <http://example.org/foo> <http://example.org/bar> "2.23400000000000000000005"^^<http://www.w3.org/2001/XMLSchema#decimal> .
  > becomes the following in the out file:
  > 
  > <http://example.org/foo> <http://example.org/bar> "2.234"^^<http://www.w3.org/2001/XMLSchema#decimal> .
  >  
  > -- Jesse Weaver (private email)

* issue 2010-01-08 explain why qnames cannot have .  
  > . is not allowed because of n3 compatibility
  > and . is used as a separator
  > in n3, it's more 'generous' with ommitting spaces so a bare name foo. can be ambiguous
  > I guess this should be in the differences to n3 section  
  > -- Dave Beckett #swig 2010-01-08
