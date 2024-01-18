<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="random" class="java.util.Random" scope="application" />

<script type="application/javascript" src="/modules/renewex-poc-app/javascript/webapp/renewex_poc_app.bundle.js"></script>

<c:set var="targetId" value="REACT_RENEWEX_${fn:replace(random.nextInt(),'-','_')}"/>

<div id="${targetId}"></div>

<script>
    window.renewexPoCApp("${targetId}",{});
</script>