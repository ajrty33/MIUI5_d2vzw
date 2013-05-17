.class public Lcom/android/phone/MiuiIccCardApplicationProxy;
.super Ljava/lang/Object;
.source "MiuiIccCardApplicationProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCdmaApplicationOnIcc(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "phone"

    .prologue
    .line 61
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGsmApplicationOnIcc(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "phone"

    .prologue
    .line 56
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPin2Locked(Landroid/os/AsyncResult;)Z
    .locals 8
    .parameter "ar"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    iget-object v1, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/IccCardStatus;

    .line 20
    .local v1, iccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    const/4 v0, 0x0

    .line 21
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-nez v1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v4

    .line 24
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 25
    .local v3, phoneType:I
    if-ne v3, v5, :cond_3

    .line 26
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v2

    .line 27
    .local v2, index:I
    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 28
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 39
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    iget-object v6, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v7, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v6, v7, :cond_0

    move v4, v5

    goto :goto_0

    .line 30
    .end local v2           #index:I
    :cond_3
    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    .line 31
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v2

    .line 32
    .restart local v2       #index:I
    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 33
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    goto :goto_1

    .line 36
    .end local v2           #index:I
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static registerIccCardStatusChange(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "phone"
    .parameter "handler"
    .parameter "event"
    .parameter "obj"

    .prologue
    .line 44
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MiuiIccCardApplicationProxy$1;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/phone/MiuiIccCardApplicationProxy$1;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    return-void
.end method
