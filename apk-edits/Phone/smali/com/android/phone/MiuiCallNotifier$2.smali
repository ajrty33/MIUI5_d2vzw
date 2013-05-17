.class Lcom/android/phone/MiuiCallNotifier$2;
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
    .line 786
    iput-object p1, p0, Lcom/android/phone/MiuiCallNotifier$2;->this$0:Lcom/android/phone/MiuiCallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier$2;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #calls: Lcom/android/phone/MiuiCallNotifier;->processTelephonyFirewall(Lcom/android/internal/telephony/CallerInfo;)Z
    invoke-static {v0, p3}, Lcom/android/phone/MiuiCallNotifier;->access$1100(Lcom/android/phone/MiuiCallNotifier;Lcom/android/internal/telephony/CallerInfo;)Z

    .line 790
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier$2;->this$0:Lcom/android/phone/MiuiCallNotifier;

    check-cast p2, Lcom/android/internal/telephony/Connection;

    .end local p2
    #calls: Lcom/android/phone/CallNotifier;->onNewCallWaitingConnection(Lcom/android/internal/telephony/Connection;)V
    invoke-static {v0, p2}, Lcom/android/phone/MiuiCallNotifier;->access$1201(Lcom/android/phone/MiuiCallNotifier;Lcom/android/internal/telephony/Connection;)V

    .line 791
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier$2;->this$0:Lcom/android/phone/MiuiCallNotifier;

    #calls: Lcom/android/phone/MiuiCallNotifier;->delayedVoiceReport(Lcom/android/internal/telephony/CallerInfo;)V
    invoke-static {v0, p3}, Lcom/android/phone/MiuiCallNotifier;->access$1300(Lcom/android/phone/MiuiCallNotifier;Lcom/android/internal/telephony/CallerInfo;)V

    .line 792
    return-void
.end method
