.class Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;
.super Ljava/lang/Thread;
.source "MiuiCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiCallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallWaitingVibratorThread"
.end annotation


# instance fields
.field private mStop:Z

.field final synthetic this$0:Lcom/android/phone/MiuiCallNotifier;


# direct methods
.method private constructor <init>(Lcom/android/phone/MiuiCallNotifier;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;->mStop:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MiuiCallNotifier;Lcom/android/phone/MiuiCallNotifier$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;-><init>(Lcom/android/phone/MiuiCallNotifier;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x258

    const-wide/16 v2, 0xc8

    .line 53
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #getter for: Lcom/android/phone/MiuiCallNotifier;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/phone/MiuiCallNotifier;->access$000(Lcom/android/phone/MiuiCallNotifier;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 54
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 55
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #getter for: Lcom/android/phone/MiuiCallNotifier;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/phone/MiuiCallNotifier;->access$000(Lcom/android/phone/MiuiCallNotifier;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 56
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 57
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;->mStop:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #getter for: Lcom/android/phone/MiuiCallNotifier;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/phone/MiuiCallNotifier;->access$000(Lcom/android/phone/MiuiCallNotifier;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 59
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 60
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #getter for: Lcom/android/phone/MiuiCallNotifier;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/phone/MiuiCallNotifier;->access$000(Lcom/android/phone/MiuiCallNotifier;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 62
    :cond_0
    return-void
.end method

.method public stopVibrate()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier$CallWaitingVibratorThread;->mStop:Z

    .line 66
    return-void
.end method
