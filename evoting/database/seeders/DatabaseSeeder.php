<?php

namespace Database\Seeders;
use App\Models\Admin; 

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Admin::create([
            'name' => 'Admin',
            'username' => 'admin',
            'password' => '$2a$12$iovk3qdYUSWlceUu55VVs.Hw6TvWDGIoSZU2m7HP2ftSFfoUoAI3G',
            'is_super' => 1
        ]);
    }
}
