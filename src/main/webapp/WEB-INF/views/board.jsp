<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
          crossorigin="anonymous">

    <title>게시판 메인 페이지</title>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        thead {
            background-color: lightgrey;
        }
        td, th {
            border: 1px solid lightgray;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
        .center {
            text-align: center;
        }

        .pagination {
            display: inline-block;
        }

        .pagination a {
            color: black;
            float: left;
            padding: 8px 16px;
            text-decoration: none;
            transition: background-color .3s;
            border: 1px solid #ddd;
        }

        .pagination a.active {
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
        }

        .pagination a:hover:not(.active) {
            background-color: #ddd;
            border-radius: 5px;
        }
    </style>
    <script>

        /*// element 생성하기
        function  createNewElement() {
            const boardList = document.getElementById("myBoardList").value;
            fetch("/", {
                method: "Post",
                headers: {
                    "Content-Type": "application.json",
                },
                body: JSON.stringify({
                    boardTitle: boardList,
                    order: 1,
                    boardIsDelete: false
                }),
            })
                .then((res) => res.json())
                .then((response) => {
                    const li = document.createElement("li");
                    li.value = response.boardTitle;
                    document.getElementById("myExistData").appendChild(li);
                })
        }

        // 화면에 표현하기
        window.onload = function () {
            fetch("/board", {
                method: "GET",
                headers: {
                    "Content-Type": "application.json",
                }
            })
                .then((res) => res.json())
                .then((res) => initBoardList(res));
        }

        const initBoardList = (boardList) => {
            const list = document.getElementsByClassName("boardData");
            for(let i = 0; i <boardList.length; i++) {
                const li = document.createElement("li");
                list.appendChild(li);
            }
        }*/


    </script>

</head>
<body>
<h2 style="text-align: center">게시판 메인 페이지</h2><br>
    <table>
        <thead id="thead">
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>날짜</th>
        </tr>
        </thead>
        <tbody id="tbody">
        <tr>
            <td>2</td>
            <td>안녕하세요</td>
            <td>홍길동</td>
            <td>2022-01-13</td>
        </tr>
        <tr>
            <td>1</td>
            <td>게시판 운영 시작</td>
            <td>관리자</td>
            <td>2022-01-12</td>
        </tr>
        </tbody>
    </table>
    <div style="float:right">
        <button type="button" class="navyBtn" onclick="location.href='writablePage.jsp'">글쓰기</button>

    </div><br><br>

<div class="center">
<div class="pagination">
    <a href="#">&laquo;</a>
    <a href="#"><</a>
    <a href="#" class="active">1</a>
    <a href="#">2</a>
    <a href="#">3</a>
    <a href="#">4</a>
    <a href="#">5</a>
    <a href="#">6</a>
    <a href="#">></a>
    <a href="#">&raquo;</a>
    </div>
</div>
</body>

<ul id="boardData"></ul>


</html>




