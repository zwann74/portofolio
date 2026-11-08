<section id="projects" class="border-t border-panel">
    <div class="mx-auto max-w-6xl px-6 py-24">
        <h2 class="text-4xl font-bold md:text-5xl">My recent <span class="text-accent">works</span></h2>

        {{-- Tab filter: "All" + kategori dari database --}}
        <div class="mt-8 flex flex-wrap gap-3" id="project-filters">
            <button type="button" data-filter="all" class="rounded-full bg-accent px-6 py-2 text-sm font-semibold">All</button>
            @foreach ($projectCategories as $category)
                <button type="button" data-filter="{{ $category->id }}" class="rounded-full bg-panel px-6 py-2 text-sm font-semibold">{{ $category->nama }}</button>
            @endforeach
        </div>

        <div class="mt-10 grid gap-6 md:grid-cols-3">
            @foreach ($profile->projects as $project)
                <article class="project-card overflow-hidden rounded-2xl bg-panel/50" data-category="{{ $project->project_category_id }}">
                    @if ($project->thumbnail)
                        <img src="{{ asset('images/' . $project->thumbnail) }}" alt="{{ $project->judul }}" class="h-48 w-full object-cover">
                    @else
                        <div class="flex h-48 items-center justify-center bg-gradient-to-br from-accent/40 to-panel text-3xl font-bold text-light/70">{{ mb_substr($project->judul, 0, 1) }}</div>
                    @endif
                    <div class="p-6">
                        @if ($project->category)
                            <span class="text-sm text-accent">{{ $project->category->nama }}</span>
                        @endif
                        <h3 class="mt-1 text-xl font-bold">{{ $project->judul }}</h3>
                        @if ($project->deskripsi)
                            <p class="mt-2 text-light/80">{{ $project->deskripsi }}</p>
                        @endif
                        <div class="mt-4 flex gap-4 text-sm">
                            @if ($project->link_demo)
                                <a href="{{ $project->link_demo }}" target="_blank" rel="noopener" class="text-accent underline">Demo</a>
                            @endif
                            @if ($project->link_repo)
                                <a href="{{ $project->link_repo }}" target="_blank" rel="noopener" class="text-accent underline">Repo</a>
                            @endif
                        </div>
                    </div>
                </article>
            @endforeach
        </div>
    </div>
</section>

@push('scripts')
    <script>
        (function () {
            const buttons = document.querySelectorAll('#project-filters button');
            const cards = document.querySelectorAll('.project-card');

            buttons.forEach(function (btn) {
                btn.addEventListener('click', function () {
                    const filter = btn.dataset.filter;

                    buttons.forEach(function (b) {
                        b.classList.toggle('bg-accent', b === btn);
                        b.classList.toggle('bg-panel', b !== btn);
                    });

                    cards.forEach(function (card) {
                        card.classList.toggle('hidden', filter !== 'all' && card.dataset.category !== filter);
                    });
                });
            });
        })();
    </script>
@endpush
