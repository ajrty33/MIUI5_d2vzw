.class final Lcom/android/phone/MiuiPhoneUtils$9;
.super Lcom/android/internal/telephony/Connection;
.source "MiuiPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiPhoneUtils;->logLastUnloggedCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$connectTime:J

.field final synthetic val$createTime:J

.field final synthetic val$incoming:Z

.field final synthetic val$logNumber:Ljava/lang/String;

.field final synthetic val$numberPresentation:I


# direct methods
.method constructor <init>(Ljava/lang/String;JZJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneUtils$9;->val$logNumber:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/phone/MiuiPhoneUtils$9;->val$createTime:J

    iput-boolean p4, p0, Lcom/android/phone/MiuiPhoneUtils$9;->val$incoming:Z

    iput-wide p5, p0, Lcom/android/phone/MiuiPhoneUtils$9;->val$connectTime:J

    iput p7, p0, Lcom/android/phone/MiuiPhoneUtils$9;->val$numberPresentation:I

    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 0

    .prologue
    .line 802
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneUtils$9;->val$logNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 760
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentActiveCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTime()J
    .locals 4

    .prologue
    .line 766
    iget-boolean v0, p0, Lcom/android/phone/MiuiPhoneUtils$9;->val$incoming:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/phone/MiuiPhoneUtils$9;->val$connectTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/phone/MiuiPhoneUtils$9;->val$createTime:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/phone/MiuiPhoneUtils$9;->val$connectTime:J

    goto :goto_0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 763
    iget-wide v0, p0, Lcom/android/phone/MiuiPhoneUtils$9;->val$createTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 4

    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/android/phone/MiuiPhoneUtils$9;->val$incoming:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/phone/MiuiPhoneUtils$9;->val$connectTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 769
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 772
    iget-wide v2, p0, Lcom/android/phone/MiuiPhoneUtils$9;->val$connectTime:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3e8

    goto :goto_0
.end method

.method public getHoldDurationMillis()J
    .locals 2

    .prologue
    .line 775
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcom/android/phone/MiuiPhoneUtils$9;->val$numberPresentation:I

    return v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 784
    return-void
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/android/phone/MiuiPhoneUtils$9;->val$incoming:Z

    return v0
.end method

.method public proceedAfterWaitChar()V
    .locals 0

    .prologue
    .line 796
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 799
    return-void
.end method

.method public separate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 787
    return-void
.end method
