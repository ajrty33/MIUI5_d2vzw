.class public Lcom/android/phone/MiuiCallNotifier;
.super Lcom/android/phone/CallNotifier;
.source "MiuiCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;
    }
.end annotation


# instance fields
.field private arForCdmaCallWaiting:Landroid/os/AsyncResult;

.field private mCallWaitingVibratorThread:Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;

.field private mHandonRingerEnable:Z

.field private mHandonTriggered:Z

.field private mHandonTriggeringCount:I

.field private mIsRedialCall:Z

.field private mPreviousBackCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

.field private mQueryListenerForCDMAWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private mQueryListenerForWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private mRedialTimes:I

.field private mRingerSetFlags:I

.field private mRingerVolume:I

.field private mRingerVolumeControlling:Z

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorCount:I

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRunning:Z

.field private mStartZ:F

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTurnoverMuteEnable:Z

.field private mTurnoverTiggeringCount:I

.field private mTurnoverTriggered:Z

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method protected constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V
    .locals 2
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"
    .parameter "callLog"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 217
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    .line 86
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 87
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    .line 94
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    .line 95
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    .line 100
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerSetFlags:I

    .line 101
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    .line 103
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    .line 104
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    .line 105
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    .line 106
    iput-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingVibratorThread:Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;

    .line 107
    iput-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->arForCdmaCallWaiting:Landroid/os/AsyncResult;

    .line 111
    new-instance v0, Lcom/android/phone/MiuiCallNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiCallNotifier$1;-><init>(Lcom/android/phone/MiuiCallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 785
    new-instance v0, Lcom/android/phone/MiuiCallNotifier$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiCallNotifier$2;-><init>(Lcom/android/phone/MiuiCallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mQueryListenerForWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 795
    new-instance v0, Lcom/android/phone/MiuiCallNotifier$3;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiCallNotifier$3;-><init>(Lcom/android/phone/MiuiCallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mQueryListenerForCDMAWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 218
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mVibrator:Landroid/os/Vibrator;

    .line 219
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorManager:Landroid/hardware/SensorManager;

    .line 220
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensor:Landroid/hardware/Sensor;

    .line 221
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    .line 222
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousBackCallState:Lcom/android/internal/telephony/Call$State;

    .line 223
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->initTts()V

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiCallNotifier;)Landroid/os/Vibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiCallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    return v0
.end method

.method static synthetic access$104(Lcom/android/phone/MiuiCallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/MiuiCallNotifier;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallNotifier;->processTelephonyFirewall(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1201(Lcom/android/phone/MiuiCallNotifier;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->onNewCallWaitingConnection(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/MiuiCallNotifier;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallNotifier;->delayedVoiceReport(Lcom/android/internal/telephony/CallerInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/MiuiCallNotifier;)Landroid/os/AsyncResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->arForCdmaCallWaiting:Landroid/os/AsyncResult;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/phone/MiuiCallNotifier;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/phone/MiuiCallNotifier;->arForCdmaCallWaiting:Landroid/os/AsyncResult;

    return-object p1
.end method

.method static synthetic access$1501(Lcom/android/phone/MiuiCallNotifier;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->onCdmaCallWaiting(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/MiuiCallNotifier;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiCallNotifier;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mStartZ:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/MiuiCallNotifier;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/phone/MiuiCallNotifier;->mStartZ:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiCallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverMuteEnable:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiCallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/MiuiCallNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/phone/MiuiCallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    return p1
.end method

.method static synthetic access$504(Lcom/android/phone/MiuiCallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiCallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonRingerEnable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/MiuiCallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/MiuiCallNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/phone/MiuiCallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    return p1
.end method

.method static synthetic access$804(Lcom/android/phone/MiuiCallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/MiuiCallNotifier;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->decrescendoRingerVolume()V

    return-void
.end method

.method private static addFirewallLog(Ljava/lang/String;IJIJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 934
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 935
    const-string v1, "number"

    invoke-static {p1, p0}, Lcom/android/phone/MiuiCallNotifier;->convertPresentationToFilterNumber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string v1, "date"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 937
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    const-string v1, "reason"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 939
    const-string v1, "data1"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 941
    :try_start_0
    sget-object v1, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    iget-object v1, v1, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :goto_0
    return-void

    .line 942
    :catch_0
    move-exception v0

    .line 943
    const-string v1, "MiuiCallNotifier"

    const-string v2, "failed to add firewall log"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private checkDriveModeReport(Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 844
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lmiui/net/FirewallManager;->getOneShotFlag(I)Z

    move-result v2

    .line 845
    if-eqz v2, :cond_1

    .line 846
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "drive_mode_phone_report"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    .line 854
    :goto_0
    return v0

    .line 849
    :cond_0
    const/16 v0, 0x198

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/MiuiCallNotifier;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 850
    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/phone/MiuiCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v1

    .line 851
    goto :goto_0

    :cond_1
    move v0, v1

    .line 854
    goto :goto_0
.end method

.method private checkVoiceReport()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 858
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "voiceassist_report_method"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 859
    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voiceassist_phone_report"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 860
    if-eq v0, v5, :cond_0

    if-gtz v3, :cond_1

    :cond_0
    move v0, v1

    .line 869
    :goto_0
    return v0

    .line 863
    :cond_1
    if-nez v0, :cond_2

    .line 864
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 865
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 866
    goto :goto_0

    :cond_2
    move v0, v2

    .line 869
    goto :goto_0
.end method

.method private static convertPresentationToFilterNumber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "presentation"
    .parameter "logNumber"

    .prologue
    .line 950
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p0, v0, :cond_1

    .line 951
    const-string p1, "-2"

    .line 958
    :cond_0
    :goto_0
    return-object p1

    .line 952
    :cond_1
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p0, v0, :cond_2

    .line 953
    const-string p1, "-3"

    goto :goto_0

    .line 954
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne p0, v0, :cond_0

    .line 956
    :cond_3
    const-string p1, "-1"

    goto :goto_0
.end method

.method private crescendoRingerVolumeDelayed()V
    .locals 7

    .prologue
    const/16 v6, 0x191

    const/4 v5, 0x2

    .line 971
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_1

    .line 992
    :cond_0
    return-void

    .line 976
    :cond_1
    iget-boolean v4, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    if-nez v4, :cond_2

    .line 977
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolume:I

    .line 978
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    .line 982
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 985
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 986
    .local v1, maxVolume:I
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .local v3, volume:I
    const/16 v0, 0x7530

    .line 987
    .local v0, delayTime:I
    :goto_0
    if-gt v3, v1, :cond_0

    .line 988
    invoke-static {p0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 989
    .local v2, message:Landroid/os/Message;
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 990
    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/phone/MiuiCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 987
    add-int/lit8 v3, v3, 0x1

    add-int/lit16 v0, v0, 0x1388

    goto :goto_0
.end method

.method private decrescendoRingerVolume()V
    .locals 6

    .prologue
    const/16 v5, 0x191

    const/4 v4, 0x2

    .line 995
    iget-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    if-nez v3, :cond_0

    .line 996
    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolume:I

    .line 997
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    .line 1001
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 1003
    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, volume:I
    const/4 v0, 0x0

    .line 1004
    .local v0, delayTime:I
    :goto_0
    if-ltz v2, :cond_1

    iget v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolume:I

    add-int/lit8 v3, v3, -0x3

    if-lt v2, v3, :cond_1

    .line 1005
    invoke-static {p0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1006
    .local v1, message:Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1007
    int-to-long v3, v0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/phone/MiuiCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1004
    add-int/lit8 v2, v2, -0x1

    add-int/lit16 v0, v0, 0x1f4

    goto :goto_0

    .line 1009
    .end local v1           #message:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private delayedVoiceReport(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .parameter "ci"

    .prologue
    .line 873
    const/16 v1, 0x19a

    invoke-virtual {p0, v1, p1}, Lcom/android/phone/MiuiCallNotifier;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 874
    .local v0, m:Landroid/os/Message;
    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/MiuiCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 875
    return-void
.end method

.method static getCallWaitingToneLength(Lcom/android/phone/CallNotifier;I)I
    .locals 6
    .parameter "notifier"
    .parameter "defaultValue"

    .prologue
    .line 172
    move v1, p1

    .line 174
    .local v1, toneLengthMillis:I
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "button_call_waiting_tone"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 178
    .local v2, value:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 179
    const/16 v1, 0x1388

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 180
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 181
    const/16 v1, 0x1388

    .line 182
    instance-of v3, p0, Lcom/android/phone/MiuiCallNotifier;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 183
    check-cast v0, Lcom/android/phone/MiuiCallNotifier;

    .line 184
    .local v0, miuiCallNotifier:Lcom/android/phone/MiuiCallNotifier;
    new-instance v3, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;-><init>(Lcom/android/phone/MiuiCallNotifier;Lcom/android/phone/MiuiCallNotifier$1;)V

    iput-object v3, v0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingVibratorThread:Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;

    .line 185
    iget-object v3, v0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingVibratorThread:Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;

    invoke-virtual {v3}, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;->start()V

    goto :goto_0
.end method

.method static init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    const-class v6, Lcom/android/phone/CallNotifier;

    monitor-enter v6

    .line 161
    :try_start_0
    sget-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/android/phone/MiuiCallNotifier;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/MiuiCallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    sput-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 163
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->logLastUnloggedCall()V

    .line 167
    :goto_0
    sget-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    monitor-exit v6

    return-object v0

    .line 165
    :cond_0
    const-string v0, "MiuiCallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initTts()V
    .locals 4

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->tryReconnectIfDead()V

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.voiceassist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1092
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    .line 1093
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1094
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1096
    :cond_2
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MiuiCallNotifier$4;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiCallNotifier$4;-><init>(Lcom/android/phone/MiuiCallNotifier;)V

    const-string v3, "com.miui.voiceassist"

    invoke-direct {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1116
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/phone/MiuiCallNotifier$5;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiCallNotifier$5;-><init>(Lcom/android/phone/MiuiCallNotifier;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 1130
    :cond_3
    return-void
.end method

.method private isBlockedByFirewall(Lcom/android/internal/telephony/Connection;)Z
    .locals 4
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1079
    if-nez p1, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return v1

    .line 1082
    :cond_1
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getFirewallCode(Lcom/android/internal/telephony/Connection;)I

    move-result v0

    .line 1083
    .local v0, code:I
    if-eq v0, v2, :cond_2

    const/16 v3, 0x101

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private static isSkippingCallLog(I)Z
    .locals 2
    .parameter "firewallCode"

    .prologue
    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, skipping:Z
    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/16 v1, 0x101

    if-eq p0, v1, :cond_0

    const/16 v1, 0x102

    if-ne p0, v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    iget-object v1, v1, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lmiui/provider/ExtraTelephony;->isSkipInCallLogForFirewall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    :cond_1
    const/4 v0, 0x1

    .line 647
    :cond_2
    return v0
.end method

.method static logCall(Lcom/android/internal/telephony/Connection;)V
    .locals 25
    .parameter "c"

    .prologue
    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v20

    .line 560
    .local v20, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v23

    .line 561
    .local v23, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, number:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    .line 563
    .local v3, date:J
    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v10

    .line 564
    .local v10, ci:Lcom/android/internal/telephony/CallerInfo;
    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v10}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v11

    .line 566
    .local v11, logNumber:Ljava/lang/String;
    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v10}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v2

    .line 572
    .local v2, presentation:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 573
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v9, :cond_2

    .line 574
    const/4 v13, 0x3

    .line 575
    .local v13, callLogType:I
    invoke-static/range {p0 .. p0}, Lcom/android/phone/MiuiExtraConnectionData;->getRingDurationMillis(Lcom/android/internal/telephony/Connection;)J

    move-result-wide v6

    .line 581
    .local v6, duration:J
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/phone/MiuiExtraConnectionData;->getFirewallCode(Lcom/android/internal/telephony/Connection;)I

    move-result v5

    .line 582
    .local v5, firewallCode:I
    const/4 v9, 0x2

    if-eq v5, v9, :cond_0

    const/16 v9, 0x102

    if-ne v5, v9, :cond_3

    .line 584
    :cond_0
    const/16 v18, 0x2

    .line 593
    .local v18, firewallType:I
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/android/phone/MiuiExtraConnectionData;->isForwarded(Lcom/android/internal/telephony/Connection;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v19, 0x1

    .line 595
    .local v19, forwardedCall:I
    :goto_2
    if-eqz v5, :cond_7

    .line 596
    invoke-static {v5}, Lcom/android/phone/MiuiCallNotifier;->isSkippingCallLog(I)Z

    move-result v24

    .line 598
    .local v24, skipCallLog:Z
    invoke-static/range {v1 .. v7}, Lcom/android/phone/MiuiCallNotifier;->addFirewallLog(Ljava/lang/String;IJIJ)V

    .line 618
    .end local v5           #firewallCode:I
    :goto_3
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_a

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v21, 0x1

    .line 622
    .local v21, isOtaspNumber:Z
    :goto_4
    if-nez v21, :cond_b

    if-nez v24, :cond_b

    const/16 v22, 0x1

    .line 626
    .local v22, okToLogThisCall:Z
    :goto_5
    if-eqz v22, :cond_1

    .line 627
    new-instance v8, Lcom/android/phone/CallLogAsync$AddCallArgs;

    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    iget-object v9, v9, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move v12, v2

    move-wide v14, v3

    move-wide/from16 v16, v6

    invoke-direct/range {v8 .. v19}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJII)V

    .line 631
    .local v8, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    iget-object v9, v9, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v9, v8}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 634
    .end local v8           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/phone/MiuiPhoneUtils;->removeUnloggedCall(Lcom/android/internal/telephony/Connection;)V

    .line 635
    return-void

    .line 577
    .end local v6           #duration:J
    .end local v13           #callLogType:I
    .end local v18           #firewallType:I
    .end local v19           #forwardedCall:I
    .end local v21           #isOtaspNumber:Z
    .end local v22           #okToLogThisCall:Z
    .end local v24           #skipCallLog:Z
    :cond_2
    const/4 v13, 0x1

    .line 578
    .restart local v13       #callLogType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .restart local v6       #duration:J
    goto :goto_0

    .line 585
    .restart local v5       #firewallCode:I
    :cond_3
    const/4 v9, 0x1

    if-eq v5, v9, :cond_4

    const/16 v9, 0x101

    if-eq v5, v9, :cond_4

    const/4 v9, 0x7

    if-ne v5, v9, :cond_5

    .line 588
    :cond_4
    const/16 v18, 0x1

    .restart local v18       #firewallType:I
    goto :goto_1

    .line 590
    .end local v18           #firewallType:I
    :cond_5
    const/16 v18, 0x0

    .restart local v18       #firewallType:I
    goto :goto_1

    .line 593
    :cond_6
    const/16 v19, 0x0

    goto :goto_2

    .line 600
    .restart local v19       #forwardedCall:I
    :cond_7
    const/16 v24, 0x0

    .restart local v24       #skipCallLog:Z
    goto :goto_3

    .line 603
    .end local v5           #firewallCode:I
    .end local v6           #duration:J
    .end local v13           #callLogType:I
    .end local v18           #firewallType:I
    .end local v19           #forwardedCall:I
    .end local v24           #skipCallLog:Z
    :cond_8
    const/4 v13, 0x2

    .line 604
    .restart local v13       #callLogType:I
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v12, 0x2

    if-ne v9, v12, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v12, "button_display_precise_call_state"

    const/4 v14, 0x0

    invoke-interface {v9, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v9

    sget-object v12, Lcom/android/phone/MiuiConstants$CdmaCallState;->UnauthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v9, v12, :cond_9

    .line 608
    const-wide/16 v6, 0x0

    .line 612
    .restart local v6       #duration:J
    :goto_6
    const/16 v18, 0x0

    .line 613
    .restart local v18       #firewallType:I
    const/16 v19, 0x0

    .line 614
    .restart local v19       #forwardedCall:I
    const/16 v24, 0x0

    .restart local v24       #skipCallLog:Z
    goto :goto_3

    .line 610
    .end local v6           #duration:J
    .end local v18           #firewallType:I
    .end local v19           #forwardedCall:I
    .end local v24           #skipCallLog:Z
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .restart local v6       #duration:J
    goto :goto_6

    .line 618
    .restart local v18       #firewallType:I
    .restart local v19       #forwardedCall:I
    .restart local v24       #skipCallLog:Z
    :cond_a
    const/16 v21, 0x0

    goto :goto_4

    .line 622
    .restart local v21       #isOtaspNumber:Z
    :cond_b
    const/16 v22, 0x0

    goto :goto_5
.end method

.method public static onNewPhoneRegisterToCallManager(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 196
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 197
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    const/16 v2, 0x195

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    sget-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    const/16 v1, 0x192

    invoke-interface {p0, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static onPhoneUnregisterToCallManager(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 208
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 209
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    sget-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private onSuppServiceNotification(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 914
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 919
    .local v1, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    if-eqz v1, :cond_0

    .line 920
    iget v2, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-nez v2, :cond_2

    .line 922
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 923
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 924
    invoke-static {v0, v1}, Lcom/android/phone/MiuiExtraConnectionData;->setSuppServiceNotification(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    goto :goto_0

    .line 928
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_2
    invoke-static {v1}, Lcom/android/phone/MiuiExtraConnectionData;->setIncomingCallSuppServiceNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    goto :goto_0
.end method

.method private processTelephonyFirewall(Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 734
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 735
    if-eqz v2, :cond_0

    .line 736
    invoke-static {v2, v1}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 739
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiCallNotifier;->getTelephonyFirewallBlockType(Lcom/android/internal/telephony/CallerInfo;)I

    move-result v3

    .line 740
    if-ne v3, v0, :cond_4

    .line 742
    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lmiui/provider/ExtraTelephony;->getCallAct(Landroid/content/Context;)I

    move-result v3

    .line 743
    if-nez v3, :cond_2

    .line 744
    const-string v3, "Rejected incoming call for caller in blacklist"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 745
    if-eqz v2, :cond_1

    .line 746
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 748
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 782
    :goto_0
    return v0

    .line 750
    :cond_2
    if-ne v3, v0, :cond_3

    .line 751
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 752
    const-string v0, "Muted incoming call for caller in blacklist"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 753
    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 754
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v0, Lcom/android/phone/MiuiRinger;

    invoke-virtual {v0}, Lcom/android/phone/MiuiRinger;->mute()V

    :cond_3
    :goto_1
    move v0, v1

    .line 782
    goto :goto_0

    .line 759
    :cond_4
    if-ne v3, v4, :cond_3

    .line 761
    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lmiui/provider/ExtraTelephony;->getCallAct(Landroid/content/Context;)I

    move-result v3

    .line 762
    if-nez v3, :cond_6

    .line 763
    const-string v3, "Rejected incoming call for caller not in whitelist"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 764
    if-eqz v2, :cond_5

    .line 765
    const/16 v3, 0x101

    invoke-static {v2, v3}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 767
    :cond_5
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    const-string v2, "MiuiCallNotifier"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 769
    :cond_6
    if-ne v3, v0, :cond_3

    .line 770
    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 771
    const-string v0, "Muted incoming call for caller not in whitelist"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 772
    const/16 v0, 0x102

    invoke-static {v2, v0}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 773
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v0, Lcom/android/phone/MiuiRinger;

    invoke-virtual {v0}, Lcom/android/phone/MiuiRinger;->mute()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private resetRingerVolume()V
    .locals 4

    .prologue
    .line 962
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    if-eqz v0, :cond_0

    .line 964
    const/16 v0, 0x191

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 965
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolume:I

    iget v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerSetFlags:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    .line 968
    :cond_0
    return-void
.end method

.method private startAutoAnswer()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1012
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1013
    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 1014
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 1017
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1050
    :cond_2
    :goto_0
    return-void

    .line 1024
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1025
    const-string v0, "button_auto_answer"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1026
    const-string v0, "button_auto_answer_scenario"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1028
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    check-cast v0, Lcom/android/phone/MiuiPhoneApp;

    .line 1029
    packed-switch v5, :pswitch_data_0

    .line 1043
    :cond_4
    :goto_1
    if-eqz v1, :cond_2

    .line 1044
    const-string v0, "button_auto_answer_delay"

    const-string v1, "3"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1045
    const/16 v1, 0x194

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1046
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1047
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/MiuiCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1031
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isBluetoothAvailable()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    move v1, v0

    .line 1032
    goto :goto_1

    :cond_5
    move v0, v2

    .line 1031
    goto :goto_2

    .line 1034
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_6
    move v1, v2

    goto :goto_1

    .line 1037
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v2, v1

    :cond_8
    move v1, v2

    .line 1038
    goto :goto_1

    .line 1029
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private startSensor()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1066
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1067
    const-string v1, "button_turnover_mute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverMuteEnable:Z

    .line 1068
    const-string v1, "button_handon_ringer"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonRingerEnable:Z

    .line 1069
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverMuteEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonRingerEnable:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    if-nez v0, :cond_1

    .line 1071
    iput-boolean v2, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    .line 1072
    iput-boolean v2, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    .line 1073
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    .line 1076
    :cond_1
    return-void
.end method

.method private stopSensor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1053
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1056
    iput-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    .line 1057
    iput v3, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    .line 1058
    iput-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    .line 1059
    iput-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    .line 1060
    iput v3, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    .line 1061
    iput v3, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    .line 1063
    :cond_0
    return-void
.end method

.method private vibrateWhenConnectOrDisconnect()V
    .locals 4

    .prologue
    .line 444
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "button_connect_disconnect_vibrate"

    const-string v3, "100"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 448
    .local v0, vibrateDuration:I
    if-lez v0, :cond_0

    .line 449
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mVibrator:Landroid/os/Vibrator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 451
    :cond_0
    return-void
.end method

.method private voiceReport(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 6
    .parameter

    .prologue
    const v4, 0x7f0d03a1

    .line 878
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallNotifier;->checkDriveModeReport(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->checkVoiceReport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[n1]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 887
    const-string v0, ""

    .line 888
    const/16 v0, 0x30

    .line 889
    iget-boolean v2, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v2, :cond_3

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2, v4}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 892
    const/16 v0, 0x31

    .line 898
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 899
    const-string v3, "com.miui.voiceassist.priority"

    const/16 v4, 0x384

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-string v3, "utteranceId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "__"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    const-string v0, "streamType"

    const-string v3, "2"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 904
    :try_start_0
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 905
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 906
    :catch_0
    move-exception v0

    .line 907
    const-string v1, "MiuiCallNotifier"

    const-string v2, "Tts service error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 908
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->restartRinger()V

    goto/16 :goto_0

    .line 894
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v4, 0x7f0d03a2

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method


# virtual methods
.method protected checkFirewallBlockSettingOfUnknownNumber(Lcom/android/internal/telephony/Connection;)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 333
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2}, Lmiui/provider/ExtraTelephony;->isFirewallEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2}, Lmiui/provider/ExtraTelephony;->isAntiPrivateEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 337
    .local v1, presentation:I
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-eq v1, v2, :cond_0

    const-string v2, "-1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    :cond_0
    const-string v2, "Rejected incoming call for caller is private number/unknown number"

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 344
    if-eqz p1, :cond_1

    .line 345
    const/4 v2, 0x7

    invoke-static {p1, v2}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 347
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 348
    const/4 v2, 0x1

    .line 351
    .end local v0           #number:Ljava/lang/String;
    .end local v1           #presentation:I
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method clearStopSignalInfoToneMessage()V
    .locals 1

    .prologue
    .line 713
    const/16 v0, 0x197

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 714
    return-void
.end method

.method protected getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 2
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 722
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getOrigDialAddress(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, logNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    invoke-super {p0, p1, p2}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v0

    .line 726
    :cond_0
    return-object v0
.end method

.method getRedialTimes()I
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getTelephonyFirewallBlockType(Lcom/android/internal/telephony/CallerInfo;)I
    .locals 3
    .parameter "ci"

    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lmiui/provider/ExtraTelephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 228
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 327
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->handleMessage(Landroid/os/Message;)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-nez v10, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallNotifier;->silenceRinger()V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v10, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const/4 v11, 0x2

    iget v12, p1, Landroid/os/Message;->arg1:I

    iget v13, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerSetFlags:I

    invoke-virtual {v10, v11, v12, v13}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 238
    :pswitch_1
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    invoke-direct {p0, v10}, Lcom/android/phone/MiuiCallNotifier;->onSuppServiceNotification(Landroid/os/AsyncResult;)V

    .line 239
    iget-object v10, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v10, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v10, v11, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallNotifier;->resetAudioStateAfterDisconnect()V

    goto :goto_0

    .line 249
    :pswitch_3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/Call;

    .line 250
    .local v7, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v10, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    if-ne v10, v7, :cond_0

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 252
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 257
    .end local v7           #ringingCall:Lcom/android/internal/telephony/Call;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 258
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_0

    .line 259
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    .line 260
    .local v5, record:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;
    iget-byte v10, v5, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlPolarityIncluded:B

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 261
    iget-object v10, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentActiveCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 262
    .local v2, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    invoke-static {v2}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v10

    sget-object v11, Lcom/android/phone/MiuiConstants$CdmaCallState;->UnauthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v10, v11, :cond_0

    .line 265
    sget-object v10, Lcom/android/phone/MiuiConstants$CdmaCallState;->AuthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    invoke-static {v2, v10}, Lcom/android/phone/MiuiExtraConnectionData;->setCdmaCallState(Lcom/android/internal/telephony/Call;Lcom/android/phone/MiuiConstants$CdmaCallState;)V

    .line 267
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->vibrateWhenConnectOrDisconnect()V

    .line 268
    iget-object v10, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 269
    iget-object v10, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto/16 :goto_0

    .line 271
    :cond_2
    iget-object v10, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v10}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 279
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #call:Lcom/android/internal/telephony/Call;
    .end local v5           #record:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;
    :pswitch_5
    invoke-static {}, Lcom/android/phone/MiuiExtraConnectionData;->clearDisconnected()V

    goto/16 :goto_0

    .line 283
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSignalInfoTone()V

    goto/16 :goto_0

    .line 287
    :pswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    .line 289
    .local v3, ci:Lcom/android/internal/telephony/CallerInfo;
    iget-object v10, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v10, v11, :cond_3

    .line 290
    iget-object v10, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentActiveCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 292
    :cond_3
    if-eqz v3, :cond_0

    .line 296
    iget-object v10, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "drive_mode_calling_auto_sms_reply"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_0

    .line 298
    iget-object v10, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, num:Ljava/lang/String;
    invoke-static {v4}, Lmiui/telephony/PhoneNumberUtils;->isServiceNumber(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 302
    iget-boolean v10, v3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "drive_mode_only_contact_reply"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-gtz v10, :cond_0

    .line 305
    :cond_4
    iget-object v10, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "drive_mode_sms_auto_reply_content"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, c:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 307
    const-string v10, "smsto"

    const/4 v11, 0x0

    invoke-static {v10, v4, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 308
    .local v9, uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.android.mms.intent.action.SENDTO_NO_CONFIRMATION"

    invoke-direct {v8, v10, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 309
    .local v8, si:Landroid/content/Intent;
    const-string v10, "android.intent.extra.TEXT"

    invoke-virtual {v8, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    iget-object v10, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10, v8}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 316
    .end local v1           #c:Ljava/lang/String;
    .end local v3           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #num:Ljava/lang/String;
    .end local v8           #si:Landroid/content/Intent;
    .end local v9           #uri:Landroid/net/Uri;
    :pswitch_8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/Call;

    .line 317
    .local v6, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 318
    const-string v10, "hangup(): hanging up ringing call"

    invoke-virtual {p0, v10}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 319
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 324
    .end local v6           #ringing:Lcom/android/internal/telephony/Call;
    :pswitch_9
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {p0, v10}, Lcom/android/phone/MiuiCallNotifier;->voiceReport(Lcom/android/internal/telephony/CallerInfo;)V

    goto/16 :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method isRinging()Z
    .locals 2

    .prologue
    .line 683
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCdmaSingalInfoTone:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 375
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 376
    .local v0, call:Lcom/android/internal/telephony/Call;
    iput-object p1, p0, Lcom/android/phone/MiuiCallNotifier;->arForCdmaCallWaiting:Landroid/os/AsyncResult;

    .line 377
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mQueryListenerForCDMAWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v1

    .line 380
    .local v1, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mQueryListenerForCDMAWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-interface {v2, v3, p0, v4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 383
    :cond_0
    return-void
.end method

.method protected onDisconnect(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "r"

    .prologue
    const/16 v13, 0x196

    const/4 v12, 0x0

    .line 455
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSensor()V

    .line 456
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->resetRingerVolume()V

    .line 458
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 459
    .local v0, c:Lcom/android/internal/telephony/Connection;
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 460
    .local v2, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    if-eqz v0, :cond_8

    .line 461
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 463
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call disconnected with cause "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/MiuiPhoneUtils;->usage(Ljava/lang/String;)V

    .line 465
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v8, :cond_2

    .line 466
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 467
    .local v1, call:Lcom/android/internal/telephony/Call;
    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    if-ne v1, v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    if-ne v1, v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousBackCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_2

    .line 469
    :cond_1
    const-string v8, "MiuiCallNotifier"

    const-string v9, "MIONE:phone disconnect, then vibrate"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->vibrateWhenConnectOrDisconnect()V

    .line 473
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    :cond_2
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v8, :cond_3

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v8, :cond_4

    .line 475
    :cond_3
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lmiui/net/FirewallManager;->getOneShotFlag(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 476
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 477
    const/16 v8, 0x198

    iget-object v9, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v9, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/phone/MiuiCallNotifier;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 478
    .local v4, m:Landroid/os/Message;
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiCallNotifier;->sendMessage(Landroid/os/Message;)Z

    .line 483
    .end local v4           #m:Landroid/os/Message;
    :cond_4
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v8, :cond_6

    .line 485
    :cond_5
    iput-boolean v12, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 488
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 489
    .local v5, number:Ljava/lang/String;
    invoke-static {v5}, Lmiui/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    .line 490
    .local v3, isEmergencyNumber:Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 491
    .local v6, phone:Lcom/android/internal/telephony/Phone;
    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v8

    if-eqz v8, :cond_c

    if-nez v3, :cond_c

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v8, :cond_c

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v8, :cond_c

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v8, :cond_c

    .line 496
    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 497
    .local v7, pref:Landroid/content/SharedPreferences;
    const-string v8, "button_auto_redial"

    invoke-interface {v7, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 498
    iget-boolean v8, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    if-nez v8, :cond_7

    .line 499
    iput v12, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    .line 500
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 502
    :cond_7
    iget v8, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    const/16 v9, 0xa

    if-ge v8, v9, :cond_a

    .line 503
    iget v8, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    .line 504
    invoke-static {v0}, Lcom/android/phone/MiuiExtraConnectionData;->getOrigDialAddress(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Lcom/android/phone/MiuiPhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Connection;)I

    .line 516
    .end local v3           #isEmergencyNumber:Z
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #phone:Lcom/android/internal/telephony/Phone;
    .end local v7           #pref:Landroid/content/SharedPreferences;
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    .line 518
    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v9, :cond_9

    .line 519
    invoke-direct {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->isBlockedByFirewall(Lcom/android/internal/telephony/Connection;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 520
    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 521
    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 525
    :cond_9
    invoke-virtual {p0, v13}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 526
    invoke-static {v2}, Lcom/android/phone/MiuiInCallScreen;->getCallEndedDisplayDelay(Lcom/android/internal/telephony/Connection$DisconnectCause;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v13, v8, v9}, Lcom/android/phone/MiuiCallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 527
    return-void

    .line 506
    .restart local v3       #isEmergencyNumber:Z
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v7       #pref:Landroid/content/SharedPreferences;
    :cond_a
    iput-boolean v12, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    goto :goto_0

    .line 509
    :cond_b
    iput-boolean v12, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    goto :goto_0

    .line 512
    .end local v7           #pref:Landroid/content/SharedPreferences;
    :cond_c
    iput-boolean v12, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    goto :goto_0
.end method

.method protected onNewCallWaitingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mQueryListenerForWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v1, p1, v2, p1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 368
    .local v0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mQueryListenerForWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 371
    :cond_0
    return-void
.end method

.method protected onNewRealRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 356
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->onNewRealRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 357
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->crescendoRingerVolumeDelayed()V

    .line 358
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->startSensor()V

    .line 359
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->startAutoAnswer()V

    .line 360
    return-void
.end method

.method protected onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 388
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 390
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 391
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->setLatestUnloggedCall(Lcom/android/internal/telephony/Connection;)V

    .line 392
    invoke-static {v0}, Lcom/android/phone/MiuiExtraConnectionData;->onIncomingCall(Lcom/android/internal/telephony/Connection;)V

    .line 394
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    .line 397
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->initTts()V

    .line 398
    return-void
.end method

.method protected onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "r"

    .prologue
    .line 402
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 403
    .local v2, foreCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 405
    .local v0, backCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 407
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->setLatestUnloggedCall(Lcom/android/internal/telephony/Connection;)V

    .line 412
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v4, :cond_2

    .line 414
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 415
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 416
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->vibrateWhenConnectOrDisconnect()V

    .line 419
    :cond_1
    iget-boolean v4, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    if-eqz v4, :cond_2

    .line 420
    const/16 v3, 0xa

    .line 421
    .local v3, toneToPlay:I
    new-instance v4, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v4, p0, v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 422
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 426
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v3           #toneToPlay:I
    :cond_2
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_3

    .line 427
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_3

    .line 428
    const/16 v4, 0x19a

    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 429
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 432
    :cond_3
    iput-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    .line 433
    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousBackCallState:Lcom/android/internal/telephony/Call$State;

    .line 435
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_4

    .line 436
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSensor()V

    .line 437
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->resetRingerVolume()V

    .line 440
    :cond_4
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 441
    return-void

    .line 408
    :cond_5
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v4, :cond_0

    .line 409
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->updateLatestUnloggedCall(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x64

    .line 808
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 809
    invoke-virtual {p0, p3}, Lcom/android/phone/MiuiCallNotifier;->getTelephonyFirewallBlockType(Lcom/android/internal/telephony/CallerInfo;)I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->isSkippingCallLog(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 810
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    instance-of v1, p2, Lcom/android/phone/CallNotifier;

    if-eqz v1, :cond_0

    .line 813
    const/4 v0, 0x0

    .line 814
    .local v0, isQueryExecutionTimeOK:Z
    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 815
    const/16 v1, 0x64

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallNotifier;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 816
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 817
    const/4 v0, 0x1

    .line 819
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 820
    if-eqz v0, :cond_6

    .line 821
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v1, Lcom/android/phone/MiuiRinger;

    invoke-virtual {v1}, Lcom/android/phone/MiuiRinger;->unMute()V

    .line 822
    invoke-direct {p0, p3}, Lcom/android/phone/MiuiCallNotifier;->processTelephonyFirewall(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 823
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 825
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 826
    :try_start_1
    iget v1, p0, Lcom/android/phone/MiuiCallNotifier;->mCallerInfoQueryState:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 827
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/MiuiCallNotifier;->mCallerInfoQueryState:I

    .line 829
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 819
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 834
    :cond_4
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v1, Lcom/android/phone/MiuiRinger;

    iget-boolean v3, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lmiui/provider/ExtraTelephony;->isFirewallEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lmiui/provider/ExtraTelephony;->isAntiStrangerEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v1, v2}, Lcom/android/phone/MiuiRinger;->setAntiStranger(Z)V

    .line 838
    :cond_6
    invoke-direct {p0, p3}, Lcom/android/phone/MiuiCallNotifier;->delayedVoiceReport(Lcom/android/internal/telephony/CallerInfo;)V

    .line 839
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    goto :goto_0
.end method

.method protected registerForNotifications()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 671
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 672
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 673
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 674
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x195

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 676
    :cond_0
    const/16 v2, 0x192

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 679
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method protected resetAudioStateAfterDisconnect()V
    .locals 2

    .prologue
    .line 531
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    const/16 v0, 0x193

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .locals 9
    .parameter "c"
    .parameter "date"

    .prologue
    const/4 v3, 0x0

    .line 542
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getFirewallCode(Lcom/android/internal/telephony/Connection;)I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/MiuiCallNotifier;->isSkippingCallLog(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiCallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v8

    .line 544
    .local v8, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v8}, Lcom/android/phone/MiuiPhoneUtils;->getName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0, p1, v8}, Lcom/android/phone/MiuiCallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, number:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 547
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object v4, v3

    move-object v5, v3

    move-wide v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 552
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v8           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_0
    :goto_0
    return-void

    .line 549
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #number:Ljava/lang/String;
    .restart local v8       #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, v8, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, v8, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    move-wide v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    goto :goto_0
.end method

.method silenceRinger()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 689
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSensor()V

    .line 690
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 691
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->resetRingerVolume()V

    .line 693
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 695
    iput-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 698
    :cond_0
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCdmaSingalInfoTone:I

    const/16 v1, 0x62

    if-eq v0, v1, :cond_1

    .line 699
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSignalInfoTone()V

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingVibratorThread:Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;

    if-eqz v0, :cond_2

    .line 703
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingVibratorThread:Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;

    invoke-virtual {v0}, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;->stopVibrate()V

    .line 704
    iput-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCallWaitingVibratorThread:Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_3

    .line 708
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 710
    :cond_3
    return-void
.end method

.method stopSignalInfoTone(I)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 717
    const/16 v0, 0x197

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/MiuiCallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 718
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 652
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 653
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 654
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    goto :goto_0

    .line 656
    :cond_0
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    goto :goto_0

    .line 659
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 660
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 661
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 662
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x195

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 664
    :cond_2
    const/16 v2, 0x192

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 667
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_3
    return-void
.end method
