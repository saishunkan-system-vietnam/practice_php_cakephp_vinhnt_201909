<!-- Example DataTables Card-->
<div class="card mb-3">
    <div class="card-header">
        <div class="row">
            <div class="col-md-6">
                <i class="fa fa-plus-square pr-1"></i> Update Book
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="col-md-6">
            <form method="POST" action="/app/books/edit/<?= $book->id?>">
                <input type="hidden" name="id" value="<?= $book->id?>">
                <div class="form-group">
                    <label>Title</label>
                    <input type="text" name="title" class="form-control" placeholder="Title..." value="<?= $book->title?>">
                </div>
                <div class="form-group">
                    <label>Category</label>
                    <select class="form-control" name="id_category">
                    <?php for($idx = 1; $idx < 9; $idx++){?>
                        <option value="<?= $idx ?>" <?php if($idx == $book->id_category){ ?> selected="selected" <?php } ?>><?= $idx ?></option>
                    <?php } ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Author</label>
                    <input type="text" name="author" class="form-control" placeholder="Author..." value="<?= $book->author?>">
                </div>
                <div class="form-group">
                    <label>Stock</label>
                    <input type="text" name="stock" class="form-control" placeholder="Stock..." value="<?= $book->stock?>">
                </div>
                <div class="form-group">
                    <label>Year</label>
                    <input type="text" name="year" class="form-control" placeholder="Year..." value="<?= $book->year?>">
                </div>
                <div class="form-group">
                    <label>Content Short</label>
                    <textarea class="form-control" rows="3" name="content_short"><?= $book->content_short?></textarea>
                </div>
                <div class="form-group text-right">
                    <input type="submit" class="btn btn-primary" value="Update">
                </div>
            </form>
        </div>
    </div>
    <div class="card-footer small text-muted">&nbsp;</div>
</div>
</div>