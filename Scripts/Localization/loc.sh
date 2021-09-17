args=(
  --credentials "$SRCROOT/Scripts/Localization/client_secret.json" \
  --platform "ios" \
  --spreadsheet "1NPuqw0s7YGYjPjGoMo7GyMcbInBch-i9A2J_JhMSIdg" \
  --formats-tab "goloc_formats" \
  --tab "mobile_localizations" \
  --key-column "key" \
  --resources "$SRCROOT/Resources/Localization" \
  --default-localization "en" \
  --default-localization-file-path "$SRCROOT/Lill/Resources/Localization/en.lproj/Localizable.strings" \
  --empty-localization-match "(^$|^[xX]$)"
)
if [ "${CONFIGURATION}" = "Release" ]; then
    args+=(--stop-on-missing)
fi

"$SRCROOT/Scripts/Localization/darwin_amd64" "${args[@]}"
