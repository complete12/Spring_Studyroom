<!-- 게시판 글쓰기 페이지-->
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp"%>

<%@ include file="/WEB-INF/jsp/cart_header.jsp"%>
<!-- Contact Form - START -->
<div class="container" style="margin-top:70px;">

    <div class="row">
        <div class="col-md-12">
            <div class="well well-sm" style="border-radius:10px; background:rgba(255,255,255,0.4);">
               
                <form:form modelAttribute="board" method="post" action="../index/board.html" class="form-horizontal">
                    <fieldset>
                        <legend class="text-center header" style="font-size:50pt; "> Question </legend>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">Title
                                <input id="title" name="title" type="text" placeholder="제목을입력하시오" class="form-control">
                            </div>
                        </div>
                        

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
                            <div class="col-md-8">Writer
                                <input id="quser" name="quser" type="text" placeholder="" class="form-control">
                            </div>
                        </div>

            
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
                            <div class="col-md-8">Content
                                <textarea class="form-control" id="content" name="content" placeholder="내용을 입력하시오." rows="7"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <button type="submit" class="btn btn-primary btn-lg">Submit</button>
                            </div>
                        </div>
                    </fieldset>
                </form:form>
            </div>
        </div>
    </div>
</div>

<style>
    .h1 {
        [padding :10px;]
    }
    .header {
        color: black;
        font-size: 27px;
        padding: 10px;
    }

    .bigicon {
        font-size: 35px;
        color: #36A0FF;
    }
</style>

<!-- Contact Form - END -->

</div>

</body>
</html>


