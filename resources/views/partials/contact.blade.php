<section id="contact" class="border-t border-panel">
    <div class="mx-auto max-w-6xl px-6 py-24">
        <h2 class="text-4xl font-bold md:text-5xl">Got a project in <span class="text-accent">mind?</span></h2>
        <p class="mt-6 max-w-2xl text-lg text-light/80">Hubungi saya lewat salah satu kontak di bawah ini.</p>

        <div class="mt-10 flex flex-wrap gap-4">
            @foreach ($profile->contacts as $contact)
                <a href="{{ $contact->url }}" @unless (str_starts_with($contact->url, 'mailto:')) target="_blank" rel="noopener" @endunless
                   class="rounded-full border border-accent/40 bg-panel/50 px-7 py-3 font-semibold transition duration-300 hover:-translate-y-0.5 hover:bg-accent">
                    {{ $contact->label }}
                </a>
            @endforeach
        </div>
    </div>
<section id="contact" class="reveal border-t border-panel">