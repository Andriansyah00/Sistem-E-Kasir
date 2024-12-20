<div class="col-12">
        <b>Tanggal :</b> <?= $tgl ?>
        <table class="table table-bordered table-striped">
            <tr class="text-center">
                <th>NO</th>
                <th>Barcode/Kode</th>
                <th>Nama Produk</th>
                <th>Harga Beli</th>
                <th>Harga Jual</th>
                <th>Qty</th>
                <th>Total Harga</th>
                <th>Total Untung</th>
            </tr>
            <?php $no = 1;
            foreach ($dataharian as $key => $value) {
                $grand_total[] = $value['total_harga'];
                $grand_untung[] = $value['untung'];

            ?>

                <tr>
                    <td><?= $no++ ?></td>
                    <td class="text-center"><?= $value['kode_produk'] ?></td>
                    <td class="text-center"><?= $value['nama_produk'] ?></td>
                    <td class="text-right">Rp. <?= number_format($value['modal'], 0) ?></td>
                    <td class="text-right">Rp. <?= number_format($value['harga'], 0) ?></td>
                    <td class="text-center"><?= $value['qty'] ?></td>
                    <td class="text-right">Rp. <?= number_format($value['total_harga'], 0) ?></td>
                    <td class="text-right">Rp. <?= number_format($value['untung'], 0) ?></td>
                </tr>
            <?php } ?>
            <tr class="text-center bg-gray">
                <td colspan="6">
                    <h5>Grand Total</h5>
                </td>
                <td class="text-right">
                    Rp. <?= $dataharian == null ? '' : number_format(array_sum($grand_total), 0) ?>
                </td>
                <td class="text-right">
                    Rp. <?= $dataharian == null ? '' : number_format(array_sum($grand_untung), 0) ?>
                </td>
            </tr>


        </table>
    </div>