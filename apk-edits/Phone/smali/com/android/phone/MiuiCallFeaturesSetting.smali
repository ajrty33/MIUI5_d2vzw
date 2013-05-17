.class public Lcom/android/phone/MiuiCallFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "MiuiCallFeaturesSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAnswerWidget:Landroid/preference/ListPreference;

.field private mAutoAnswer:Landroid/preference/PreferenceScreen;

.field private mAutoIP:Landroid/preference/PreferenceScreen;

.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonCrystalTalk:Landroid/preference/ListPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mCallWaitingTone:Landroid/preference/ListPreference;

.field private mCdmaDisplayPreciseCallState:Landroid/preference/CheckBoxPreference;

.field private mConDisconVibrate:Landroid/preference/ListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mT9IndexingMethod:Landroid/preference/ListPreference;

.field private mTelocation:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiCallFeaturesSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCdmaDisplayPreciseCallState:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 462
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 463
    .local v0, buttonTtyMode:I
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 469
    .local v1, settingsTtyMode:I
    if-eq v0, v1, :cond_0

    .line 470
    packed-switch v0, :pswitch_data_0

    .line 479
    const/4 v0, 0x0

    .line 482
    :goto_0
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 483
    invoke-direct {p0, v0}, Lcom/android/phone/MiuiCallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 484
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v2, ttyModeChanged:Landroid/content/Intent;
    const-string v3, "ttyPreferredMode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiCallFeaturesSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 488
    .end local v2           #ttyModeChanged:Landroid/content/Intent;
    :cond_0
    return-void

    .line 475
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showRebuildT9IndexDialog()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 507
    new-instance v0, Lcom/android/phone/MiuiCallFeaturesSetting$2;

    const v4, 0x7f0d0389

    move-object v1, p0

    move-object v2, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/MiuiCallFeaturesSetting$2;-><init>(Lcom/android/phone/MiuiCallFeaturesSetting;Landroid/content/Context;IIZ)V

    .line 516
    .local v0, task:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/os/AsyncTaskWithProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 517
    return-void
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .parameter "TtyMode"

    .prologue
    const/4 v3, 0x0

    .line 491
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, txts:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 500
    iget-object v1, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 501
    iget-object v1, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 503
    :goto_0
    return-void

    .line 497
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 492
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 206
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 209
    const v3, 0x7f060004

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 210
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 212
    .local v1, prefScreen:Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 213
    .local v0, phoneType:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 214
    const-string v3, "button_call_forwarding"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 215
    const-string v3, "button_call_waiting"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 216
    const-string v3, "button_caller_id"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 218
    const-string v3, "button_auto_redial"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 228
    :goto_0
    invoke-static {p0}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallRecording(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    const-string v3, "button_call_record_setting"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 232
    :cond_0
    const-string v3, "button_connect_disconnect_vibrate"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    .line 233
    const-string v3, "button_answer_widget"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    .line 234
    const-string v3, "button_call_waiting_tone"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    .line 235
    const-string v3, "button_auto_answer_screen"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAutoAnswer:Landroid/preference/PreferenceScreen;

    .line 236
    const-string v3, "button_dtmf_settings"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 237
    const-string v3, "button_auto_retry"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 238
    const-string v3, "button_hac"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 239
    const-string v3, "button_tty_mode"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 240
    const-string v3, "button_display_precise_call_state"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCdmaDisplayPreciseCallState:Landroid/preference/CheckBoxPreference;

    .line 242
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 244
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 250
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 252
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 258
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    .line 259
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 260
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v3, :cond_4

    .line 267
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 268
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 275
    :cond_4
    :goto_4
    const-string v3, "button_crystal_talk_settings"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    .line 276
    sget-boolean v3, Lmiui/os/Build;->IS_MILESTONE:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lmiui/os/Build;->IS_DEFY:Z

    if-eqz v3, :cond_e

    .line 277
    :cond_5
    new-instance v2, Lcom/android/phone/MiuiVoiceQualityUtility;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiVoiceQualityUtility;-><init>(Landroid/content/Context;)V

    .line 278
    .local v2, util:Lcom/android/phone/MiuiVoiceQualityUtility;
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Lcom/android/phone/MiuiVoiceQualityUtility;->getVoiceQualitySetting()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 279
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 285
    .end local v2           #util:Lcom/android/phone/MiuiVoiceQualityUtility;
    :goto_5
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCdmaDisplayPreciseCallState:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_6

    .line 286
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCdmaDisplayPreciseCallState:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 289
    :cond_6
    const-string v3, "button_t9_index_method_settings"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    .line 290
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    if-eqz v3, :cond_7

    .line 291
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 294
    :cond_7
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 295
    return-void

    .line 219
    :cond_8
    const/4 v3, 0x1

    if-ne v0, v3, :cond_9

    .line 220
    const-string v3, "button_cdma_call_forwarding"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 221
    const-string v3, "button_cdma_cw"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 222
    const-string v3, "button_voice_privacy"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 223
    const-string v3, "button_display_precise_call_state"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 225
    :cond_9
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 246
    :cond_a
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 247
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto/16 :goto_1

    .line 254
    :cond_b
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 255
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 262
    :cond_c
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 263
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_3

    .line 270
    :cond_d
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 271
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    goto/16 :goto_4

    .line 281
    :cond_e
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 282
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    goto :goto_5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 426
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 427
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->finish()V

    .line 429
    const/4 v1, 0x1

    .line 431
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    .line 144
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_1

    .line 145
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 146
    .local v2, index:I
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dtmf_tone_type"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    .end local v2           #index:I
    :cond_0
    :goto_0
    return v6

    .line 148
    .restart local p2
    :cond_1
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_2

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MiuiCallFeaturesSetting;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_3

    .line 151
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 152
    .local v4, val:I
    new-instance v3, Lcom/android/phone/MiuiVoiceQualityUtility;

    invoke-direct {v3, p0}, Lcom/android/phone/MiuiVoiceQualityUtility;-><init>(Landroid/content/Context;)V

    .line 154
    .local v3, util:Lcom/android/phone/MiuiVoiceQualityUtility;
    invoke-virtual {v3, v4}, Lcom/android/phone/MiuiVoiceQualityUtility;->updateVoiceQualityParameter(I)V

    .line 155
    invoke-virtual {v3, v4}, Lcom/android/phone/MiuiVoiceQualityUtility;->setVoiceQualitySetting(I)V

    goto :goto_0

    .line 156
    .end local v3           #util:Lcom/android/phone/MiuiVoiceQualityUtility;
    .end local v4           #val:I
    .restart local p2
    :cond_3
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCdmaDisplayPreciseCallState:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_4

    .line 157
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 158
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d0372

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d0374

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/phone/MiuiCallFeaturesSetting$1;

    invoke-direct {v8, p0}, Lcom/android/phone/MiuiCallFeaturesSetting$1;-><init>(Lcom/android/phone/MiuiCallFeaturesSetting;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 168
    const/4 v6, 0x0

    goto :goto_0

    .line 170
    .restart local p2
    :cond_4
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_5

    .line 171
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 172
    .restart local v2       #index:I
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07001e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, answerWidgetSummary:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 174
    .end local v0           #answerWidgetSummary:[Ljava/lang/String;
    .end local v2           #index:I
    .restart local p2
    :cond_5
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_6

    .line 175
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 176
    .restart local v2       #index:I
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07003c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, callWaitToneSummary:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0d036e

    invoke-virtual {p0, v9}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 178
    .end local v1           #callWaitToneSummary:[Ljava/lang/String;
    .end local v2           #index:I
    .restart local p2
    :cond_6
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_7

    .line 179
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 180
    .restart local v2       #index:I
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070020

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, vibrateSummary:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    aget-object v8, v5, v2

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 182
    .end local v2           #index:I
    .end local v5           #vibrateSummary:[Ljava/lang/String;
    .restart local p2
    :cond_7
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_0

    .line 183
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 184
    .restart local v2       #index:I
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "t9_indexing_key"

    sget v9, Lmiui/provider/ExtraSettings$System;->T9_INDEXING_KEY_DEFAULT:I

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eq v2, v7, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "t9_indexing_key"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    invoke-direct {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->showRebuildT9IndexDialog()V

    .line 190
    iget-object v7, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 436
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p2, v4, :cond_1

    .line 457
    :cond_0
    :goto_0
    return v3

    .line 438
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eq p2, v4, :cond_0

    .line 440
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_3

    .line 441
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_auto_retry"

    iget-object v6, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 445
    :cond_3
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_6

    .line 446
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v3

    .line 448
    .local v1, hac:I
    :goto_1
    iget-object v4, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_aid"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 452
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiCallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 453
    .local v0, am:Landroid/media/AudioManager;
    const-string v4, "%s=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "HACSetting"

    aput-object v6, v5, v2

    if-eqz v1, :cond_5

    const-string v2, "ON"

    :goto_2
    aput-object v2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #hac:I
    :cond_4
    move v1, v2

    .line 446
    goto :goto_1

    .line 453
    .restart local v0       #am:Landroid/media/AudioManager;
    .restart local v1       #hac:I
    :cond_5
    const-string v2, "OFF"

    goto :goto_2

    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #hac:I
    :cond_6
    move v3, v2

    .line 457
    goto :goto_0
.end method

.method protected onResume()V
    .locals 28

    .prologue
    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v23

    if-nez v23, :cond_10

    const/4 v10, 0x1

    .line 301
    .local v10, fdnDisabled:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "airplane_mode_on"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    if-lez v23, :cond_11

    const/4 v15, 0x1

    .line 302
    .local v15, isAirPlane:Z
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v12

    .line 303
    .local v12, hasICC:Z
    if-eqz v10, :cond_12

    if-eqz v12, :cond_12

    if-nez v15, :cond_12

    const/4 v7, 0x1

    .line 305
    .local v7, canBeEnabled:Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    .line 306
    .local v18, prefScreen:Landroid/preference/PreferenceScreen;
    const-string v23, "button_call_forwarding"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 307
    .local v17, pref:Landroid/preference/Preference;
    if-eqz v17, :cond_0

    .line 308
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 310
    :cond_0
    const-string v23, "button_call_waiting"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 311
    if-eqz v17, :cond_1

    .line 312
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 314
    :cond_1
    const-string v23, "button_caller_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 315
    if-eqz v17, :cond_2

    .line 316
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 318
    :cond_2
    const-string v23, "button_cdma_call_forwarding"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 319
    if-eqz v17, :cond_3

    .line 320
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 322
    :cond_3
    const-string v23, "button_cdma_cw"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 323
    if-eqz v17, :cond_4

    .line 324
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 327
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f07001e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, answerWidgetSummary:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v13

    .line 331
    .local v13, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAnswerWidget:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    aget-object v24, v3, v13

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    .end local v3           #answerWidgetSummary:[Ljava/lang/String;
    .end local v13           #index:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f07003c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, callWaitToneSummary:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v13

    .line 337
    .restart local v13       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallWaitingTone:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v25, v6, v13

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const v25, 0x7f0d036e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 339
    .end local v6           #callWaitToneSummary:[Ljava/lang/String;
    .end local v13           #index:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070020

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 342
    .local v22, vibrateSummary:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v13

    .line 343
    .restart local v13       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mConDisconVibrate:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    aget-object v24, v22, v13

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 345
    .end local v13           #index:I
    .end local v22           #vibrateSummary:[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAutoAnswer:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 346
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "button_auto_answer"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-nez v23, :cond_13

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAutoAnswer:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    const v24, 0x7f0d0237

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 359
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mTelocation:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "enable_telocation"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 365
    const v23, 0x7f0d0347

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 369
    .local v21, summaryTeloc:Ljava/lang/String;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "auto_country_code"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    .line 372
    const v23, 0x7f0d0349

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 376
    .local v20, summaryCountryCode:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mTelocation:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 378
    .end local v20           #summaryCountryCode:Ljava/lang/String;
    .end local v21           #summaryTeloc:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAutoIP:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    .line 379
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "button_autoip"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-nez v23, :cond_16

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAutoIP:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    const v24, 0x7f0d0249

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 390
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "dtmf_tone_type"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 393
    .local v9, dtmf:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 395
    .end local v9           #dtmf:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "call_auto_retry"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 398
    .local v5, autoretry:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    if-eqz v5, :cond_17

    const/16 v23, 0x1

    :goto_7
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 400
    .end local v5           #autoretry:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "hearing_aid"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 402
    .local v11, hac:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    if-eqz v11, :cond_18

    const/16 v23, 0x1

    :goto_8
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 404
    .end local v11           #hac:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "preferred_tty_mode"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 408
    .local v19, settingsTtyMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 409
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/MiuiCallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 412
    .end local v19           #settingsTtyMode:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "t9_indexing_key"

    sget v25, Lmiui/provider/ExtraSettings$System;->T9_INDEXING_KEY_DEFAULT:I

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 416
    .local v16, method:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mT9IndexingMethod:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f070040

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    aget-object v24, v24, v16

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 421
    .end local v16           #method:I
    :cond_f
    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 422
    return-void

    .line 300
    .end local v7           #canBeEnabled:Z
    .end local v10           #fdnDisabled:Z
    .end local v12           #hasICC:Z
    .end local v15           #isAirPlane:Z
    .end local v17           #pref:Landroid/preference/Preference;
    .end local v18           #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 301
    .restart local v10       #fdnDisabled:Z
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 303
    .restart local v12       #hasICC:Z
    .restart local v15       #isAirPlane:Z
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 350
    .restart local v7       #canBeEnabled:Z
    .restart local v17       #pref:Landroid/preference/Preference;
    .restart local v18       #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "button_auto_answer_delay"

    const-string v25, "3"

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 352
    .local v8, delay:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f07002e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, autoAnswerSummary:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "button_auto_answer_scenario"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 356
    .restart local v13       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAutoAnswer:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v25, v4, v13

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const v25, 0x7f0d0238

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v8, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 367
    .end local v4           #autoAnswerSummary:[Ljava/lang/String;
    .end local v8           #delay:Ljava/lang/String;
    .end local v13           #index:I
    :cond_14
    const v23, 0x7f0d0348

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v21

    .restart local v21       #summaryTeloc:Ljava/lang/String;
    goto/16 :goto_4

    .line 374
    :cond_15
    const v23, 0x7f0d034a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v20

    .restart local v20       #summaryCountryCode:Ljava/lang/String;
    goto/16 :goto_5

    .line 383
    .end local v20           #summaryCountryCode:Ljava/lang/String;
    .end local v21           #summaryTeloc:Ljava/lang/String;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "autoip_prefix"

    invoke-static/range {p0 .. p0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v23 .. v25}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 387
    .local v14, ipPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MiuiCallFeaturesSetting;->mAutoIP:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    const v24, 0x7f0d02eb

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 398
    .end local v14           #ipPrefix:Ljava/lang/String;
    .restart local v5       #autoretry:I
    :cond_17
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 402
    .end local v5           #autoretry:I
    .restart local v11       #hac:I
    :cond_18
    const/16 v23, 0x0

    goto/16 :goto_8
.end method
