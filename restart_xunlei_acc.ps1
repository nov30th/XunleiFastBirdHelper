echo testing network speed

Get-Date >> C:\temp\speed.txt

# C:/speedtest.exe -s 7509 -p no -f json > C:\temp\speed.json
C:/speedtest.exe -p no -f json > C:\temp\speed.json

$json = Get-Content C:\temp\speed.json | ConvertFrom-Json

echo $json.download.bandwidth
$json >> C:\temp\speed.txt

if ($json.download.bandwidth -ge 30000000){
    echo "larger" >> C:\temp\speed.txt
    exit
}else{
    echo "smaller" >> C:\temp\speed.txt
    echo restarting button
    ./xunlei.exe
    # taskkill /f /im XlNetAcc.exe
    # net stop XlNetAccSrv
    # echo cding...
    # C:
    # cd "C:\Program Files (x86)\Thunder Network\XlNetAcc\Program"
    # echo Starting XlNetAcc.exe
    # net start XlNetAccSrv
    # start XlNetAcc.exe
    echo "restarted" >> C:\temp\speed.txt
}
