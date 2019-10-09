<!-- Example DataTables Card-->
<div class="card mb-3">
    <div class="card-header">
        <div class="row">
            <div class="col-md-6">
                <i class="fa fa-plus-square pr-1"></i> Add new book
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="col-md-6">
            <form method="POST">
                <div class="form-group">
                    <label>Title</label>
                    <input type="text" name="title" class="form-control" placeholder="Title...">
                </div>
                <div class="form-group">
                    <label>Category</label>
                    <select class="form-control" name="category">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Author</label>
                    <input type="text" name="author" class="form-control" placeholder="Author...">
                </div>
                <div class="form-group">
                    <label>Stock</label>
                    <input type="text" name="stock" class="form-control" placeholder="Stock...">
                </div>
                <div class="form-group">
                    <label>Year</label>
                    <input type="text" name="year" class="form-control" placeholder="Year...">
                </div>
                <div class="form-group">
                    <label>Content Short</label>
                    <textarea class="form-control" rows="3" name="content_short"></textarea>
                </div>
                <div class="form-group text-right">
                    <input type="submit" class="btn btn-primary" value="Save">
                </div>
            </form>
        </div>
    </div>
    <div class="card-footer small text-muted">&nbsp;</div>
</div>
</div>
