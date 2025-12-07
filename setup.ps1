Write-Host "Setting up KEMRI Literature Assistant..." -ForegroundColor Green

# Create directories
$folders = @(".streamlit", "app", "utils", "data", "data\papers")
foreach ($folder in $folders) {
    if (-not (Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder -Force
        Write-Host "Created: $folder"
    }
}

# Create basic files
$files = @{
    "requirements.txt" = @"
streamlit==1.28.0
python-docx==1.1.0
"@
    
    "app\main.py" = @"
import streamlit as st
st.set_page_config(page_title='KEMRI Demo', layout='wide')
st.title('KEMRI AI Literature Assistant')
st.write('Demo app for presentation')
"@
    
    "README.md" = "# KEMRI Demo"
}

foreach ($file in $files.Keys) {
    $content = $files[$file]
    $content | Out-File -FilePath $file -Encoding UTF8
    Write-Host "Created: $file"
}

Write-Host "`nSetup complete!" -ForegroundColor Green
Write-Host "Run: streamlit run app\main.py" -ForegroundColor Yellow
