<cfparam name="url.fusebox" default="">
<cfswitch expression="#url.fusebox#">
    <cfcase value="TBLadmin"> 
        <cfinclude template="admin/index.cfm">
    </cfcase>
    <cfcase value="TBLdefinition"> 
        <cfinclude template="definition/index.cfm">
    </cfcase>
    <cfdefaultcase>
        <cfinclude template="dsp_home.cfm">
    </cfdefaultcase>
</cfswitch>
