.class public Lcom/android/phone/MiuiPhoneApp;
.super Lcom/android/phone/PhoneApp;
.source "MiuiPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiPhoneApp$Handler;
    }
.end annotation


# instance fields
.field private mCallForwardStatusQueried:Z

.field private mCurrentServiceState:I

.field private mDelayedProximitySensorLock:Lcom/android/phone/MiuiDelayedProximitySensorLock;

.field private mIntentAfterCall:Landroid/content/Intent;

.field private mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/Phone$State;

.field private mPreferredNetworkTypeInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/android/phone/MiuiPhoneApp;->mPreferredNetworkTypeInitialized:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/phone/MiuiPhoneApp;->mCallForwardStatusQueried:Z

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiPhoneApp;->mCurrentServiceState:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    .line 77
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/phone/MiuiPhoneApp$Handler;

    iget-object v1, p0, Lcom/android/phone/MiuiPhoneApp;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiPhoneApp$Handler;-><init>(Lcom/android/phone/MiuiPhoneApp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mHandler:Landroid/os/Handler;

    .line 80
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiPhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/phone/MiuiPhoneApp;->onBluetoothAvailabilityChanged()V

    return-void
.end method

.method private isInCallScreenForeground()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v3

    .line 114
    :cond_1
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiPhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 115
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 116
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 117
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 118
    .local v2, taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_2

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    const-string v5, "com.android.phone.MiuiInCallScreen"

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .end local v2           #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    move v3, v4

    .line 122
    goto :goto_0
.end method

.method private onBluetoothAvailabilityChanged()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 289
    iget v0, p0, Lcom/android/phone/MiuiPhoneApp;->mBluetoothHeadsetState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    .line 297
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/MiuiPhoneApp;->isInCallScreenForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    check-cast v0, Lcom/android/phone/MiuiInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallScreen;->onBluetoothAvailabilityChanged()V

    .line 301
    :cond_1
    return-void

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public createPhoneEndIntentUsingCallOrigin()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->createPhoneEndIntentUsingCallOrigin()Landroid/content/Intent;

    move-result-object v1

    .line 251
    :cond_0
    :goto_0
    return-object v1

    .line 242
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 244
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiPhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_1
    iput-object v1, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 199
    invoke-super {p0, p1}, Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;)V

    .line 200
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 205
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 207
    .local v1, state:I
    iget v2, p0, Lcom/android/phone/MiuiPhoneApp;->mCurrentServiceState:I

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    iget-boolean v2, p0, Lcom/android/phone/MiuiPhoneApp;->mCallForwardStatusQueried:Z

    if-nez v2, :cond_1

    .line 209
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 210
    iput-boolean v5, p0, Lcom/android/phone/MiuiPhoneApp;->mCallForwardStatusQueried:Z

    .line 212
    :cond_1
    iput v1, p0, Lcom/android/phone/MiuiPhoneApp;->mCurrentServiceState:I

    goto :goto_0

    .line 214
    .end local v1           #state:I
    :cond_2
    iput v5, p0, Lcom/android/phone/MiuiPhoneApp;->mCurrentServiceState:I

    goto :goto_0
.end method

.method initializNetworkSelectionMode()V
    .locals 4

    .prologue
    .line 397
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "button_auto_select_key"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    invoke-static {}, Lcom/android/phone/MiuiPhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v0, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 400
    .local v0, ci:Lcom/android/internal/telephony/CommandsInterface;
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 401
    .local v1, msg:Landroid/os/Message;
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 403
    .end local v0           #ci:Lcom/android/internal/telephony/CommandsInterface;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected initializPreferredNetworkType(III)V
    .locals 6
    .parameter "type"
    .parameter "preferredNetworkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/phone/MiuiPhoneApp;->mPreferredNetworkTypeInitialized:Z

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiPhoneApp;->mPreferredNetworkTypeInitialized:Z

    .line 362
    invoke-static {}, Lcom/android/phone/MiuiPhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 364
    .local v2, ci:Lcom/android/internal/telephony/CommandsInterface;
    new-instance v0, Lcom/android/phone/MiuiPhoneApp$1;

    move-object v1, p0

    move v3, p2

    move v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/MiuiPhoneApp$1;-><init>(Lcom/android/phone/MiuiPhoneApp;Lcom/android/internal/telephony/CommandsInterface;III)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MiuiPhoneApp$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 394
    .end local v2           #ci:Lcom/android/internal/telephony/CommandsInterface;
    :cond_0
    return-void
.end method

.method isBluetoothAvailable()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->onCreate()V

    .line 86
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiPhoneApp;->setTheme(I)V

    .line 88
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/MiuiCallNotifier;->onNewPhoneRegisterToCallManager(Lcom/android/internal/telephony/Phone;)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiDelayedProximitySensorLock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mDelayedProximitySensorLock:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    .line 94
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/Phone$State;

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MiuiPhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/MiuiIccCardApplicationProxy;->registerIccCardStatusChange(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;ILjava/lang/Object;)V

    .line 98
    return-void
.end method

.method protected onHeadsetAvailabilityChanged()V
    .locals 2

    .prologue
    .line 263
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->onHeadsetAvailabilityChanged()V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    .line 281
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/MiuiPhoneApp;->isInCallScreenForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    check-cast v0, Lcom/android/phone/MiuiInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/MiuiInCallScreen;->onHeadsetAvailabilityChanged()V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_1

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_1
.end method

