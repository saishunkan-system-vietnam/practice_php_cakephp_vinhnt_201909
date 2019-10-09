<!-- Breadcrumbs-->
<ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="/app/books">Home</a>
        </li>
        <li class="breadcrumb-item active">List book</li>
      </ol>
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
            <div class="row">
                <div class="col-md-6">
                    <i class="fa fa-table"></i> Data Table Book
                </div>
                <div class="col-md-6 text-right">
                    <a href="#"><i class="fa fa-plus-square pr-1" aria-hidden="true"></i>Add new</a>
                </div>
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
                            <a><i class="fa fa-edit" aria-hidden="true"></i></a>
                            <a><i class="fa fa-trash" aria-hidden="true"></i></a>
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
          <div class="pagination">
             <!-- Pagination urls -->
            <?=$this->Paginator->prev(); ?>
            <?=$this->Paginator->numbers(); ?>
            <?=$this->Paginator->next(); ?>
          </div><br/>
          <!-- Pagination statics -->
          <?=$this->Paginator->counter('Page {{page}} of {{pages}}, showing {{current}} records out of
            {{count}} total, starting on record {{start}}, ending on {{end}}'); ?>
        </div>
        <div class="card-footer small text-muted">&nbsp;</div>
      </div>
    </div>
