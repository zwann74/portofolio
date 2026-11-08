<?php

namespace Database\Seeders;

use App\Models\Profile;
use App\Models\ProjectCategory;
use App\Models\SkillCategory;
use Illuminate\Database\Seeder;

/**
 * Data portofolio Zakwan Abdurrahman (disinkronkan dengan isi database).
 *
 * Bangun ulang dari nol: php artisan migrate:fresh --seed
 *
 * File yang dirujuk harus ada di folder public:
 *   public/images/foto_zakwan.jpg
 *   public/files/cv_zakwan_abdurrahman.pdf
 */
class PortfolioSeeder extends Seeder
{
    public function run(): void
    {
        $profile = Profile::create([
            'nama'     => 'Zakwan Abdurrahman',
            'headline' => 'Aspiring Web Developer',
            'bio'      => 'Mahasiswa Teknik Informatika yang tertarik pada pengembangan web dan aplikasi mobile. '
                . 'Saya belajar lewat praktikum dan proyek kuliah, mulai dari Laravel dan React Native '
                . 'sampai pengolahan citra dan mikrokontroler.',
            'foto'     => 'foto_zakwan.jpg',
            'cv_file'  => 'cv_zakwan_abdurrahman.pdf',
            'email'    => 'zakwanabdurrahman74@gmail.com',
            'lokasi'   => 'Kota Sukabumi, Jawa Barat',
        ]);

        $profile->educations()->createMany([
            [
                'institusi'     => 'Universitas Muhammadiyah Kota Sukabumi',
                'jenjang'       => 'S1',
                'jurusan'       => 'Teknik Informatika',
                'tahun_mulai'   => 2024,
                'tahun_selesai' => null,
                'ipk'           => 3.45,
                'deskripsi'     => null,
                'urutan'        => 1,
            ],
            [
                'institusi'     => 'SMAN 5 Kota Sukabumi',
                'jenjang'       => 'SMA',
                'jurusan'       => 'IPS',
                'tahun_mulai'   => 2021,
                'tahun_selesai' => 2024,
                'ipk'           => null,
                'deskripsi'     => null,
                'urutan'        => 2,
            ],
        ]);

        $profile->organizations()->createMany([
            [
                'nama'          => 'Himpunan Mahasiswa Teknik Informatika (HMIF)',
                'jabatan'       => 'Staf Divisi Kesehatan',
                'tahun_mulai'   => 2025,
                'tahun_selesai' => null,
                'deskripsi'     => 'Memfasilitasi kebutuhan kesehatan, P3K, dan kesejahteraan mahasiswa selama kegiatan himpunan atau acara kampus berlangsung',
                'urutan'        => 1,
            ],
        ]);

        $skills = [
            'Frontend' => ['HTML', 'CSS', 'JavaScript', 'Tailwind CSS', 'React Native'],
            'Backend'  => ['PHP', 'Laravel', 'MySQL'],
            'Lainnya'  => ['Python', 'Arduino'],
            'Tools'    => ['Figma', 'Git', 'VS Code'],
        ];
        $catOrder = 1;
        foreach ($skills as $categoryName => $names) {
            $category = SkillCategory::create(['nama' => $categoryName, 'urutan' => $catOrder++]);
            foreach ($names as $i => $skillName) {
                $profile->skills()->create([
                    'skill_category_id' => $category->id,
                    'nama'              => $skillName,
                    'urutan'            => $i + 1,
                ]);
            }
        }

        $profile->achievements()->create([
            'judul'           => 'Basic SQL Certificate',
            'penyelenggara'   => 'HackerRank',
            'tahun'           => 2025,
            'deskripsi'       => 'Sertifikasi keahlian dasar database SQL dari HackerRank',
            'link_sertifikat' => 'https://www.hackerrank.com/certificates/iframe/f4f0deee0414',
            'urutan'          => 1,
        ]);

        $cats = collect(['Web', 'Mobile', 'IoT / Embedded', 'Image Processing'])
            ->mapWithKeys(fn ($n) => [$n => ProjectCategory::create(['nama' => $n])]);

        // Isi 'thumbnail' dengan nama file di public/images, mis. 'diary-app.png'.
        $profile->projects()->createMany([
            [
                'project_category_id' => $cats['Web']->id,
                'judul'     => 'Website Portofolio Pribadi',
                'deskripsi' => 'Website CV dan portofolio berbasis database dengan Laravel, MySQL, dan Tailwind CSS. Desain diambil dari Figma.',
                'thumbnail' => 'portofolio.png', 'link_demo' => null, 'link_repo' => null, 'urutan' => 1,
            ],
            [
                'project_category_id' => $cats['Mobile']->id,
                'judul'     => 'Diary App',
                'deskripsi' => 'Aplikasi catatan harian dengan React Native (Expo Router), memakai state dan hooks.',
                'thumbnail' => 'diary-app.jpeg', 'link_demo' => null, 'link_repo' => null, 'urutan' => 2,
            ],
            [
                'project_category_id' => $cats['Image Processing']->id,
                'judul'     => 'Image Enhancement Biji Kopi',
                'deskripsi' => 'Perbaikan kualitas citra biji kopi dengan koreksi gamma, CLAHE, dan filter derau di Python.',
                'thumbnail' => 'image-enhancement-kopi.png', 'link_demo' => null, 'link_repo' => null, 'urutan' => 3,
            ],
            [
                'project_category_id' => $cats['IoT / Embedded']->id,
                'judul'     => 'Seven Segment dengan Push Button',
                'deskripsi' => 'Rangkaian Arduino Uno dengan seven segment dan dua push button untuk menaikkan dan menurunkan angka.',
                'thumbnail' => 'seven-segment.jpeg', 'link_demo' => null, 'link_repo' => null, 'urutan' => 4,
            ],
        ]);

        $profile->contacts()->createMany([
            ['jenis' => 'email',     'label' => 'Email',     'url' => 'https://mail.google.com/mail/?view=cm&to=zakwanabdurrahman74@gmail.com',                     'ikon' => 'mail',      'urutan' => 1],
            ['jenis' => 'github',    'label' => 'GitHub',    'url' => 'https://github.com/zwann74',                               'ikon' => 'github',    'urutan' => 2],
            ['jenis' => 'linkedin',  'label' => 'LinkedIn',  'url' => 'https://www.linkedin.com/in/zakwan-abdurrahman-4b3a1232b', 'ikon' => 'linkedin',  'urutan' => 3],
            ['jenis' => 'instagram', 'label' => 'Instagram', 'url' => 'https://instagram.com/zwan_vy',                            'ikon' => 'instagram', 'urutan' => 4],
        ]);
    }
}
