# Credit: https://mnaoumov.wordpress.com/2012/07/24/powershell-add-directory-to-environment-path-variable/

# Check and import SendMessageTimeout function from Win32
if (-not ("Win32.NativeMethods" -as [Type]))
{
	Add-Type -Namespace Win32 -Name NativeMethods -MemberDefinition @"
[DllImport("user32.dll", SetLastError = true, CharSet = CharSet.Auto)]
public static extern IntPtr SendMessageTimeout(
	IntPtr hWnd, uint Msg, UIntPtr wParam, string lParam,
	uint fuFlags, uint uTimeout, out UIntPtr lpdwResult);
"@
}

$HWND_BROADCAST = [IntPtr] 0xFFFF
$WM_SETTINGCHANGE = 0x001A
$flag = 2 # SMTO_ABORTIFHUNG
$timeout = 5000 # 5 seconds
$result = [UIntPtr]::Zero

# Send the `WM_SETTINGCHANGE` message to notify about setting change
$success = [Win32.Nativemethods]::SendMessageTimeout(
	$HWND_BROADCAST,
	$WM_SETTINGCHANGE,
	[UIntPtr]::Zero,
	"Environment",
	$flag,
	$timeout,
	[ref] $result
);

if (-not $success) {
	Write-Error "Failed to refresh system settings"
}
