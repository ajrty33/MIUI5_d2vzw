.class final Lcom/android/phone/MiuiIccCardApplicationProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiIccCardApplicationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiIccCardApplicationProxy;->registerIccCardStatusChange(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$event:I

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/phone/MiuiIccCardApplicationProxy$1;->val$handler:Landroid/os/Handler;

    iput p2, p0, Lcom/android/phone/MiuiIccCardApplicationProxy$1;->val$event:I

    iput-object p3, p0, Lcom/android/phone/MiuiIccCardApplicationProxy$1;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/phone/MiuiIccCardApplicationProxy$1;->val$handler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/phone/MiuiIccCardApplicationProxy$1;->val$event:I

    iget-object v3, p0, Lcom/android/phone/MiuiIccCardApplicationProxy$1;->val$obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 51
    :cond_0
    return-void
.end method
