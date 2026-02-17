function myip() {
  echo "🌍 Checking your public profile..."
  curl -s https://ipapi.co/json/ | grep -E "ip|city|region|country_name|org"
}
