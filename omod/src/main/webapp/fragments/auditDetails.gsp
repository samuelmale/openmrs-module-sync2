<%
    def artifactId = "sync2.log.header"
%>

<style>
.label {
    width: 20%;
}
</style>

<table>
    <% if (auditLog != null) { %>
    <tr>
        <th class="label">${ ui.message(artifactId + ".resource") }</th>
        <td><textarea style="width:100%" disabled>${ auditLog.resourceName }</textarea></td>
    </tr>
    <tr>
        <th class="label">${ ui.message(artifactId + ".timestamp") }</th>
        <td>${ auditLog.timestamp }</td>
    </tr>
    <tr>
        <th class="label">${ ui.message(artifactId + ".Url") }</th>
        <td>${ auditLog.resourceUrl }</td>
    </tr>
    <tr>
        <th class="label">${ ui.message(artifactId + ".status") }</th>
        <td>${ auditLog.success }</td>
    </tr>
    <tr>
        <th class="label">${ ui.message(artifactId + ".action") }</th>
        <td>${ auditLog.action }</td>
    </tr>
    <tr>
        <th class="label">${ ui.message(artifactId + ".message") }</th>
        <td>${ auditLog.error }</td>
    </tr>
    <% } else { %>
    <tr>
        <th>${ ui.message(artifactId + '.details.messageNotFound') }</th>
    </tr>
    <% } %>
</table>