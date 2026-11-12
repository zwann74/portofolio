// Tambahkan kelas 'is-visible' saat section atau garis timeline masuk layar
const targets = document.querySelectorAll('.reveal, .timeline-line');

if ('IntersectionObserver' in window && targets.length) {
    const observer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                entry.target.classList.add('is-visible');
                observer.unobserve(entry.target);
            }
        });
    }, { threshold: 0.1 });

    targets.forEach((el) => observer.observe(el));
} else {
    // Browser lama: tampilkan langsung tanpa animasi
    targets.forEach((el) => el.classList.add('is-visible'));
}