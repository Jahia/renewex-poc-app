<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="random" class="java.util.Random" scope="application" />

<template:addResources type="javascript" resources="webapp/renewex_poc_app.bundle.js" />

<c:set var="targetId" value="REACT_RENEWEX_${fn:replace(random.nextInt(),'-','_')}"/>

<div id="${targetId}"></div>

<script>
    const renewexPoCApp_context_${targetId}={ }
    window.addEventListener("DOMContentLoaded", (event) => {
        <%--window.renewexPoCApp("${targetId}",renewexPoCApp_context_${targetId});--%>
        <%--//in case if edit mode slow down the load waiting for the jahia GWT UI was setup,--%>
        <%--// otherwise the react app failed (maybe loosing his position as the DOM is updated by the jahia UI at the same time)--%>
        <c:choose>
        <c:when test="${renderContext.editMode}" >
        setTimeout(() => {
            window.renewexPoCApp("${targetId}",renewexPoCApp_context_${targetId});
        },500);
        </c:when>
        <c:otherwise>
        window.renewexPoCApp("${targetId}",renewexPoCApp_context_${targetId});
        </c:otherwise>
        </c:choose>
    });
</script>