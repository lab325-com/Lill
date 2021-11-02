args=(
  --credentials "$SRCROOT/Scripts/Localization/client_secret.json" \
  --platform "ios" \
  --spreadsheet "1LdnoJp26MGvijtalLBDgIE3tszYjXaRjaKHJl8QKbcg" \
  --formats-tab "goloc_formats" \
  --tab "mobile_localizations" \
  --key-column "key" \
  --resources "$SRCROOT/Lill/Resources/Localization" \
  --default-localization "en" \
  --default-localization-file-path "$SRCROOT/Lill/Resources/Localization/en.lproj/Localizable.strings" \
  --empty-localization-match "(^$|^[xX]$)"
)
if [ "${CONFIGURATION}" = "Release" ]; then
    args+=(--stop-on-missing)
fi

"$SRCROOT/Scripts/Localization/darwin_amd64" "${args[@]}"
