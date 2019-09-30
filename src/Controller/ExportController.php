<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;

class ExportController extends AppController
{
    public function exportTest()
    {
        // Create an instance of the class:
        $mpdf = new \Mpdf\Mpdf(['autoLangToFont' => true]);
        $html = '<table style="border: solid 0.1px red" lang="ja">
        <thead>
          <tr>
            <th>インタラ</th>
            <th>インタラ</th>
            <th>インタラ</th>
            <th>インタラ</th>
            <th>インタラ date</th>
            <th>Saインタラlary</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>ドはより見通しが立ちやすく</td>
            <td>ェイスの作成にともな</td>
            <td>を設計するだけで、React</td>
            <td>ザーインターフう苦痛を取り</td>
            <td>ントだけを効率的に</td>
            <td>ントだけを効率的に</td>
          </tr>
        </tbody>
      </table>';
        // Write some HTML code:
        $mpdf->WriteHTML($html);

        // Output a PDF file directly to the browser
        $mpdf->Output('Test.pdf','I');
        $this->redirect('/home/index');
    }
}