.method protected onIccStatusChanged()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 304
    const-string v4, "PhoneApp"

    const-string v5, "onIccStatusChanged"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-boolean v4, p0, Lcom/android/phone/MiuiPhoneApp;->mPreferredNetworkTypeInitialized:Z

    if-nez v4, :cond_3

    .line 306
    invoke-static {}, Lcom/android/phone/MiuiPhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 308
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x0

    .line 309
    .local v3, type:I
    invoke-static {v1}, Lcom/android/phone/MiuiIccCardApplicationProxy;->isCdmaApplicationOnIcc(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 310
    const/4 v3, 0x2

    .line 318
    :goto_0
    const/4 v2, 0x0

    .line 319
    .local v2, preferredNetworkMode:I
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 320
    const/4 v2, 0x7

    .line 322
    :cond_0
    const/4 v0, 0x1

    .line 323
    .local v0, cdmaSubscription:I
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default network mode set is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default cdma subscription set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 329
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Configed network mode set is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "subscription_mode"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 335
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Configed cdma subscription set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-ne v3, v7, :cond_5

    .line 338
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v4

    if-eq v4, v7, :cond_1

    const/4 v4, 0x7

    if-eq v2, v4, :cond_1

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    .line 341
    const/4 v2, 0x0

    .line 342
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrected network mode set is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->initializNetworkSelectionMode()V

    .line 351
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    invoke-virtual {p0, v3, v2, v0}, Lcom/android/phone/MiuiPhoneApp;->initializPreferredNetworkType(III)V

    .line 356
    .end local v0           #cdmaSubscription:I
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v2           #preferredNetworkMode:I
    .end local v3           #type:I
    :cond_3
    return-void

    .line 311
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v3       #type:I
    :cond_4
    invoke-static {v1}, Lcom/android/phone/MiuiIccCardApplicationProxy;->isGsmApplicationOnIcc(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 312
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 345
    .restart local v0       #cdmaSubscription:I
    .restart local v2       #preferredNetworkMode:I
    :cond_5
    if-ne v3, v8, :cond_2

    invoke-static {p0}, Lcom/android/phone/MiuiTelephonyCapabilities;->isWorldPhone(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 346
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v4

    if-eq v4, v8, :cond_2

    .line 347
    const/4 v2, 0x4

    .line 348
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrected network mode set is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setIntentAfterCall(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    .line 220
    return-void
.end method

.method public setLatestActiveCallOrigin(Ljava/lang/String;)V
    .locals 1
    .parameter "callOrigin"

    .prologue
    .line 224
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-super {p0, p1}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 229
    :cond_0
    if-nez p1, :cond_1

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    goto :goto_0

    .line 232
    :cond_1
    invoke-static {}, Lcom/android/phone/MiuiPhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    goto :goto_0
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 128
    invoke-super {p0, p1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x0

    .line 138
    .local v0, acquireProximityWakeLock:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "button_enable_proximity"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 140
    .local v1, enableProximityWakeLock:Z
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->proximitySensorModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v1, :cond_6

    .line 144
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/phone/MiuiPhoneApp;->mIsHardKeyboardOpen:Z

    if-eqz v6, :cond_9

    :cond_2
    move v3, v5

    .line 146
    .local v3, screenOnImmediately:Z
    :goto_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "button_enforce_proximity_during_ringing"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v6, :cond_a

    move v2, v5

    .line 151
    .local v2, proximityWhenIncall:Z
    :goto_2
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 153
    :cond_3
    sget-object p1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    .line 156
    :cond_4
    if-nez v2, :cond_5

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v4, :cond_5

    iget-boolean v4, p0, Lcom/android/phone/MiuiPhoneApp;->mBeginningCall:Z

    if-eqz v4, :cond_b

    :cond_5
    if-nez v3, :cond_b

    .line 159
    const/4 v0, 0x1

    .line 167
    .end local v2           #proximityWhenIncall:Z
    .end local v3           #screenOnImmediately:Z
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->proximitySensorModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    if-eqz v1, :cond_7

    iget-boolean v4, p0, Lcom/android/phone/MiuiPhoneApp;->mBeginningCall:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/Phone$State;

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_c

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v4, :cond_c

    .line 170
    :cond_7
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mDelayedProximitySensorLock:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-virtual {v4}, Lcom/android/phone/MiuiDelayedProximitySensorLock;->release()V

    .line 175
    :cond_8
    :goto_4
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneApp;->mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/Phone$State;

    .line 177
    iget-object v5, p0, Lcom/android/phone/MiuiPhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v5

    .line 178
    if-eqz v0, :cond_e

    .line 179
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_d

    .line 180
    const-string v4, "PhoneApp"

    const-string v6, "updateProximitySensorMode: acquiring..."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 193
    :goto_5
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_9
    move v3, v4

    .line 144
    goto :goto_1

    .restart local v3       #screenOnImmediately:Z
    :cond_a
    move v2, v4

    .line 146
    goto :goto_2

    .line 163
    .restart local v2       #proximityWhenIncall:Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_3

    .line 171
    .end local v2           #proximityWhenIncall:Z
    .end local v3           #screenOnImmediately:Z
    :cond_c
    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mLastStateForDelayedProximitySensor:Lcom/android/internal/telephony/Phone$State;

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_8

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v4, :cond_8

    .line 173
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mDelayedProximitySensorLock:Lcom/android/phone/MiuiDelayedProximitySensorLock;

    invoke-virtual {v4}, Lcom/android/phone/MiuiDelayedProximitySensorLock;->delayAquire()V

    goto :goto_4

    .line 183
    :cond_d
    :try_start_1
    const-string v4, "PhoneApp"

    const-string v6, "updateProximitySensorMode: lock already held."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 186
    :cond_e
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 187
    const-string v4, "PhoneApp"

    const-string v6, "updateProximitySensorMode: releasing..."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_5

    .line 190
    :cond_f
    const-string v4, "PhoneApp"

    const-string v6, "updateProximitySensorMode: lock already released."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method
