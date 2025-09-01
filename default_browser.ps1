# Define the list of URLs
$URLs = @(
    "https://www.youtube.com/",
    "https://calendar.google.com/calendar/u/0/r",
    "https://www.telhai.ac.il/",
    "https://mail.google.com/mail/u/0/#inbox"
)

# Path to the default browser executable (assuming Chrome or Edge)
# You can change this to your preferred browser
$browserPath = "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"

# Check if the browser exists
if (!(Test-Path $browserPath)) {
    Write-Error "Browser not found at $browserPath"
    exit
}

# Build the command to open all URLs in new tabs
# For Chrome, you can pass URLs as arguments, separated by spaces
# Using --new-window to open a new window
$arguments = "--new-window " + ($URLs -join " ")

# Start the browser with all URLs as tabs in a new window
Start-Process -FilePath $browserPath -ArgumentList $arguments