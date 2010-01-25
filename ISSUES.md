Turtle Spec Issues
==================

* issue 2006-04-03: grammar presentation rework - make it inline with a
  summary like RDF/XML

* issue 2006-04-25: The 'resource' link in production rule [10]
  predicate" targets #uriref instead of #resource.  
  > -- Arjohn Kampman <arjohn.kampman@aduna.biz> (private email)

* issue 2007-11-28: language tags do not allow A-Z as SPARQL does

* issue 2007-11-28: predicateObjectList can be refactored like sparql

* issue 2008-01-02: inconsistent \\-escapes  
  SPARQL has tbnrf  
  Turtle has tnr.  
  N3: tnr
  > "Some escapes (\a, \b, \f, \v) should be avoided because the
  > corresponding characters are not allowed in RDF." 
  >  -- http://www.w3.org/DesignIssues/Notation3.html

* issue 2009-01-25: 
  > The only issue with the spec itself was the point about allowing
  > white space between tokens: that can be simply dealt with by a
  > statement within the "white space" section, noting that the WS
  > productions indicate where white space is required, but that it is
  > allowed between tokens anywhere else. This was indeed clear from
  > the examples.  
  > -- Richard Light http://lists.w3.org/Archives/Public/semantic-web/2010Jan/0313.html
