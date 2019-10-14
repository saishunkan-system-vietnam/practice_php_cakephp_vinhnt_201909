<!-- Example DataTables Card-->
<div class="card mb-3">
    <div class="card-header">
        <div class="row">
            <div class="col-md-6">
                <i class="fa fa-table"></i> Data Table Book
            </div>
            <div class="col-md-6 text-right">
                <a href="/app/books/add"><i class="fa fa-plus-square pr-1" aria-hidden="true"></i>Add new</a>
            </div>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-md-11 mx-auto" style="border: 1px solid #dee2e6; padding:1rem; background: #CDDADA">
            <form method="GET" action="/app/books/search">
                <div class="form-row">
                    <div class="col-md-5">
                        <input type="text" name="title" class="form-control" placeholder="Title...">
                    </div>
                    <div class="col-md">
                        <input type="text" name="author" class="form-control" placeholder="Author...">
                    </div>
                    <div class="col-md">
                        <input type="text" name="year" class="form-control" placeholder="Year...">
                    </div>
                    <div class="col-md">
                        <select class="form-control" name="id_category">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                    <div class="col-md-1">
                        <input type="submit" name="search" class="form-control" value="Search">
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Year</th>
                        <th>Stock</th>
                        <th>Out Stock</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Year</th>
                        <th>Stock</th>
                        <th>Out Stock</th>
                        <th>Action</th>
                    </tr>
                </tfoot>
                <tbody>
                    <?php if (isset($listBooks)): ?>
                    <?php foreach ($listBooks as $book): ?>
                    <tr>
                        <td><?=$book->title; ?></td>
                        <td><?=$book->author; ?></td>
                        <td><?=$book->year; ?></td>
                        <td><?=$book->stock; ?></td>
                        <td><?=$book->out_stock; ?></td>
                        <td>
                            <a><i class="fa fa-eye" aria-hidden="true"></i></a>
                            <a href="/app/books/edit/<?= $book->id?>"><i class="fa fa-edit" aria-hidden="true"></i></a>
                            <!-- <a><i class="fa fa-trash" aria-hidden="true"></i></a> -->
                            <?= $this->Form->postLink(
                                'Delete',
                                ['action' => 'delete', $book->id],
                                ['confirm' => 'Are you sure?'])
                            ?>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                    <?php else: ?>
                    <tr>
                        <td colspan="6">No data</td>
                    </tr>
                    <?php endif; ?>
                </tbody>
            </table>
        </div>
        <?php if($this->Paginator->counter('{{pages}}') > 1):?>
        <div class="pagination">
            <!-- Pagination urls -->
            <?=$this->Paginator->prev(); ?>
            <?=$this->Paginator->numbers(); ?>
            <?=$this->Paginator->next(); ?>
        </div><br />
        <!-- Pagination statics -->
        <?=$this->Paginator->counter('Page {{page}} of {{pages}}, showing {{current}} records out of
            {{count}} total, starting on record {{start}}, ending on {{end}}'); ?>
        <?php endif;?>
    </div>
    <div class="card-footer small text-muted">&nbsp;</div>
</div>
</div>
