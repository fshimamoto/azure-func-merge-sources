using Microsoft.Azure.Functions.Worker;
using Microsoft.Extensions.Logging;

namespace Synchronizer;

public class MergeSync
{
    private readonly ILogger<MergeSync> _logger;

    public MergeSync(ILogger<MergeSync> logger)
    {
        _logger = logger;
    }

    [Function("MergeSync")]
    public void Run([TimerTrigger("0 */1 * * * *")] TimerInfo myTimer)
    {
        _logger.LogInformation($"C# Timer trigger function executed at: {DateTime.Now}");

        if (myTimer.ScheduleStatus is not null)
        {
            _logger.LogInformation($"Next timer schedule at: {myTimer.ScheduleStatus.Next}");
            
        }
    }
}