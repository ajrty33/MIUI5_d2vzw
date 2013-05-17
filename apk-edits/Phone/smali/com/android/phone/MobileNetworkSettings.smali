.class public Lcom/android/phone/MobileNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MobileNetworkSettings$1;,
        Lcom/android/phone/MobileNetworkSettings$MyHandler;
    }
.end annotation


# instance fields
.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonDataUsage:Landroid/preference/Preference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

.field private mLteDataServicePref:Landroid/preference/Preference;

.field private mOkClicked:Z

.field protected mPhone:Lcom/android/internal/telephony/Phone;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 422
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 2
    .parameter "NetworkMode"

    .prologue
    .line 536
    packed-switch p1, :pswitch_data_0

    .line 576
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d0091

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 579
    :goto_0
    return-void

    .line 538
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d0089

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 542
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d008a

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 546
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d008b

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 550
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d008c

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 554
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 561
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d008e

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 556
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d008d

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 567
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d008f

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 571
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d0090

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 554
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/android/phone/MobileNetworkSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method


# virtual methods
.method protected createCdmaOptions(Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/CdmaOptions;
    .locals 1
    .parameter "prefScreen"
    .parameter "phone"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lcom/android/phone/CdmaOptions;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method protected createGsmUmtsOptions(Landroid/preference/PreferenceScreen;)Lcom/android/phone/GsmUmtsOptions;
    .locals 1
    .parameter "prefScreen"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    return-object v0
.end method

.method protected getPreferenceResource()I
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 210
    const v0, 0x7f060019

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 583
    packed-switch p1, :pswitch_data_0

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 585
    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 587
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 107
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 109
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 226
    invoke-static {p0, v8}, Lcom/android/phone/MiuiPhoneUtils;->checkUsingMiuiActivity(Landroid/app/Activity;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 227
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceResource()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/phone/MobileNetworkSettings;->addPreferencesFromResource(I)V

    .line 235
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 236
    new-instance v7, Lcom/android/phone/MobileNetworkSettings$MyHandler;

    const/4 v10, 0x0

    invoke-direct {v7, p0, v10}, Lcom/android/phone/MobileNetworkSettings$MyHandler;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    .line 239
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 241
    .local v4, prefSet:Landroid/preference/PreferenceScreen;
    const-string v7, "button_data_enabled_key"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 242
    const-string v7, "button_roaming_key"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 243
    const-string v7, "preferred_network_mode_key"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 245
    const-string v7, "button_data_usage_key"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    .line 246
    const-string v7, "cdma_lte_data_service_key"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    .line 248
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v7

    if-ne v7, v8, :cond_4

    move v1, v8

    .line 249
    .local v1, isLteOnCdma:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0a0002

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-ne v7, v8, :cond_5

    .line 252
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 255
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "preferred_network_mode"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 258
    .local v5, settingsNetworkMode:I
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 259
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v4, v7}, Lcom/android/phone/MobileNetworkSettings;->createCdmaOptions(Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/CdmaOptions;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 260
    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->createGsmUmtsOptions(Landroid/preference/PreferenceScreen;)Lcom/android/phone/GsmUmtsOptions;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 289
    .end local v5           #settingsNetworkMode:I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "setup_prepaid_data_service_url"

    invoke-static {v7, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 292
    .local v2, missingDataServiceUrl:Z
    if-eqz v1, :cond_3

    if-eqz v2, :cond_9

    .line 293
    :cond_3
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 298
    :goto_3
    const-string v7, "throttle"

    invoke-virtual {p0, v7}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ThrottleManager;

    .line 299
    .local v6, tm:Landroid/net/ThrottleManager;
    new-instance v7, Lcom/android/phone/DataUsageListener;

    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-direct {v7, p0, v9, v4}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 301
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 302
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_0

    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #isLteOnCdma:Z
    .end local v2           #missingDataServiceUrl:Z
    .end local v6           #tm:Landroid/net/ThrottleManager;
    :cond_4
    move v1, v9

    .line 248
    goto :goto_1

    .line 262
    .restart local v1       #isLteOnCdma:Z
    :cond_5
    if-nez v1, :cond_6

    .line 263
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    :cond_6
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 266
    .local v3, phoneType:I
    const/4 v7, 0x2

    if-ne v3, v7, :cond_7

    .line 267
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v4, v7}, Lcom/android/phone/MobileNetworkSettings;->createCdmaOptions(Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/CdmaOptions;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 268
    if-eqz v1, :cond_2

    .line 269
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v10, 0x7f070010

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 272
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v10, 0x7f070011

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 274
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "preferred_network_mode"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 278
    .restart local v5       #settingsNetworkMode:I
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 282
    .end local v5           #settingsNetworkMode:I
    :cond_7
    if-ne v3, v8, :cond_8

    .line 283
    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->createGsmUmtsOptions(Landroid/preference/PreferenceScreen;)Lcom/android/phone/GsmUmtsOptions;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    goto/16 :goto_2

    .line 285
    :cond_8
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 295
    .end local v3           #phoneType:I
    .restart local v2       #missingDataServiceUrl:Z
    :cond_9
    const-string v7, "NetworkSettings"

    const-string v9, "keep ltePref"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 121
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 606
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 607
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    .line 620
    const/4 v1, 0x1

    .line 622
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 341
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->checkUsingMiuiActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 347
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    .line 359
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 362
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 364
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 365
    .local v0, buttonNetworkMode:I
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 368
    .local v2, settingsNetworkMode:I
    if-eq v0, v2, :cond_0

    .line 370
    packed-switch v0, :pswitch_data_0

    .line 396
    const/4 v1, 0x0

    .line 402
    .local v1, modemNetworkMode:I
    :goto_0
    if-nez v1, :cond_1

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 419
    .end local v0           #buttonNetworkMode:I
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :cond_0
    :goto_1
    return v6

    .line 372
    .restart local v0       #buttonNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :pswitch_0
    const/4 v1, 0x7

    .line 373
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 375
    .end local v1           #modemNetworkMode:I
    :pswitch_1
    const/4 v1, 0x6

    .line 376
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 378
    .end local v1           #modemNetworkMode:I
    :pswitch_2
    const/4 v1, 0x5

    .line 379
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 381
    .end local v1           #modemNetworkMode:I
    :pswitch_3
    const/4 v1, 0x4

    .line 382
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 384
    .end local v1           #modemNetworkMode:I
    :pswitch_4
    const/4 v1, 0x3

    .line 385
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 387
    .end local v1           #modemNetworkMode:I
    :pswitch_5
    const/4 v1, 0x2

    .line 388
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 390
    .end local v1           #modemNetworkMode:I
    :pswitch_6
    const/4 v1, 0x1

    .line 391
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 393
    .end local v1           #modemNetworkMode:I
    :pswitch_7
    const/4 v1, 0x0

    .line 394
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 407
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    .line 409
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 413
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v4, v6}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 131
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v9, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v9

    if-ne v9, v7, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v7

    .line 134
    :cond_1
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v9, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v9

    if-ne v9, v7, :cond_2

    .line 136
    const-string v8, "ril.cdma.inecmmode"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 139
    iput-object p2, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    .line 142
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v8, v9, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v9, 0x11

    invoke-virtual {p0, v8, v9}, Lcom/android/phone/MobileNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v9, :cond_3

    .line 149
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 152
    .local v3, settingsNetworkMode:I
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v3           #settingsNetworkMode:I
    :cond_3
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_5

    .line 158
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 160
    iput-boolean v8, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 161
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0098

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040014

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1010355

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040013

    invoke-virtual {v8, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040009

    invoke-virtual {v8, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 170
    :cond_4
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9, v8}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto/16 :goto_0

    .line 173
    :cond_5
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_6

    .line 175
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 178
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_0

    .line 180
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_6
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    if-ne p2, v9, :cond_a

    .line 181
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "setup_prepaid_data_service_url"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, tmpl:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 184
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 186
    .local v4, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, imsi:Ljava/lang/String;
    if-nez v1, :cond_7

    .line 188
    const-string v1, ""

    .line 190
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 192
    .local v6, url:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 193
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 190
    .end local v2           #intent:Landroid/content/Intent;
    .end local v6           #url:Ljava/lang/String;
    :cond_8
    new-array v9, v7, [Ljava/lang/CharSequence;

    aput-object v1, v9, v8

    invoke-static {v5, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 195
    .end local v1           #imsi:Ljava/lang/String;
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :cond_9
    const-string v8, "NetworkSettings"

    const-string v9, "Missing SETUP_PREPAID_DATA_SERVICE_URL"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 202
    .end local v5           #tmpl:Ljava/lang/String;
    :cond_a
    invoke-virtual {p1, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v7, v8

    .line 204
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 4
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 311
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->checkUsingMiuiActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 336
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 320
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 322
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 324
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 329
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 331
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "preferred_network_mode_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v1}, Lcom/android/phone/DataUsageListener;->resume()V

    goto :goto_0
.end method
