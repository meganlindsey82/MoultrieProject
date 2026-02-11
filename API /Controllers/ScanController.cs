using API.Models;
using API.Services;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ScanController : ControllerBase
{
    private readonly HeaderScanService _headerScan;

    public ScanController(HeaderScanService headerScan)
    {
        _headerScan = headerScan;
    }

    /// <summary>Scan plain text for key headers (job experience, projects, leadership, activities).</summary>
    [HttpPost("headers")]
    public ActionResult<HeaderScanResult> ScanHeaders([FromBody] ScanRequest request)
    {
        var content = !string.IsNullOrWhiteSpace(request?.Content) ? request.Content : request?.Html;
        var result = _headerScan.Scan(content);
        return Ok(result);
    }

    /// <summary>Return the keyword taxonomy (for debugging or frontend display).</summary>
    [HttpGet("keywords")]
    public IActionResult GetKeywords()
    {
        return Ok(HeaderScanKeywords.Keywords);
    }
}

public class ScanRequest
{
    public string? Content { get; set; }
    public string? Html { get; set; }
}
