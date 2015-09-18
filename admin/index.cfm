<cfparam name="url.fuseaction" default="">
<cfswitch expression="#url.fuseaction#">
    <cfcase value="dsp_home"> 
        <cfinvoke component="index" method="dsp_home">
    </cfcase>
    <cfcase value="dsp_table"> 
        <cfinvoke component="index" method="dsp_table">
    </cfcase>
    <cfcase value="act_table"> 
        <cfinvoke component="index" method="act_table">
    </cfcase>
    <cfcase value="dsp_columns"> 
        <cfinvoke component="index" method="dsp_columns">
    </cfcase>
    <cfcase value="act_columns"> 
        <cfinvoke component="index" method="act_columns">
    </cfcase>
    <cfdefaultcase>
        <cfinclude template="dsp_home.cfm">
    </cfdefaultcase>
</cfswitch>

