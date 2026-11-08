<footer class="border-t border-panel">
    <div class="mx-auto flex max-w-6xl flex-col items-center justify-between gap-4 px-6 py-8 text-sm text-light/70 md:flex-row">
        <p>&copy; {{ date('Y') }} {{ $profile->nama }}</p>
        <ul class="flex gap-6">
            <li><a href="#home" class="hover:text-accent">Home</a></li>
            <li><a href="#about" class="hover:text-accent">About Me</a></li>
            <li><a href="#resume" class="hover:text-accent">Resume</a></li>
            <li><a href="#projects" class="hover:text-accent">Projects</a></li>
            <li><a href="#contact" class="hover:text-accent">Contact</a></li>
        </ul>
    </div>
</footer>
