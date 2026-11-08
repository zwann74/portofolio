@php
    $words = explode(' ', $profile->headline);
    $lastWord = array_pop($words);
    $initials = collect(explode(' ', $profile->nama))
        ->take(2)
        ->map(fn ($w) => mb_strtoupper(mb_substr($w, 0, 1)))
        ->implode('');
@endphp

<section id="home" class="mx-auto flex min-h-[80vh] max-w-6xl flex-col-reverse items-center justify-between gap-12 px-6 py-20 md:flex-row">
    <div class="text-center md:text-left">
        <p class="font-semibold text-accent">Hi, I'm {{ $profile->nama }}</p>
        <h1 class="mt-3 text-5xl font-bold uppercase leading-tight md:text-7xl">
            {{ implode(' ', $words) }}
            <span class="text-accent">{{ $lastWord }}</span>
        </h1>
        <div class="mt-8 flex flex-wrap justify-center gap-4 md:justify-start">
            <a href="#contact" class="rounded-full bg-accent px-7 py-3 text-sm font-semibold">Hire me</a>
            @if ($profile->cv_file)
                <a href="{{ asset('files/' . $profile->cv_file) }}" download class="rounded-full bg-panel px-7 py-3 text-sm font-semibold hover:bg-panel/70">Download CV</a>
            @endif
        </div>
    </div>

    <div class="shrink-0">
        @if ($profile->foto)
            <img src="{{ asset('images/' . $profile->foto) }}" alt="Foto {{ $profile->nama }}" class="h-72 w-72 rounded-full border-4 border-accent object-cover md:h-96 md:w-96">
        @else
            <div class="flex h-72 w-72 items-center justify-center rounded-full border-4 border-accent bg-panel/50 text-7xl font-bold text-accent md:h-96 md:w-96">{{ $initials }}</div>
        @endif
    </div>
</section>
