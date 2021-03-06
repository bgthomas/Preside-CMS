---
id: "form-linkpickereditlinkform"
title: "Link picker: edit link form"
---

This form is used for editing links through the link picker form control

<div class="table-responsive"><table class="table table-condensed"><tr><th>File path</th><td>/forms/preside-objects/link/admin.quickedit.xml</td></tr><tr><th>Form ID</th><td>preside-objects.link.admin.quickedit</td></tr></table></div>

```xml
<?xml version="1.0" encoding="UTF-8"?>

<form>
    <tab id="basic" sortorder="10" title="preside-objects.link:basic.tab.title">
        <fieldset id="standard" sortorder="10">
            <field sortorder="10" binding="link.type" control="hidden" />
            <field sortorder="20" binding="link.internal_title" />
        </fieldset>

        <!-- we will show/hide these fieldsets depending on the selected link type -->
        <fieldset id="sitetree" sortorder="20">
            <field sortorder="10" binding="link.page" />
        </fieldset>

        <fieldset id="url" sortorder="30">
            <field sortorder="10" binding="link.external_protocol" control="select" values="http://,https://,ftp://,news://" addMissingValues="true" />
            <field sortorder="20" binding="link.external_address"  control="textinput" />
        </fieldset>

        <fieldset id="email" sortorder="40">
            <field sortorder="10" binding="link.email_address" control="textinput"   />
            <field sortorder="20" binding="link.email_subject" control="textinput"   />
            <field sortorder="30" binding="link.email_body"                          />
            <field sortorder="40" binding="link.email_anti_spam" defaultValue="true" />
        </fieldset>

        <fieldset id="asset" sortorder="50">
            <field sortorder="10" binding="link.asset" />
        </fieldset>
    </tab>

    <tab id="content" sortorder="20" title="preside-objects.link:content.tab.title">
        <fieldset id="content" sortorder="10">
            <field sortorder="10" binding="link.title" control="textinput" />
            <field sortorder="20" binding="link.text"  control="textinput" />
            <field sortorder="30" binding="link.image" />
            <field sortorder="40" binding="link.target" control="select" values="_self,_blank,_parent,_top" labels="preside-objects.link:targets.self,preside-objects.link:targets.blank,preside-objects.link:targets.parent,preside-objects.link:targets.top" />
        </fieldset>
    </tab>
</form>
```