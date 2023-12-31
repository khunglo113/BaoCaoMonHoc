<?= $this->extend('User/layout') ?>
<?= $this->section('content') ?>
<input id="baseUrl" value="${pageContext.request.contextPath}" style="display: none;" />
<style type="text/css">
    .hidden {
        display: none;
    }

    .error-message {
        color: red;
    }

    .anchor {
        display: block;
        height: 115px;
        /*same height as header*/
        margin-top: -115px;
        /*same height as header*/
        visibility: hidden;
    }
</style>
</head>

<body>

    <div class="container">
        <!--PAGE TITLE-->
        <div class="span9" style="text-align: center">
            <div class="page-header">
                <h4 style="font-weight: bold;">DANH SÁCH BÀI TẬP ĐỌC</h4>
            </div>
        </div>

        <!-- /. PAGE TITLE-->
        <div class="row">
            <div class="span9" style="text-align: center">
                <div>
                    <div class="span3">
                        <select class="form-control" name="partSearch" id="partSearch">
                            <option value="5">Part 5</option>
                            <option value="6">Part 6</option>
                            <option value="7">Part 7</option>
                        </select>
                    </div>
                    <div class="span3" style="margin-left: 0px">
                        <select class="form-control" name="doKhoSearch" id="doKhoSearch">
                            <option value="1">Mức dễ</option>
                            <option value="2">Mức trung bình</option>
                            <option value="3">Mức khó</option>
                        </select>
                    </div>
                    <button type="button" class="btn btn-primary" id="btnDuyetBaiDoc">Tìm
                        Bài đọc</button>
                </div>
                <hr>
                <!--Blog Post-->
                <ul class="danhSach" style="text-align: left; padding-left: 45px;">
                </ul>
                <p class="hidden" id="pTag">Không có dữ liệu</p>

                <div class="pagination">
                    <ul class="ul-pagination"></ul>
                </div>
            </div>

            <!-- /. PAGE TITLE-->
            <div class="row">
                <div class="span9">

                <div class="span1.0">
                            <div class="thumbnail well">
                                <img width="100" height="50" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGYjojzDhbNMTBJAmtBMbFi_81QnabIKDSbQ&usqp=CAU" alt="Card image cap">
                                <div class="caption">
                                    <b>PART 5</b>
                                    <a  href="<?= base_url('Practice/Read/'.$part5[0]['id']) ?>" class="btn btn-primary">Exam now</a>
                                </div>
                            </div>
                        </div>
                        <div class="span1.0">
                            <div class="thumbnail well">
                                <img width="100" height="50" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGYjojzDhbNMTBJAmtBMbFi_81QnabIKDSbQ&usqp=CAU" alt="Card image cap">
                                <div class="caption">
                                <b>PART 6</b>
                                    <a  href="<?= base_url('Practice/Read/'.$part6[0]['id']) ?>" class="btn btn-primary">Exam now</a>
                                </div>
                            </div>
                        </div>
                        <div class="span1.0">
                            <div class="thumbnail well">
                                <img width="100" height="50" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGYjojzDhbNMTBJAmtBMbFi_81QnabIKDSbQ&usqp=CAU" alt="Card image cap">
                                <div class="caption">
                                <b>PART 7</b>
                                    <a  href="<?= base_url('Practice/Read/'.$part7[0]['id']) ?>" class="btn btn-primary">Exam now</a>
                                </div>
                            </div>
                        </div>



                    <br>
                </div>
                <div class="span3">
                    <div class="side-bar">

                        <h3>DANH MỤC</h3>
                        <ul class="nav nav-list">
                            <li><a href="/webtoeic/listening">LUYỆN BÀI NGHE</a></li>
                            <li><a href="/webtoeic/reading">LUYỆN BÀI ĐỌC</a></li>
                            <li><a href="/webtoeic/listExam">THI THỬ</a></li>
                            <li><a href="/webtoeic/listGrammar">HỌC NGỮ PHÁP</a></li>
                            <li><a href="/webtoeic/listVocab">HỌC TỪ VỰNG</a></li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>
        <br><br><br><br><br><br><br><br>
        </div>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
        <script src="<<?= base_url() ?>resources/js/client/baiDoc/danhSachBaiDoc.js"></script>
</body>

</html>
<?= $this->endSection() ?>
