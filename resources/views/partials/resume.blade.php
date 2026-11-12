<section id="resume" class="border-t border-panel">
    <div class="mx-auto max-w-6xl space-y-28 px-6 py-24">

        {{-- PENDIDIKAN (timeline) --}}
        <div>
            <h2 class="text-4xl font-bold md:text-5xl">My <span class="text-accent">education</span></h2>
            <div class="mt-12">
                @foreach ($profile->educations as $edu)
                    <div class="flex gap-6">
                        <div class="flex flex-col items-center pt-9">
                            <span class="h-5 w-5 shrink-0 rounded-full bg-accent"></span>
                            @unless ($loop->last)
                                <span class="timeline-line mt-2 w-0.5 flex-1 bg-accent/40"></span>
                            @endunless
                        </div>
                        <div class="flex-1 pb-6">
                            <article class="rounded-2xl bg-panel/50 p-7">
                                <div class="flex flex-wrap items-center justify-between gap-3">
                                    <h3 class="text-2xl font-bold">{{ $edu->institusi }}</h3>
                                    @if ($edu->tahun_mulai)
                                        <span class="rounded-full bg-accent px-5 py-1.5 text-sm font-bold">{{ $edu->tahun_mulai }} – {{ $edu->tahun_selesai ?? 'Sekarang' }}</span>
                                    @endif
                                </div>
                                @php($subtitle = trim($edu->jenjang . ' ' . $edu->jurusan))
                                @if ($subtitle !== '')
                                    <p class="mt-2 text-lg text-accent">{{ $subtitle }}</p>
                                @endif
                                @if ($edu->ipk)
                                    <p class="mt-1 text-light/70">IPK {{ number_format($edu->ipk, 2) }}</p>
                                @endif
                                @if ($edu->deskripsi)
                                    <p class="mt-2 text-light/80">{{ $edu->deskripsi }}</p>
                                @endif
                            </article>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>

        {{-- ORGANISASI / PENGALAMAN (grid 2 kolom) --}}
        <div>
            <h2 class="text-4xl font-bold md:text-5xl">My <span class="text-accent">experience</span></h2>
            <div class="mt-12 grid gap-6 md:grid-cols-2">
                @foreach ($profile->organizations as $org)
                    <article class="rounded-2xl bg-panel/50 p-7">
                        <div class="flex flex-wrap items-center justify-between gap-3">
                            <h3 class="text-2xl font-bold">{{ $org->nama }}</h3>
                            @if ($org->tahun_mulai)
                                <span class="rounded-full bg-accent px-5 py-1.5 text-sm font-bold">{{ $org->tahun_mulai }} – {{ $org->tahun_selesai ?? 'Sekarang' }}</span>
                            @endif
                        </div>
                        @if ($org->jabatan)
                            <p class="mt-2 text-lg text-accent">{{ $org->jabatan }}</p>
                        @endif
                        @if ($org->deskripsi)
                            <p class="mt-2 text-light/80">{{ $org->deskripsi }}</p>
                        @endif
                    </article>
                @endforeach
            </div>
        </div>

        {{-- SKILLS (per kategori) --}}
        <div>
            <h2 class="text-4xl font-bold md:text-5xl">My <span class="text-accent">skills</span></h2>
            <div class="mt-12 space-y-10">
                @foreach ($skillGroups as $categoryName => $skills)
                    <div>
                        <h3 class="text-2xl font-bold">{{ $categoryName }}</h3>
                        <div class="mt-4 flex flex-wrap gap-4">
                            @foreach ($skills as $skill)
                                <span class="inline-flex items-center gap-2.5 rounded-full border border-accent/40 bg-panel/50 px-6 py-3 text-lg">
                                    <span class="h-2 w-2 rounded-full bg-accent"></span>
                                    {{ $skill->nama }}
                                </span>
                            @endforeach
                        </div>
                    </div>
                @endforeach
            </div>
        </div>

        {{-- PENCAPAIAN (grid 3 kolom) --}}
        <div>
            <h2 class="text-4xl font-bold md:text-5xl">My <span class="text-accent">achievements</span></h2>
            <div class="mt-12 grid gap-6 md:grid-cols-3">
                @forelse ($profile->achievements as $ach)
                       <article class="flex flex-col gap-4 rounded-2xl bg-panel/50 p-8 transition duration-300 hover:-translate-y-2 hover:shadow-xl hover:shadow-accent/20">
                        <span class="flex h-14 w-14 items-center justify-center rounded-full bg-accent/15">
                            <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="text-accent">
                                <path d="M6 9H4.5a2.5 2.5 0 0 1 0-5H6" />
                                <path d="M18 9h1.5a2.5 2.5 0 0 0 0-5H18" />
                                <path d="M4 22h16" />
                                <path d="M10 14.66V17c0 .55-.47.98-1.04 1.21C7.85 18.75 7 20.24 7 22" />
                                <path d="M14 14.66V17c0 .55.47.98 1.04 1.21C16.15 18.75 17 20.24 17 22" />
                                <path d="M18 2H6v7a6 6 0 0 0 12 0V2Z" />
                            </svg>
                        </span>
                        <h3 class="text-xl font-bold">{{ $ach->judul }}</h3>
                        <p class="text-light/80">{{ $ach->penyelenggara }}</p>
                        <div class="mt-auto flex items-center gap-4">
                            <span class="rounded-full bg-accent px-5 py-1.5 text-sm font-bold">{{ $ach->tahun }}</span>
                            @if ($ach->link_sertifikat)
                                <a href="{{ $ach->link_sertifikat }}" target="_blank" rel="noopener" class="text-sm text-accent underline">Lihat sertifikat</a>
                            @endif
                        </div>
                    </article>
                @empty
                    <p class="text-light/70 md:col-span-3">Belum ada pencapaian yang ditambahkan.</p>
                @endforelse
            </div>
        </div>

    </div>
<section id="resume" class="reveal border-t border-panel">
