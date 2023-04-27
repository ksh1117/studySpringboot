<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Main</title>
    <link rel="stylesheet" href="/resources/assets/css/main.css"/>
    <noscript>
        <link rel="stylesheet" href="/resources/assets/css/noscript.css"/>
    </noscript>
</head>
<body class="is-preload">

<!-- Wrapper -->
<div id="wrapper" class="divided">
    <section class="wrapper style1 align-center">
        <!-- Spotlight -->
        <c:forEach items="${list}" var="story">
            <c:if test="${story.board_ty eq 'story'}">
                <section class="banner style1 orient-left content-align-left image-position-right fullscreen onload-image-fade-in onload-content-fade-right">
                  <div class="content">
                      <h1><c:out value="${story.title}"></c:out></h1>
                      <p class="major"><c:out value="${story.sub_content}"></c:out></p>
                      <p class="major"><c:out value="${story.content}"></c:out></p>
                  </div>
                  <div class="image">
                      <img src="/resources/images/banner.jpg" alt="" />
                  </div>
                </section>
            </c:if>
        </c:forEach>
    </section>
    <section class="wrapper style1 align-center">
        <div class="inner">
            <h2>Gallery</h2>
        </div>
        <!-- Gallery -->
        <div class="gallery style2 medium lightbox onscroll-fade-in">
            <c:forEach items="${list}" var="gallery">
                <c:if test="${gallery.board_ty eq 'gallery'}">
                <article>
                    <a href="/resources/images/gallery/fulls/01.jpg" class="image">
                        <img src="/resources/images/gallery/thumbs/01.jpg" alt=""/>
                    </a>
                    <div class="caption">
                        <h3><c:out value="${gallery.title}"></c:out></h3>
                        <p><c:out value="${gallery.content}"></c:out></p>
                        <p class="major" style="font-size: 20px"><c:out value="${gallery.sub_content}"></c:out></p>
                    </div>
                </article>
                </c:if>
            </c:forEach>
        </div>
    </section>
    <!-- Items -->
    <section class="wrapper style1 align-center">
        <div class="inner">
            <h2>Items</h2>
            <div class="items style1 medium onscroll-fade-in">
                <c:forEach var="item" items="${list}">
                    <c:if test="${item.board_ty eq 'items'}">
                    <section>
                        <span class="icon solid style2 major fa-hashtag"></span>
                        <h3><c:out value="${item.title}"></c:out></h3>
                        <p style="margin-bottom: 10px"><c:out value="${item.content}"></c:out></p>
                    </section>
                </c:if>
                </c:forEach>
            </div>
        </div>
    </section>
    <!-- Heading -->
    <section>
        <header>
            <h3>Headings</h3>
        </header>
            <div class="content">
                <c:forEach var="heading" items="${list}">
                <c:if test="${heading.board_ty eq 'headings'}">
                <header>
                    <h1><c:out value="${heading.title}"></c:out></h1>
                    <p><c:out value="${heading.sub_content}"></c:out></p>
                </header>
                <p><c:out value="${heading.content}"></c:out></p>
                <hr />
                </c:if>
                </c:forEach>
            </div>
    </section>
    <!-- Definition List -->
    <section>
        <header>
            <h3>Definition List</h3>
        </header>
        <div class="content">

            <dl>
                <c:forEach var="definitionList" items="${list}">
                <c:if test="${definitionList.board_ty eq 'definitionList'}">
                    <dt><c:out value="${definitionList.title}"></c:out></dt>
                    <dd>
                        <p><c:out value="${definitionList.content}"></c:out></p>
                    </dd>
                </c:if>
                </c:forEach>
            </dl>

        </div>
    </section>

</div>
            <!-- Scripts -->
            <script src="/resources/assets/js/jquery.min.js"></script>
            <script src="/resources/assets/js/jquery.scrollex.min.js"></script>
            <script src="/resources/assets/js/jquery.scrolly.min.js"></script>
            <script src="/resources/assets/js/browser.min.js"></script>
            <script src="/resources/assets/js/breakpoints.min.js"></script>
            <script src="/resources/assets/js/util.js"></script>
            <script src="/resources/assets/js/main.js"></script>

            <!-- Note: Only needed for demo purposes. Delete for production sites. -->
            <script src="/resources/assets/js/demo.js"></script>

</body>
</html>
