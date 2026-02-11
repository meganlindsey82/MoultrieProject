using API.Models;

namespace API.Services;

/// <summary>Scans text or HTML for key headers: job experience, projects, leadership, activities.</summary>
public class HeaderScanService
{
    /// <summary>Scan content for section headers matching our keyword taxonomy.</summary>
    /// <param name="content">Plain text or HTML (tags are stripped).</param>
    /// <returns>Detected headers with category and matched phrase.</returns>
    public HeaderScanResult Scan(string? content)
    {
        if (string.IsNullOrWhiteSpace(content))
            return new HeaderScanResult();

        var text = StripHtml(content);
        var normalized = text.Replace('\r', ' ').Replace('\n', ' ').ToLowerInvariant();
        var detected = new List<DetectedHeader>();
        var seenCategories = new HashSet<string>(StringComparer.OrdinalIgnoreCase);

        foreach (var (category, phrases) in HeaderScanKeywords.Keywords)
        {
            foreach (var phrase in phrases)
            {
                var key = phrase.Trim().ToLowerInvariant();
                if (string.IsNullOrEmpty(key)) continue;

                var idx = normalized.IndexOf(key, StringComparison.Ordinal);
                if (idx < 0) continue;

                // Prefer first occurrence per category
                if (seenCategories.Add(category))
                {
                    var matchedInOriginal = text.Substring(Math.Max(0, idx), Math.Min(phrase.Length + 20, text.Length - idx));
                    detected.Add(new DetectedHeader
                    {
                        Category = category,
                        MatchedText = phrase.Trim(),
                        Position = idx
                    });
                }
                break; // one match per phrase list is enough for this category
            }
        }

        return new HeaderScanResult
        {
            Detected = detected.OrderBy(d => d.Position ?? int.MaxValue).ToArray(),
            RawSnippet = text.Length > 500 ? text[..500] + "…" : text
        };
    }

    private static string StripHtml(string html)
    {
        if (string.IsNullOrEmpty(html)) return "";
        var t = html;
        // Remove script/style
        t = System.Text.RegularExpressions.Regex.Replace(t, @"<script[^>]*>[\s\S]*?</script>", " ", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        t = System.Text.RegularExpressions.Regex.Replace(t, @"<style[^>]*>[\s\S]*?</style>", " ", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        // Replace tags with space
        t = System.Text.RegularExpressions.Regex.Replace(t, @"<[^>]+>", " ", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        t = System.Text.RegularExpressions.Regex.Replace(t, @"\s+", " ");
        return t.Trim();
    }
}
