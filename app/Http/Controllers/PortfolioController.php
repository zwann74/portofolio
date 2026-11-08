<?php

namespace App\Http\Controllers;

use App\Models\Profile;

class PortfolioController extends Controller
{
    public function index()
    {
        // Satu query utama + eager loading supaya tidak N+1.
        $profile = Profile::with([
            'educations',
            'organizations',
            'achievements',
            'contacts',
            'projects.category',
        ])->firstOrFail();

        // Skill dikelompokkan per kategori, urut sesuai skill_categories.urutan.
        $skillGroups = $profile->skills()
            ->with('category')
            ->get()
            ->sortBy(fn ($skill) => $skill->category->urutan)
            ->groupBy(fn ($skill) => $skill->category->nama);

        // Tab filter proyek: hanya kategori yang benar-benar dipakai.
        $projectCategories = $profile->projects
            ->pluck('category')
            ->filter()
            ->unique('id')
            ->sortBy('nama')
            ->values();

        return view('portfolio', compact('profile', 'skillGroups', 'projectCategories'));
    }
}
