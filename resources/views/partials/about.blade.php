<section id="about" class="border-t border-panel">
    <div class="mx-auto max-w-6xl px-6 py-24">
        <h2 class="text-4xl font-bold md:text-5xl">About <span class="text-accent">me</span></h2>
        <p class="mt-8 max-w-3xl whitespace-pre-line text-lg leading-relaxed text-light/80">{{ $profile->bio }}</p>

        <dl class="mt-8 flex flex-wrap gap-x-12 gap-y-4 text-light/80">
            @if ($profile->lokasi)
                <div>
                    <dt class="text-sm text-accent">Lokasi</dt>
                    <dd>{{ $profile->lokasi }}</dd>
                </div>
            @endif
            @if ($profile->email)
                <div>
                    <dt class="text-sm text-accent">Email</dt>
                    <dd>{{ $profile->email }}</dd>
                </div>
            @endif
        </dl>
    </div>
</section>
