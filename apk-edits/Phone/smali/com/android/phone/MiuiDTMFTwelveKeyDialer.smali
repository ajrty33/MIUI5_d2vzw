.class public Lcom/android/phone/MiuiDTMFTwelveKeyDialer;
.super Lcom/android/phone/DTMFTwelveKeyDialer;
.source "MiuiDTMFTwelveKeyDialer.java"


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Landroid/view/ViewStub;)V
    .locals 0
    .parameter "parent"
    .parameter "dialerStub"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;Landroid/view/ViewStub;)V

    .line 10
    return-void
.end method


# virtual methods
.method public closeDialer(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->closeDialpadInternal(Z)V

    .line 17
    :cond_0
    return-void
.end method

.method public openDialer(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->openDialpadInternal(Z)V

    .line 24
    :cond_0
    return-void
.end method

.method protected processDtmf(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V

    .line 29
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/phone/MiuiExtraConnectionData;->onDigitPressed(Lcom/android/internal/telephony/Call;C)V

    .line 31
    iget-object v0, p0, Lcom/android/phone/MiuiDTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    check-cast v0, Lcom/android/phone/MiuiCallCard;

    invoke-virtual {v0}, Lcom/android/phone/MiuiCallCard;->updateForDigitPressed()V

    .line 33
    :cond_0
    return-void
.end method
