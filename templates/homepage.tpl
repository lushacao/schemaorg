<!DOCTYPE html>
<html lang="en">
<head>
  {% include 'headtags.tpl' with context %}
    <title>Home - {{ sitename }}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Schema.org is a set of extensible schemas that enables webmasters to embed
    structured data on their web pages for use by search engines and other applications." />
    <link rel="stylesheet" type="text/css" href="/docs/schemaorg.css">
</head>
<body>
{% include 'basicPageHeader.tpl' with context %}

  <div id="mainContent">


{% import 'ext.tpl' as ext with context %}

{% if mybasehost in [ "sdo-deimos.appspot.com", "sdo-phobos.appspot.com", "sdo-ganymede.appspot.com", "sdo-gozer.appspot.com", "sdo-callisto.appspot.com", "webschemas.org", "sdo-scripts.appspot.com", "localhost" ] %}

<!--<p id="lli" class="layerinfo">
Note: This is {{ mybasehost }}. you are viewing an unstable work-in-progress preview of <a href="http://schema.org/">schema.org</a>.
See the draft <b><a href="{{staticPath}}/docs/releases.html">releases</a></b> page to learn more about this version ({{ SCHEMA_VERSION }}).
</p>-->

{% endif %}


{% if ENABLE_HOSTED_EXTENSIONS and extComment != "" %}
  {{ ext.overview() }}

<p>
  {{extComment |safe}}
</p>

{% elif ENABLE_HOSTED_EXTENSIONS and host_ext == "test001" %}
  {{ ext.overview(name="Test Extension", abbrev="test1") }}

  <p>This is purely here for testing, please ignore.</p>

  <p><br/></p>

{% else %}


  <h1>Welcome to fhir.schema.org</h1>
 <h2>Introduction</h2>

<br />
The <a href="https://www.hl7.org/fhir/">FHIR® – Fast Healthcare Interoperability Resources</a> are built from a set of modular
      components called "Resources". The definitions used in the various FHIR resources could potentially be viewed
      as a set of loose "semantics" that could be used as markup for HTML, XML or JSON documents.

      <br /><br />
      While we aren't certain whether the FHIR resource constructs make sense in the context of the schema.org
      ecosystem, we thought that the easiest way to answer this question might be to propose <i>a</i> way of representing
      FHIR in the schema.org environment and use it to demonstrate some sample use cases.
      <br /><br />
      To accomplish this, we have created two schema.org extensions:
      <ol>
          <li>The <a href="https://www.hl7.org/fhir/fivews.html">FHIR W5 "ontology"</a> - this provides a upper level
          classification of FHIR resources, as well as providing a basic list of "who, what, when, where and why" predicates.</li>
          <li>The FHIR resource definitions themselves - this is the set of resources and their attributes as defined in
          the FHIR core.</li>
      </ol>
      It would also be possible (and even sensible) to extend this core ontology with appropriate
      FHIR <a href="https://www.hl7.org/FHIR/profiling.html">Profiles</a>.
      <h2>Relationship to other schema.org schemas</h2>
      At the moment, there is almost no overlap between the FHIR schema elements and the components of the
      <a href="https://schema.org/docs/schemas.html">core schema.org</a> schema.  The root node of the
      <a href="http://w5.fhirsdo.clinicalprofiles.org">W5 ontology</a> (<a href="http://w5.fhirsdo.clinicalprofiles.org/w5">w5</a>)
      is currently a direct subclass of <a href="http://w5.fhirsdo.clinicalprofiles.org/Thing">THING</a>.  All other
      classes in the W5 and FHIR schemas subclass W5 descendants.  The FHIR Resource inheritence  structure is also
      preserved.
      <br /><br />
      <emph>Assuming</emph> that the FHIR schema.org resource can be proven to be potentially useful, an obvious next step
      would be to examine how the elements within it relate to:
      <ul>
          <li>The proposed <a href="https://schema.org/docs/meddocs.html">Health and medical types</a> </li>
          <li>The <a href="https://www.w3.org/wiki/WebSchemas/BioDatabases">BioDatabases proposal</a> (assuming we can find
          where it ended up in the schema.org space)</li>
          <li>Schema.org root classes themselves</li>
      </ul>

      <br/><br/>
      <h2>Next steps</h2>
      <ul>
          <li>Determine whether the W5 model has been correctly represented.  In particular, we need to determine whether the
          "w"'s (e.g. <a href="http://w5.fhirsdo.clinicalprofiles.org/where">where</a>,
              <a href="https://http://w5.fhirsdo.clinicalprofiles.org/who.actor">who.actor </a>, etc.) should be Classes or Properties and,
          if they are properties, what the appropriate domain(s) and range(s) are.</li>
          <li>Determine whether the FHIR model should be grounded in the <a href="https://schema.org/DataType">schema.org datatypes</a>
          or whether some or all of the <a href="https://www.hl7.org/FHIR/datatypes.html">FHIR "datatypes"</a> (quotes because the FHIR definition of "datatype" is quite different than
          that used in data modeling) should be added to this list.</li>
          <li>Determine the appropriate level of granularity in the FHIR resources -- how much detail is required</li>
      </ul>


      <h2>Tools, Links, etc.</h2>
      <ul>
      <li>The source for this web site currently resides in the <a href="https://github.com/lushacao/schemaorg">lushacao/schemaorg</a> repository.</li>
          <li><a href="https://github.com/lushacao/schemaorg/blob/master/data/ext/fhir/fhir.rdfa">fhir.rdfa</a> was built using from the
              <a href="https://github.com/crDDI/fhir_to_sdo/blob/master/scripts/fhirtosdo">fhirtosdo</a> script
          <a href="https://github.com/crDDI/fhir_to_sdo">fhir_to_sdo</a> github repository </li>
          <li><a href="https://github.com/lushacao/schemaorg/blob/master/data/ext/w5/w5.rdfa">w5.rdfa</a> was built using from the
              <a href="https://github.com/crDDI/fhir_to_sdo/blob/master/scripts/w5tosdo">w5tosdo</a> script
          <a href="https://github.com/crDDI/fhir_to_sdo">fhir_to_sdo</a> github repository </li>
      </ul>
</div>


{% endif %}

{{ ext_contents | safe }}

<div id="footer"><p>
  <a href="docs/terms.html">Terms and conditions</a></p>
</div>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-52672119-1', 'auto');
  ga('send', 'pageview');

</script>



<p><br/></p>

{{ ext.debugInfo() }}

</body>
</html>
