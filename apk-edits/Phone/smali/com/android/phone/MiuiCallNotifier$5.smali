.class Lcom/android/phone/MiuiCallNotifier$5;
.super Ljava/lang/Object;
.source "MiuiCallNotifier.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiCallNotifier;->initTts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiCallNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/android/phone/MiuiCallNotifier$5;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 4
    .parameter "utteranceId"

    .prologue
    .line 1119
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lmiui/net/FirewallManager;->getOneShotFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$5;->this$0:Lcom/android/phone/MiuiCallNotifier;

    iget-object v1, v1, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "drive_mode_phone_report"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$5;->this$0:Lcom/android/phone/MiuiCallNotifier;

    const/16 v2, 0x199

    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier$5;->this$0:Lcom/android/phone/MiuiCallNotifier;

    iget-object v3, v3, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/MiuiCallNotifier;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1123
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$5;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-virtual {v1, v0}, Lcom/android/phone/MiuiCallNotifier;->sendMessage(Landroid/os/Message;)Z

    .line 1127
    .end local v0           #m:Landroid/os/Message;
    :goto_0
    return-void

    .line 1125
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$5;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/MiuiCallNotifier;->restartRinger()V

    goto :goto_0
.end method
