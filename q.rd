<resource schema="whsp">
  <meta name="title">WISE High Synchroton Peak blazar candidates catalog</meta>
  <meta name="creationDate">2015-08-12T01:02:03</meta>
  <meta name="description">
    The catalog 1WHSP is the result of a multi-frequency selection for blazars
    like SED, further filtered using IR-radio and IR-X-ray flux-ratios. The sample
    assembled contains almost 992 sources of HSP blazars, of which 425 are
    previously known blazars, 151 new identifications and 416 blazar candidates.
    On the very high energy trend, 299 are confirmed GeV gamma-ray photons emitters
    and 36 have already been detected in the TeV band.
  </meta>
  <meta name="creator.name">Arsioli B., Fraga B., Giommi P., et al.</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">active galaxies</meta>
  <meta name="subject">BL Lacertae</meta>
  <meta name="subject">non-thermal radiation</meta>
  <meta name="subject">blazars</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
    <meta name="waveband">Radio</meta>
    <meta name="waveband">Gamma-ray</meta>
    <meta name="waveband">X-ray</meta>
  </meta>

  <meta name="_longdoc" format="rst">
    We assembled a sample including 992 sources, which is currently the largest
    existing list of confirmed and candidates HSP blazars. All objects are
    expected to radiate up to the highest gamma-ray photon energies. In fact, 
    299 of these are confirmed emitters of GeV gamma-ray photons (based on 
    Fermi-LAT catalogues), and 36 have already been detected in the TeV band. 
    The majority of sources in the sample are within reach of the upcoming 
    Cherenkov Telescope Array (CTA), and many may be detectable even by the 
    current generation of Cherenkov telescopes during flaring episodes. 
    The sample includes 425 previously known blazars, 151 new identifications, 
    and 416 HSP candidates (mostly faint sources) for which no optical spectra 
    is available yet. The sample was defined starting from a primary list of 
    infrared colour-colour selected sources from the ALLWISE all sky survey 
    database, and applying further restrictions on IR-radio and IR-X-ray flux 
    ratios. Using a polynomial fit to the multi-frequency data (radio to X-ray) 
    we estimated synchrotron peak frequencies and fluxes of each object.
  </meta>

  <meta name="source">
    2015AA.inpress; 
  </meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="main" onDisk="True" mixin="//scs#q3cindex" primary="id">
    <index columns="raj2000,decj2000"/>

    <column name="id" type="integer"
      ucd="meta"
      tablehead="id" verbLevel="20"
      description="Internal id"
      required="True"/>

    <column name="name" type="text"
      ucd="meta.id;meta.main"
      tablehead="name" verbLevel="1"
      description="Designation"
      required="True"/>

    <column name="raj2000" type="double precision"
      unit="deg" ucd="pos.eq.ra;meta.main"
      tablehead="RA" verbLevel="1"
      description="Right ascension"
      required="True"/>

    <column name="decj2000" type="double precision"
      unit="deg" ucd="pos.eq.dec;meta.main"
      tablehead="Dec" verbLevel="1"
      description="Declination"
      required="True"/>

    <column name="WISE_mag" type="real"
      unit="mag" ucd="phot.mag;em.IR"
      tablehead="IR mag" verbLevel="1"
      description="WISE magnitude"
      required="True"/>

    <column name="radio_flux" type="real"
      unit="mJy" ucd="phot.flux;em.radio"
      tablehead="Radio flux density" verbLevel="1"
      description="Radio flux density, NVSS or FIRST"
      required="True"/>

    <column name="z" type="real" ucd="src.redshift"
      tablehead="z" verbLevel="1"
      description="redshift"
      required="True"/>

    <column name="z_flag" type="integer" ucd="meta.code"
      tablehead="z-flag" verbLevel="1"
      description="redshift quality flag"
      note="z_flag"
      required="True"/>

    <meta name="note" tag="z_flag">

      Quality/source of the redshift value

      = ===================================
      0 no redshift
      1 trustfull redshift
      2 uncertain value from the literature
      3 lower limit based on R-magnitude
      = ===================================

    </meta>

    <column name="nu_peak" type="real"
      unit="log(Hz)" ucd="em.freq"
      tablehead="log(nu peak)" verbLevel="1"
      description="Synchroton frequency peak"
      required="True"/>

    <column name="nu_flag" type="integer" ucd="meta.code"
      tablehead="nu-flag" verbLevel="1"
      description="Frequency peak measurement quality flag"
      note="nu_flag"
      required="True"/>

    <meta name="note" tag="nu_flag">

      Quality of frequency peak measurement

      = =============
      1 good estimate
      2 uncertain
      3 lower limit
      = =============

    </meta>

    <column name="flux_peak" type="real"
      unit="log(erg.cm**-2.s**-1)" ucd="em.freq"
      tablehead="log(flux peak)" verbLevel="1"
      description="Flux peak"
      required="True"/>

    <column name="blazar_type" type="integer" ucd="meta.code"
      tablehead="Blazar type" verbLevel="1"
      description="Blazar extended information flag"
      note="blazar_type"
      required="True"/>

    <meta name="note" tag="blazar_type">

      Status on previous knowledge of the source

      = ===========================================
      0 already known HSP
      1 HSP candidate; lacks optical spectrum
      2 complementary source from Sedentary catalog
      3 in WISE database of extended sources
      4 complementary TeV detected HSPs
      5 newly identified HSP
      = ===========================================

    </meta>

    <column name="Fermi_gr_slope" type="real"
      ucd="obs.param"
      tablehead="Gamma-ray slope" verbLevel="1"
      description="Gamma-ray slope from Fermi"
      required="False"/>

    <column name="Fermi_gr_slope_error" type="real"
      ucd="stat.error;obs.param"
      tablehead="Gamma-ray slope error" verbLevel="1"
      description="Error on gamma-ray slope from Fermi"
      required="False"/>

    <column name="TEV_FOM" type="real"
      unit="unknown" ucd="obs.param"
      tablehead="TeV FOM" verbLevel="1"
      description="TeV figure-of-merit estimated flux (E>50GeV)"
      required="True"/>

    <column name="BZcat_name" type="text"
      ucd="meta.id.cross"
      tablehead="BZcat name" verbLevel="20"
      description="BZcat designation if any"
      required="False">
      <values nullLiteral="--"/>
    </column>

    <column name="Fermi_name" type="text"
      ucd="meta.id.assoc"
      tablehead="Fermi name" verbLevel="20"
      description="Fermi designation if any"
      required="False">
      <values nullLiteral="--"/>
    </column>

  </table>

  <data id="import">
    <sources>data/data.csv</sources>
    <!-- The input assumes a dump from the web site file with the HTML
      junk at the foot removed and everything at the top removed
      down to (but not including) the line with the column indices -->
    <csvGrammar/>
 
    <make table="main">
      <rowmaker idmaps="*">
        <map dest="Fermi_gr_slope">parseWithNull(@Fermi_gr_slope, float,"-9999.0")</map>
        <map dest="Fermi_gr_slope_error">parseWithNull(@Fermi_gr_slope_error, float,"-9999.0")</map>
        <simplemaps>
            name:source_name,
            raj2000:ra,
            decj2000:dec,
            WISE_mag:WISE_mag_2,
            radio_flux:NVSS_FIRST_flux,
            z:redshift,
            Fermi_name:Fermi_counterpart
        </simplemaps>
      </rowmaker>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form">
    <meta name="title">1WHSP blazar candidates catalog</meta>
    <meta name="shortName">whsp cone</meta>
    <meta name="testQuery">
      <meta name="ra">20.02637</meta>
      <meta name="dec">21.98903</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

