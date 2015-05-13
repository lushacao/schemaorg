<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Full Release Summary: Schema.org</title>
    <meta name="description" content="Schema.org is a set of extensible schemas that enables webmasters to embed
    structured data on their web pages for use by search engines and other applications." />
    <link rel="stylesheet" type="text/css" href="/docs/schemaorg.css" />


    <base href="{{ base_href }}" ></base>
</head>
<body style="text-align: left;">

    <div id="container">
        <div id="intro">
            <div id="pageHeader">
                <div class="wrapper">
                    <h1>schema.org</h1>

                    <div id="cse-search-form" style="width: 400px;"></div>

                    <script type="text/javascript" src="//www.google.com/jsapi"></script>
                    <script type="text/javascript">
                    google.load('search', '1', {language : 'en', style : google.loader.themes.ESPRESSO});
                    google.setOnLoadCallback(function() {
                        var customSearchControl = new google.search.CustomSearchControl('013516846811604855281:nj5laplixaa');
                        customSearchControl.setResultSetSize(google.search.Search.FILTERED_CSE_RESULTSET);
                        var options = new google.search.DrawOptions();
                        options.enableSearchboxOnly("../docs/search_results.html", null, false, '#');
                        customSearchControl.draw('cse-search-form', options);
                    }, true);
                    </script>


                </div>
            </div>
        </div>
    </div>

    <div id="selectionbar">
        <div class="wrapper">
            <ul>
                <li >
                    <a href="/docs/documents.html">Documentation</a></li>
                    <li class="activelink">
                        <a href="/docs/schemas.html">Schemas</a></li>
                        <li >
                            <a href="/">Home</a></li>
                        </ul>
                    </div>

                </div>
                <div style="padding: 14px; float: right;" id="languagebox"></div>




<div style="margin-left: 8%; margin-right: 8%">

<h1>Schema.org version {{ version }}</h1>

<dl>

 <dt>Version:</dt>
 <dd>{{version}}</dd>

 <dt>URL:</dt>
 <dd><a href="http://schema.org/version/{{version}}/">http://schema.org/version/{{version}}/</a></dd>

 <dt>Published:</dt>
 <dd>{{ releasedate }}</dd>

 <dt>Alternate formats:</dt>
 <dd>This release is also available in <a href="schema.rdfa">rdfa</a>, <a href="schema.nt">N-triples</a> downloadable formats.</dd>

<p>
<b>Overview:</b>
This is a full release summary for schema.org. It describes in one document the terms (types, properties and enumerations) included in this version of schema.org.
The <a href="http://schema.org/">live site</a> offers various other page-by-page <a href="/docs/schemas.html">views</a> that include more information and examples.
This document captures the main content of the schemas for a particular release. Note that schema.org release numbers are not generally included when you <em>use</em>
schema.org. In context (e.g. related standards work) when a particular release needs to be cited, this document provides the appropriate URL.
</p>

<p>
<b>Status:</b> this document represents a stable release of schema.org, and is automatically generated from the underlying schema data. Although
the formal schema dataset associated with this release will not change, we may update the formatting, layout and other details of this document to
improve the presentation of this information.
</p>

<p>The structure of this document is simple: it provides an alphabetic list of types, and then properties, as they are defined in this version of schema.org.</p>

<h4>Type hierarchy</h4>

<div>
<small>
{{ thing_tree | safe }}
</small>
</div>

<h2>Types</h2>

{% for term in az_types %}

<div>
  <h4 id="term_{{term}}" name="term_{{term}}">{{term}}</a></h4>

<p>
  <div>{{ az_type_meta[term]['comment'] }} </div>
  <small><a href="#intro">[^top]</a></small>
</p>

</div>

{% endfor %}


<h2>Properties</h2>

{% for term in az_props %}

  <h4 id="term_{{term}}" name="term_{{term}}">{{ term }}</a></h4>
  <p>
  <div>{{ az_prop_meta[term]['comment'] }} </div>
  <div> {{ az_prop_meta[term]['attrinfo'] }} </div>
  <small><a href="#intro">[^top]</a></small>
  </p>
{% endfor %}



<br/><br/>
</div>

