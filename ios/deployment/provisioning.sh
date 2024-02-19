DEV_PROFILE_PATH=deployment/dev.mobileprovision   # Defines path of provisioning profile for development.
STAG_PROFILE_PATH=deployment/stag.mobileprovision # Defines path of provisioning profile for staging.
PROD_PROFILE_PATH=deployment/prod.mobileprovision # Defines path of provisioning profile for production.

# Development
uuid=$(grep UUID -A1 -a $DEV_PROFILE_PATH | grep -io "[-A-F0-9]\{36\}")
touch ~/Library/MobileDevice/Provisioning\ Profiles/$uuid.mobileprovision
scp -r $DEV_PROFILE_PATH ~/Library/MobileDevice/Provisioning\ Profiles/$uuid.mobileprovision

# Staging
uuid=$(grep UUID -A1 -a $STAG_PROFILE_PATH | grep -io "[-A-F0-9]\{36\}")
touch ~/Library/MobileDevice/Provisioning\ Profiles/$uuid.mobileprovision
scp -r $STAG_PROFILE_PATH ~/Library/MobileDevice/Provisioning\ Profiles/$uuid.mobileprovision

# Production
uuid=$(grep UUID -A1 -a $PROD_PROFILE_PATH | grep -io "[-A-F0-9]\{36\}")
touch ~/Library/MobileDevice/Provisioning\ Profiles/$uuid.mobileprovision
scp -r $PROD_PROFILE_PATH ~/Library/MobileDevice/Provisioning\ Profiles/$uuid.mobileprovision
