<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Profile extends Model
{
    protected $guarded = [];

    public function educations(): HasMany
    {
        return $this->hasMany(Education::class)->orderBy('urutan');
    }

    public function organizations(): HasMany
    {
        return $this->hasMany(Organization::class)->orderBy('urutan');
    }

    public function skills(): HasMany
    {
        return $this->hasMany(Skill::class)->orderBy('urutan');
    }

    public function achievements(): HasMany
    {
        return $this->hasMany(Achievement::class)->orderBy('urutan');
    }

    public function projects(): HasMany
    {
        return $this->hasMany(Project::class)->orderBy('urutan');
    }

    public function contacts(): HasMany
    {
        return $this->hasMany(Contact::class)->orderBy('urutan');
    }
}
