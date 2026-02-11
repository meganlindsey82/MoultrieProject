namespace API.Models;

/// <summary>Result of scanning content for key resume/career section headers.</summary>
public class HeaderScanResult
{
    public IReadOnlyList<DetectedHeader> Detected { get; init; } = [];
    public string? RawSnippet { get; init; }
}

public class DetectedHeader
{
    public string Category { get; init; } = "";  // JobExperience | Projects | Leadership | Activities
    public string MatchedText { get; init; } = "";
    public int? Position { get; init; }
}
