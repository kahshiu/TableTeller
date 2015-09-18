<cfcomponent displayname="admin" hint="admin">

    <cffunction name="dsp_home" hint="columns" returntype="any">
        <cfinclude template="dsp_home.cfm">
    </cffunction>

    <cffunction name="act_columns" hint="columns" returntype="any">
    </cffunction>
    <cffunction name="dsp_columns" hint="columns" returntype="any">
        <cfinclude template="dsp_columns.cfm">
    </cffunction>

    <cffunction name="act_table" hint="tables" returntype="any">
    </cffunction>
    <cffunction name="dsp_table" hint="tables" returntype="any">
        <cfinclude template="dsp_table.cfm">
    </cffunction>

</cfcomponent>
