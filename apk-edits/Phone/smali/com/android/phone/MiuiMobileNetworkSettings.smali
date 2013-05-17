.class public Lcom/android/phone/MiuiMobileNetworkSettings;
.super Lcom/android/phone/MobileNetworkSettings;
.source "MiuiMobileNetworkSettings.java"


# instance fields
.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonPreferredNetworkType:Landroid/preference/Preference;

.field private mContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiMobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiMobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiMobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method protected createCdmaOptions(Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/CdmaOptions;
    .locals 1
    .parameter "prefScreen"
    .parameter "phone"

    .prologue
    .line 65
    new-instance v0, Lcom/android/phone/MiuiCdmaOptions;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/phone/MiuiCdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method protected createGsmUmtsOptions(Landroid/preference/PreferenceScreen;)Lcom/android/phone/GsmUmtsOptions;
    .locals 1
    .parameter "prefScreen"

    .prologue
    .line 60
    new-instance v0, Lcom/android/phone/MiuiGsmUmtsOptions;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/MiuiGsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    return-object v0
.end method

.method protected getPreferenceResource()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f06001a

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 70
    invoke-super {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/phone/MiuiMobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 74
    .local v0, prefScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "button_data_enabled_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 75
    const-string v1, "button_roaming_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 76
    const-string v1, "button_mms_enabled_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    .line 77
    invoke-virtual {p0}, Lcom/android/phone/MiuiMobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-static {v0, v1}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    .line 82
    :cond_0
    const-string v1, "button_preferred_network_type_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonPreferredNetworkType:Landroid/preference/Preference;

    .line 83
    iget-object v1, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonPreferredNetworkType:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/MiuiMobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonPreferredNetworkType:Landroid/preference/Preference;

    const v2, 0x7f0d0375

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 88
    :cond_1
    new-instance v1, Lcom/android/phone/MiuiMobileNetworkSettings$1;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/phone/MiuiMobileNetworkSettings;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/phone/MiuiMobileNetworkSettings$1;-><init>(Lcom/android/phone/MiuiMobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    .line 107
    iget-object v1, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/android/phone/MiuiMobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/MiuiMobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 116
    invoke-virtual {p0}, Lcom/android/phone/MiuiMobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "always_enable_mms"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    :cond_4
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 121
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/phone/MiuiMobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 127
    invoke-super {p0}, Lcom/android/phone/MobileNetworkSettings;->onDestroy()V

    .line 128
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonPreferredNetworkType:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MiuiMobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonPreferredNetworkType:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 38
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/MobileNetworkSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 35
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 43
    iget-object v0, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_enable_mms"

    iget-object v0, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 50
    :goto_1
    return v1

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/MobileNetworkSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 132
    invoke-super {p0}, Lcom/android/phone/MobileNetworkSettings;->onResume()V

    .line 133
    iget-object v0, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 134
    iget-object v3, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/MiuiMobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "always_enable_mms"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonPreferredNetworkType:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/MiuiMobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0014

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonPreferredNetworkType:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 142
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 134
    goto :goto_0

    :cond_3
    move v1, v2

    .line 140
    goto :goto_1
.end method
