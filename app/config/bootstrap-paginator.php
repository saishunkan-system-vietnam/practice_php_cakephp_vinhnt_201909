<?php

$config = [
'nextActive' => '<li class="page-item">
<a class="page-link" href="{{url}}" aria-label="{{text}}">
<span aria-hidden="true">&raquo;</span>
</a>
</li>',
    'nextDisabled' => '<li class="page-item disabled"><a class="page-link" href="#" tabindex="-1">&raquo;</a></li>',
    'prevActive' => '<li>
<a class="page-link" href="{{url}}" aria-label="{{text}}">
<span aria-hidden="true">&laquo;</span>
</a>
</li>',
    'prevDisabled' => '<li class="page-item disabled"><a class="page-link" href="#" tabindex="-1">&laquo;</a></li>',
    'counterRange' => '{{start}} - {{end}} of {{count}}',
    'counterPages' => '{{page}} of {{pages}}',
    'first' => '<li class="first page-item"><a class="page-link" href="{{url}}">{{text}}</a></li>',
    'last' => '<li class="last page-item"><a class="page-link" href="{{url}}">{{text}}</a></li>',
    'number' => '<li class="page-item"><a class="page-link" href="{{url}}">{{text}}</a></li>',
    'current' => '<li class="page-item active"><a class="page-link" href="{{url}}">{{text}}</a></li>',
    'ellipsis' => '<li class="ellipsis">...</li>',
    'sort' => '<a class="page-link" href="{{url}}">{{text}}</a>',
    'sortAsc' => '<a class="asc page-link" href="{{url}}">{{text}}</a>',
    'sortDesc' => '<a class="desc page-link" href="{{url}}">{{text}}</a>',
    'sortAscLocked' => '<a class="asc locked page-link" href="{{url}}">{{text}}</a>',
    'sortDescLocked' => '<a class="desc locked page-link" href="{{url}}">{{text}}</a>',
];
?>
