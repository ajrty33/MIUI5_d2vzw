.class public Lcom/android/phone/MiuiRinger;
.super Lcom/android/phone/Ringer;
.source "MiuiRinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiRinger$MiuiVibratorThread;
    }
.end annotation


# static fields
.field private static final VIBRATE_PATTERN:[B

.field private static final VIBRATE_PATTERN_STOP:[B


# instance fields
.field protected mAntiStranger:Z

.field protected mMute:Z

.field protected mVibrating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/MiuiRinger;->VIBRATE_PATTERN:[B

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/MiuiRinger;->VIBRATE_PATTERN_STOP:[B

    return-void

    .line 18
    :array_0
    .array-data 0x1
        0x0t
        0x7ft
        0x64t
        0x7ft
        0x5at
        0x81t
        0xat
        0x7ft
        0x64t
        0x7ft
        0x5at
        0x81t
        0xat
        0x7ft
        0x64t
        0x7ft
        0x5at
        0x81t
        0xat
        0x7ft
        0x64t
        0x7ft
        0x5at
        0x81t
        0xat
        0x7ft
        0x64t
        0x7ft
        0x50t
        0x81t
        0xat
        0x0t
        0xat
    .end array-data

    .line 35
    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;)V

    .line 15
    iput-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mVibrating:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mAntiStranger:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mMute:Z

    .line 71
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/android/phone/MiuiRinger;->VIBRATE_PATTERN:[B

    return-object v0
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/Ringer;
    .locals 4
    .parameter

    .prologue
    .line 59
    const-class v1, Lcom/android/phone/Ringer;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/android/phone/MiuiRinger;->sInstance:Lcom/android/phone/Ringer;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/phone/MiuiRinger;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiRinger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/MiuiRinger;->sInstance:Lcom/android/phone/Ringer;

    .line 65
    :goto_0
    sget-object v0, Lcom/android/phone/MiuiRinger;->sInstance:Lcom/android/phone/Ringer;

    monitor-exit v1

    return-object v0

    .line 63
    :cond_0
    const-string v0, "MiuiRinger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MiuiRinger;->sInstance:Lcom/android/phone/Ringer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public isNowVibrating()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mVibrating:Z

    return v0
.end method

.method protected isRingtonePlaying()Z
    .locals 2

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/MiuiRinger;->mRingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiRinger;->mRingHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method mute()V
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mMute:Z

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/phone/MiuiRinger;->stopRing()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mMute:Z

    .line 124
    :cond_0
    return-void
.end method

.method ring()V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mMute:Z

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-super {p0}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0
.end method

.method setAntiStranger(Z)V
    .locals 0
    .parameter "antiStranger"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/phone/MiuiRinger;->mAntiStranger:Z

    .line 117
    return-void
.end method

.method shouldVibrate()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/MiuiRinger;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method stopRing()V
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/MiuiRinger;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO_CDMA:Z

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiRinger;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/phone/MiuiRinger;->VIBRATE_PATTERN_STOP:[B

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateEx([B)V

    .line 99
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-super {p0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mVibrating:Z

    .line 102
    return-void

    .line 99
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method unMute()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiRinger;->mMute:Z

    .line 128
    return-void
.end method
