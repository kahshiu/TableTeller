<!--- hint: create application scope --->
<cfapplication
    name              = "TableTeller"
    clientManagement  = "no"
    clientStorage     = "no"
    scriptProtect     = "yes"
    sessionManagement = "yes"
    sessionTimeout    = "yes"
    setClientCookies  = "no"
    setDomainCookies  = "yes" >

<!--- hint: locking and checking application initiation --->
<cflock scope="application" type="readonly" timeout="120">
    <cfset application_done_init = StructKeyExists(application,"isInit") and application.isInit>
</cflock>

<!--- hint: locking and initiating variables --->
<cfif NOT application_done_init>
    <cflock scope="application" type="exclusive" timeout="120">
        <cfset application.isInit = true>
        <cfset application.server = "http://localhost">
        <cfset application.folder = "tableteller">
        <cfset application.appPath = ListAppend(application.server,application.folder,'/')>
    </cflock>
</cfif>

