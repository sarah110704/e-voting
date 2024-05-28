<x-user-layout>
    <div class="py-3">
        <div class="row h-100 g-0 my-5 justify-content-center">
            <div class="col-lg-6 my-auto">
                <div class="card border-0 shadow">
                    <div class="card-header text-center fs-3 fw-bold text-uppercase p-3 border-0 shadow-sm">
                        Pemberitahuan
                    </div>
                    <div class="card-body p-3">
                        <div class="display-3 text-center my-3">
                            <i class="bi bi-check2-all text-success"></i>
                        </div>
                        <div>
                            <h3 class="fw-bold text-center">
                                Sesi Pemilihan Sudah Selesai <br>
                                Harap Menuju Halaman Hasil Pemilihan
                            </h3>
                        </div>
                        <div class="align-self-center text-center m-3">
                            <a href="{{ route('voting.result') }}" class="btn btn-rounded btn-lg btn-dark border-0 shadow-lg">
                                <i class="bi bi-arrow-right"></i>&nbsp; Menuju Hasil
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-user-layout>