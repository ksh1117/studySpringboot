<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/assets/css/main.css" />
    <noscript><link rel="stylesheet" href="/resources/assets/css/noscript.css" /></noscript>
</head>
<body>
<section class="wrapper style1 align-center">
    <div class="inner medium">
        <h2>관리자 페이지</h2>
        <form method="post" action="/adminOk">
            <div class="fields">
                <div class="field half">
                    <label for="name">제목</label>
                    <input type="text" name="title" id="name" value="" />
                </div>
                <div class="field half">
                    <label for="email">부제목</label>
                    <input type="text" name="sub_content" id="email" value="" />
                </div>
                <div class="field">
                    <select name="board_ty">
                        <option value="story">Story</option>
                        <option value="gallery">Gallery</option>
                        <option value="items">Items</option>
                        <option value="headings">Headings</option>
                        <option value="definitionList">Definition List</option>
                    </select>
                </div>
                <div class="field">
                    <label for="message">내용</label>
                    <textarea name="content" id="message" rows="6"></textarea>
                </div>
            </div>
            <ul class="actions special">
                <li><input type="submit" name="submit" id="submit" value="글 등록" /></li>
            </ul>
        </form>
    </div>
</section>
<section>
    <header>
        <h3>글목록</h3>
    </header>
    <div class="content">
        <div class="table-wrapper">
            <table>
                <thead>
                <tr>
                    <th>글 번호</th>
                    <th>글 제목</th>
                    <th>부제목</th>
                    <th>카테고리</th>
                    <th>글 내용</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="board">
                    <tr>
                        <td><c:out value="${board.id}"></c:out></td>
                        <td><c:out value="${board.title}"></c:out></td>
                        <td><c:out value="${board.sub_content}"></c:out></td>
                        <td><c:out value="${board.board_ty}"></c:out></td>
                        <td><c:out value="${board.content}"></c:out></td>
                        <td><a href="/delete?id=${board.id}">X</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</section>
</body>
</html>
