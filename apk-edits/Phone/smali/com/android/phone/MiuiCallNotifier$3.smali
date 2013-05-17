.class Lcom/android/phone/MiuiCallNotifier$3;
.super Ljava/lang/Object;
.source "MiuiCallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiCallNotifier;
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
    .line 796
    iput-object p1, p0, Lcom/android/phone/MiuiCallNotifier$3;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier$3;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #calls: Lcom/android/phone/MiuiCallNotifier;->processTelephonyFirewall(Lcom/android/internal/telephony/CallerInfo;)Z
    invoke-static {v0, p3}, Lcom/android/phone/MiuiCallNotifier;->access$1100(Lcom/android/phone/MiuiCallNotifier;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier$3;->this$0:Lcom/android/phone/MiuiCallNotifier;

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier$3;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #getter for: Lcom/android/phone/MiuiCallNotifier;->arForCdmaCallWaiting:Landroid/os/AsyncResult;
    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->access$1400(Lcom/android/phone/MiuiCallNotifier;)Landroid/os/AsyncResult;

    move-result-object v1

    #calls: Lcom/android/phone/CallNotifier;->onCdmaCallWaiting(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/MiuiCallNotifier;->access$1501(Lcom/android/phone/MiuiCallNotifier;Landroid/os/AsyncResult;)V

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier$3;->this$0:Lcom/android/phone/MiuiCallNotifier;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/MiuiCallNotifier;->arForCdmaCallWaiting:Landroid/os/AsyncResult;
    invoke-static {v0, v1}, Lcom/android/phone/MiuiCallNotifier;->access$1402(Lcom/android/phone/MiuiCallNotifier;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 802
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier$3;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #calls: Lcom/android/phone/MiuiCallNotifier;->delayedVoiceReport(Lcom/android/internal/telephony/CallerInfo;)V
    invoke-static {v0, p3}, Lcom/android/phone/MiuiCallNotifier;->access$1300(Lcom/android/phone/MiuiCallNotifier;Lcom/android/internal/telephony/CallerInfo;)V

    .line 803
    return-void
.end method
