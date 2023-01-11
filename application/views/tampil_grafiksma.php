<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">GRAFIK TUNGGAKAN SMA</b></h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">SIM BPP</a></li>
                        <li class="breadcrumb-item active">Grafik</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <div class="content">
       
    <div class="container">

    <?php foreach ($grafik as $data){
        $jumlah_tunggakan[]=$data->jumlah_tunggakan;
        $keterangan[]=$data->keterangan;
    }
    ?>

    <div id="container" style="width:100%; height:400px;"></div>



        </div>

    </div>
</div>
</div>

<script>
    Highcharts.chart('container', {

title: {
    text: 'GRAFIK OS BPP DIVISI SMA'
},

subtitle: {
    text: 'Tahun Pelajaran 2022-2023'
},

yAxis: {
    title: {
        text: 'Jumlah Tunggakan'
    }
},

xAxis: {
    categories: <?=json_encode($keterangan)?>
},

legend: {
    layout: 'vertical',
    align: 'right',
    verticalAlign: 'middle'
},

plotOptions: {
    series: {
        label: {
            connectorAllowed: false
        },
    }
},

series: [{
    name: 'OS BPP SMA',
    data: <?=json_encode($jumlah_tunggakan,JSON_NUMERIC_CHECK)?>
}],

responsive: {
    rules: [{
        condition: {
            maxWidth: 500
        },
        chartOptions: {
            legend: {
                layout: 'horizontal',
                align: 'center',
                verticalAlign: 'bottom'
            }
        }
    }]
}

});
</script>

<!-- <script>
document.addEventListener('DOMContentLoaded', function () {
    Highcharts.chart('container', {
    chart: {
        type: 'line'
    },
    title: {
        text: 'GRAFIK OS BPP SD'
    },
    subtitle: {
        text: 'Tahun Pelajaran 2021-2022</b>'
    },
    xAxis: {
        categories: <?=json_encode($keterangan)?>
    },
    yAxis: {
        title: {
            text: 'Hasil Asesmen (%)'
        }
    },
    plotOptions: {
        line: {
            dataLabels: {
                enabled: true
            },
            enableMouseTracking: false
        }
    },
    series: [{
        name: 'DT',
        data: <?=json_encode($jumlah_tunggakan,JSON_NUMERIC_CHECK)?>
    }
});
    });
</script> -->

