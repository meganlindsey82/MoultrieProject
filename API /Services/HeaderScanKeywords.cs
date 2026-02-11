namespace API.Services;

/// <summary>
/// Keyword sets used to detect key resume/website section headers.
/// Used by the AI scanner to recognize: Job Experience, Projects, Leadership, Activities.
/// </summary>
public static class HeaderScanKeywords
{
    public const string JobExperience = "JobExperience";
    public const string Projects = "Projects";
    public const string Leadership = "Leadership";
    public const string Activities = "Activities";

    /// <summary>Category id -> list of phrases to match (case-insensitive, trimmed).</summary>
    public static IReadOnlyDictionary<string, IReadOnlyList<string>> Keywords { get; } = new Dictionary<string, IReadOnlyList<string>>(StringComparer.OrdinalIgnoreCase)
    {
        [JobExperience] = new[]
        {
            "job experience", "work experience", "employment", "employment history",
            "professional experience", "career history", "work history", "experience",
            "employment experience", "positions held", "relevant experience",
            "professional background", "work background", "career experience"
        },
        [Projects] = new[]
        {
            "projects", "project experience", "key projects", "selected projects",
            "notable projects", "project work", "project portfolio", "project history",
            "major projects", "project highlights", "technical projects",
            "side projects", "personal projects", "academic projects"
        },
        [Leadership] = new[]
        {
            "leadership", "leadership experience", "leadership roles",
            "management", "management experience", "supervisory experience",
            "team lead", "team leadership", "leading teams", "people management",
            "mentorship", "mentoring", "direct reports", "lead experience",
            "executive", "lead", "headed", "oversaw"
        },
        [Activities] = new[]
        {
            "activities", "extracurricular", "extracurricular activities",
            "volunteer", "volunteering", "volunteer work", "community service",
            "involvement", "campus involvement", "student activities",
            "clubs", "organizations", "memberships", "affiliations",
            "hobbies", "interests", "outside interests", "additional activities",
            "professional development", "continuing education", "certifications"
        }
    };

    /// <summary>All known category ids in display order.</summary>
    public static IReadOnlyList<string> AllCategories { get; } =
        [JobExperience, Projects, Leadership, Activities];
}
