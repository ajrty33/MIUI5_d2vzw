.class public Lcom/android/phone/OtaUtils;
.super Ljava/lang/Object;
.source "OtaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OtaUtils$CdmaOtaScreenState;,
        Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;,
        Lcom/android/phone/OtaUtils$CdmaOtaConfigData;,
        Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;,
        Lcom/android/phone/OtaUtils$OtaWidgetData;
    }
.end annotation


# static fields
.field private static sIsWizardMode:Z

.field private static sOtaCallLteRetries:I


# instance fields
.field public final OTA_FAILURE_DIALOG_TIMEOUT:I

.field public final OTA_SPC_TIMEOUT:I

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mCallCard:Lcom/android/phone/CallCard;

.field private mContext:Landroid/content/Context;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInCallTouchUi:Landroid/view/ViewGroup;

.field private mInteractive:Z

.field private mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/OtaUtils;->sIsWizardMode:Z

    .line 163
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/OtaUtils;->sOtaCallLteRetries:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "interactive"

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/phone/OtaUtils;->OTA_SPC_TIMEOUT:I

    .line 81
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/OtaUtils;->OTA_FAILURE_DIALOG_TIMEOUT:I

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    .line 220
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    .line 221
    iput-object p1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    .line 222
    iput-boolean p2, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    .line 223
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/OtaUtils;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaSkipActivation()V

    return-void
.end method

.method private static getLteOnCdmaMode(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 1624
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1628
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1630
    :cond_0
    const-string v0, "telephony.lteOnCdmaDevice"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1633
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    goto :goto_0
.end method

.method private getOtaSpcDisplayTime()I
    .locals 7

    .prologue
    .line 1364
    const/4 v4, 0x1

    .line 1365
    .local v4, tmpSpcTime:I
    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-eqz v5, :cond_0

    .line 1366
    const-wide/16 v2, 0x0

    .line 1367
    .local v2, tmpOtaSpcRunningTime:J
    const-wide/16 v0, 0x0

    .line 1368
    .local v0, tmpOtaSpcLeftTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1369
    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-wide v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->otaSpcUptime:J

    sub-long v0, v2, v5

    .line 1371
    const-wide/32 v5, 0xea60

    cmp-long v5, v0, v5

    if-ltz v5, :cond_1

    .line 1372
    const/4 v4, 0x1

    .line 1378
    .end local v0           #tmpOtaSpcLeftTime:J
    .end local v2           #tmpOtaSpcRunningTime:J
    :cond_0
    :goto_0
    return v4

    .line 1374
    .restart local v0       #tmpOtaSpcLeftTime:J
    .restart local v2       #tmpOtaSpcRunningTime:J
    :cond_1
    long-to-int v5, v0

    div-int/lit16 v5, v5, 0x3e8

    rsub-int/lit8 v4, v5, 0x3c

    goto :goto_0
.end method

.method private initOtaInCallScreen()V
    .locals 3

    .prologue
    .line 1386
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800bf

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    .line 1387
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800c0

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    .line 1388
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1389
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800c1

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    .line 1391
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/high16 v2, 0x101

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    .line 1393
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1394
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800c2

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    .line 1397
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800be

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    .line 1399
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800c9

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    .line 1401
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    .line 1403
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800cb

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    .line 1406
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800ca

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaEndButton:Landroid/widget/Button;

    .line 1407
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaEndButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1408
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800c5

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    .line 1410
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1411
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800c7

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaActivateButton:Landroid/widget/Button;

    .line 1413
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaActivateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1414
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800c8

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    .line 1415
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1416
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800cc

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    .line 1417
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1418
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800cd

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    .line 1420
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1422
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800c3

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 1425
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-nez v0, :cond_0

    .line 1426
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initOtaInCallScreen: couldn\'t find otaDtmfDialerView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1432
    :cond_0
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialer;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {v0, v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 1437
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    .line 1439
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    .line 1440
    return-void
.end method

.method public static isOtaspCallIntent(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 491
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 492
    .local v1, app:Lcom/android/phone/PhoneApp;
    iget-object v6, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 494
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    if-nez p0, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v5

    .line 497
    :cond_1
    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 501
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 505
    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 510
    iget-object v6, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v6, :cond_3

    .line 514
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "isOtaspCallIntent: app.cdmaOta* objects(s) not initialized"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 522
    :cond_3
    :try_start_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 529
    .local v3, number:Ljava/lang/String;
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 531
    const/4 v5, 0x1

    goto :goto_0

    .line 523
    .end local v3           #number:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 527
    .local v2, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1637
    const-string v0, "OtaUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    return-void
.end method

.method public static maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z
    .locals 9
    .parameter "context"
    .parameter "handler"
    .parameter "request"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 288
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 289
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 291
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 292
    const-string v6, "OtaUtils"

    const-string v7, "Don\'t run provisioning when in test harness"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    :goto_0
    return v5

    .line 296
    :cond_1
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 302
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v7

    if-nez v7, :cond_2

    .line 304
    const/4 v5, 0x0

    invoke-interface {v3, p1, p2, v5}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    move v5, v6

    .line 305
    goto :goto_0

    .line 307
    :cond_2
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 309
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->getLteOnCdmaMode(Landroid/content/Context;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 310
    sget v7, Lcom/android/phone/OtaUtils;->sOtaCallLteRetries:I

    const/4 v8, 0x5

    if-ge v7, v8, :cond_3

    .line 312
    const-wide/16 v7, 0xbb8

    invoke-virtual {p1, p2, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 313
    sget v5, Lcom/android/phone/OtaUtils;->sOtaCallLteRetries:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/phone/OtaUtils;->sOtaCallLteRetries:I

    move v5, v6

    .line 314
    goto :goto_0

    .line 316
    :cond_3
    const-string v6, "OtaUtils"

    const-string v7, "maybeDoOtaCall: LTE state still unknown: giving up"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    :cond_4
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v4

    .line 324
    .local v4, phoneNeedsActivation:Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f0b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 330
    .local v2, otaShowActivationScreen:I
    sget-boolean v7, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-eqz v7, :cond_5

    invoke-static {p0}, Lcom/android/phone/OtaUtils;->getLteOnCdmaMode(Landroid/content/Context;)I

    move-result v7

    if-nez v7, :cond_5

    .line 331
    if-eqz v4, :cond_0

    if-ne v2, v5, :cond_0

    .line 333
    iget-object v7, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v6, v7, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 334
    sput-boolean v6, Lcom/android/phone/OtaUtils;->sIsWizardMode:Z

    .line 337
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->startInteractiveOtasp(Landroid/content/Context;)V

    goto :goto_0

    .line 344
    :cond_5
    if-eqz v4, :cond_0

    .line 345
    iget-object v7, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v6, v7, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 346
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.phone.PERFORM_VOICELESS_CDMA_PROVISIONING"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v1, newIntent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 348
    const-string v6, "com.android.phone.VOICELESS_PROVISIONING_OFFER_DONTSHOW"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onClickOtaActivateButton()V
    .locals 0

    .prologue
    .line 1304
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaPerformActivation()V

    .line 1305
    return-void
.end method

.method private onClickOtaActivateNextButton()V
    .locals 2

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1343
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowHome()V

    .line 1345
    :cond_0
    return-void
.end method

.method private onClickOtaActivateSkipButton()V
    .locals 5

    .prologue
    .line 1310
    new-instance v0, Lcom/android/phone/OtaUtils$2;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaUtils$2;-><init>(Lcom/android/phone/OtaUtils;)V

    .line 1317
    .local v0, keyListener:Landroid/content/DialogInterface$OnKeyListener;
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0185

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0186

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/phone/OtaUtils$3;

    invoke-direct {v4, p0}, Lcom/android/phone/OtaUtils$3;-><init>(Lcom/android/phone/OtaUtils;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipConfirmationDialog:Landroid/app/AlertDialog;

    .line 1335
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1336
    return-void
.end method

.method private onClickOtaEndButton()V
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1288
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->setSpeaker(Z)V

    .line 1289
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->handleOtaCallEnd()V

    .line 1292
    :cond_0
    return-void
.end method

.method private onClickOtaSpeakerButton()V
    .locals 2

    .prologue
    .line 1296
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1298
    .local v0, isChecked:Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->setSpeaker(Z)V

    .line 1300
    .end local v0           #isChecked:Z
    :cond_0
    return-void

    .line 1297
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onClickOtaTryAgainButton()V
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_0

    .line 1277
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    .line 1279
    :cond_0
    return-void
.end method

.method private otaPerformActivation()V
    .locals 4
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 733
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_1

    .line 735
    const-string v1, "OtaUtils"

    const-string v2, "otaPerformActivation: not interactive!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_0

    .line 741
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.phone"

    invoke-static {v1, v2, v3}, Lmiui/security/IntentScope;->processIntentScope(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 743
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "tel"

    const-string v2, "*228"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 746
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 749
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowListeningScreen()V

    .line 750
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_0
.end method

.method private otaScreenInitialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1114
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_0

    .line 1117
    const-string v0, "OtaUtils"

    const-string v1, "otaScreenInitialize: not interactive!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :goto_0
    return-void

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_2

    .line 1123
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, v2}, Lcom/android/phone/CallCard;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->hideCallCardElements()V

    .line 1128
    :cond_2
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    const v1, 0x7f0d0183

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1129
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1131
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1133
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1141
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private otaShowHome()V
    .locals 3

    .prologue
    .line 707
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 709
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 710
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 713
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 714
    return-void
.end method

.method private otaShowInProgressScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 911
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_1

    .line 913
    const-string v1, "OtaUtils"

    const-string v2, "otaShowInProgressScreen: not interactive!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 920
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v1, :cond_3

    .line 921
    :cond_2
    const-string v1, "OtaUtils"

    const-string v2, "otaShowInProgressScreen: UI widgets not set up yet!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 930
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 931
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 932
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 933
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    const v2, 0x7f0d018d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 934
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 935
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 936
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 937
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    .line 938
    .local v0, speakerOn:Z
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private otaShowListeningScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 788
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_0

    .line 790
    const-string v1, "OtaUtils"

    const-string v2, "otaShowListeningScreen: not interactive!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :goto_0
    return-void

    .line 794
    :cond_0
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowListeningScreen:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 797
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 798
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 799
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 800
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    const v2, 0x7f0d018b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 801
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v1, v3}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 802
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 803
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 804
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    .line 805
    .local v0, speakerOn:Z
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 807
    .end local v0           #speakerOn:Z
    :cond_1
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    goto :goto_0

    .line 811
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowInProgressScreen()V

    goto :goto_0
.end method

.method private otaShowProgramFailure(I)V
    .locals 2
    .parameter "length"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    .line 951
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivateFailTimes:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 958
    invoke-direct {p0, p1}, Lcom/android/phone/OtaUtils;->otaShowProgramFailureNotice(I)V

    .line 963
    :goto_0
    return-void

    .line 961
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowProgramFailureDialog()V

    goto :goto_0
.end method

.method private otaShowProgramFailureDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 997
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 999
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    const v1, 0x7f0d018a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1000
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1001
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    const v1, 0x7f0d0190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1002
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1005
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 1008
    :cond_0
    return-void
.end method

.method private otaShowProgramFailureNotice(I)V
    .locals 5
    .parameter "length"

    .prologue
    .line 1079
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 1080
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d018e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    .line 1083
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x90

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1086
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1088
    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v0, v2

    .line 1089
    .local v0, noticeTime:J
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v0, v1}, Lcom/android/phone/InCallScreen;->requestCloseOtaFailureNotice(J)V

    .line 1091
    .end local v0           #noticeTime:J
    :cond_0
    return-void
.end method

.method private otaShowProgramSuccessDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1015
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1017
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    const v1, 0x7f0d0189

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1018
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1019
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    const v1, 0x7f0d018f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1020
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1023
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 1026
    :cond_0
    return-void
.end method

.method private otaShowSpcErrorNotice(I)V
    .locals 6
    .parameter "length"

    .prologue
    .line 1036
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_1

    .line 1037
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 1039
    new-instance v0, Lcom/android/phone/OtaUtils$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaUtils$1;-><init>(Lcom/android/phone/OtaUtils;)V

    .line 1044
    .local v0, keyListener:Landroid/content/DialogInterface$OnKeyListener;
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d0191

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    .line 1048
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x90

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1051
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1053
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1054
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 1056
    :cond_0
    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v1, v3

    .line 1058
    .local v1, noticeTime:J
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v1, v2}, Lcom/android/phone/InCallScreen;->requestCloseSpcErrorNotice(J)V

    .line 1060
    .end local v0           #keyListener:Landroid/content/DialogInterface$OnKeyListener;
    .end local v1           #noticeTime:J
    :cond_1
    return-void
.end method

.method private otaSkipActivation()V
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->sendOtaspResult(I)V

    .line 722
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 723
    :cond_0
    return-void
.end method

.method private readXmlSettings()V
    .locals 6

    .prologue
    .line 1209
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget-boolean v4, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->configComplete:Z

    if-eqz v4, :cond_0

    .line 1237
    :goto_0
    return-void

    .line 1213
    :cond_0
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->configComplete:Z

    .line 1214
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1216
    .local v2, tmpOtaShowActivationScreen:I
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput v2, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    .line 1220
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1222
    .local v3, tmpOtaShowListeningScreen:I
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput v3, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowListeningScreen:I

    .line 1226
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1228
    .local v1, tmpOtaShowActivateFailTimes:I
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput v1, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivateFailTimes:I

    .line 1232
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1234
    .local v0, tmpOtaPlaySuccessFailureTone:I
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput v0, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    goto :goto_0
.end method

.method private sendOtaspResult(I)V
    .locals 5
    .parameter "resultCode"

    .prologue
    .line 876
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 877
    .local v1, extraStuff:Landroid/content/Intent;
    const-string v2, "otasp_result_code"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v2, :cond_0

    .line 883
    const-string v2, "OtaUtils"

    const-string v3, "updateNonInteractiveOtaSuccessFailure: no cdmaOtaScreenState object!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :goto_0
    return-void

    .line 886
    :cond_0
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    .line 887
    const-string v2, "OtaUtils"

    const-string v3, "updateNonInteractiveOtaSuccessFailure: null otaspResultCodePendingIntent!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 895
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 899
    :catch_0
    move-exception v0

    .line 901
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "OtaUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PendingIntent send() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSpeaker(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 615
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 619
    :cond_2
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public static setupOtaspCall(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 547
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 549
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_0

    .line 552
    const-string v1, "OtaUtils"

    const-string v2, "setupOtaspCall: OtaUtils already exists; replacing with new instance..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    new-instance v1, Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;Z)V

    iput-object v1, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    .line 573
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v1, v2}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 578
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    iput-object v2, v1, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 597
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_1

    .line 598
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 600
    :cond_1
    return-void
.end method

.method public static startInteractiveOtasp(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 367
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    .line 399
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.DISPLAY_ACTIVATION_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 406
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 411
    invoke-static {v0}, Lcom/android/phone/OtaUtils;->setupOtaspCall(Landroid/content/Intent;)V

    .line 414
    const-string v1, "OtaUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startInteractiveOtasp: launching InCallScreen in \'activate\' state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 417
    return-void
.end method

.method public static startNonInteractiveOtasp(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 432
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    .line 434
    .local v6, app:Lcom/android/phone/PhoneApp;
    iget-object v0, v6, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    .line 436
    const-string v0, "OtaUtils"

    const-string v5, "startNonInteractiveOtasp: OtaUtils already exists; nuking the old one and starting again..."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    new-instance v0, Lcom/android/phone/OtaUtils;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;Z)V

    iput-object v0, v6, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    .line 448
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 449
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const-string v2, "*22899"

    .line 450
    .local v2, number:Ljava/lang/String;
    const-string v0, "OtaUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startNonInteractiveOtasp: placing call to \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\'..."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v5, v3

    .line 451
    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    move-result v7

    .line 458
    .local v7, callStatus:I
    if-nez v7, :cond_1

    .line 477
    :goto_0
    return v7

    .line 461
    :cond_1
    const-string v0, "OtaUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure from placeCall() for OTA number \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNonInteractiveOtaSuccessFailure()V
    .locals 2

    .prologue
    .line 854
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 857
    .local v0, resultCode:I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->sendOtaspResult(I)V

    .line 858
    return-void

    .line 854
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private updateOtaspProgress()V
    .locals 1

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v0, :cond_0

    .line 825
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowInProgressScreen()V

    .line 838
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanOtaScreen(Z)V
    .locals 5
    .parameter "disableSpeaker"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1450
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1452
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v4, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 1453
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v4, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 1454
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v4, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 1455
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput v4, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    .line 1456
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->otaSpcUptime:J

    .line 1457
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    .line 1459
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    if-eqz v0, :cond_3

    .line 1460
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_1

    .line 1462
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, v4}, Lcom/android/phone/CallCard;->setVisibility(I)V

    .line 1463
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->hideCallCardElements()V

    .line 1468
    :cond_1
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_2

    .line 1469
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    .line 1472
    :cond_2
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1473
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1474
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1475
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1476
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1477
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1478
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1479
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1480
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 1481
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1482
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1487
    :cond_3
    if-eqz p1, :cond_4

    .line 1488
    invoke-direct {p0, v4}, Lcom/android/phone/OtaUtils;->setSpeaker(Z)V

    .line 1490
    :cond_4
    return-void
.end method

.method public clearUiWidgets()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 273
    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    .line 274
    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    .line 275
    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    .line 276
    return-void
.end method

.method public dismissAllOtaDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1348
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    if-eqz v0, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1352
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1356
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1357
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    .line 1360
    :cond_1
    return-void
.end method

.method public getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    return-object v0
.end method

.method public hideOtaScreen()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1147
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1150
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1151
    return-void
.end method

.method public isDialerOpened()Z
    .locals 2

    .prologue
    .line 1154
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1156
    .local v0, retval:Z
    :goto_0
    return v0

    .line 1154
    .end local v0           #retval:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClickHandler(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1243
    packed-switch p1, :pswitch_data_0

    .line 1272
    :goto_0
    :pswitch_0
    return-void

    .line 1245
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaEndButton()V

    goto :goto_0

    .line 1249
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaSpeakerButton()V

    goto :goto_0

    .line 1253
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaActivateButton()V

    goto :goto_0

    .line 1257
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaActivateSkipButton()V

    goto :goto_0

    .line 1261
    :pswitch_5
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaActivateNextButton()V

    goto :goto_0

    .line 1265
    :pswitch_6
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaTryAgainButton()V

    goto :goto_0

    .line 1243
    :pswitch_data_0
    .packed-switch 0x7f0800c5
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onOtaCloseFailureNotice()V
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1101
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    .line 1103
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    .line 1104
    return-void
.end method

.method public onOtaCloseSpcNotice()V
    .locals 3

    .prologue
    .line 1067
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v0, shutdown:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1069
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1070
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1071
    return-void
.end method

.method public onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 633
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 643
    .local v0, OtaStatus:[I
    const/4 v1, 0x0

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_0

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 646
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateOtaspProgress()V

    .line 647
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->otaSpcUptime:J

    .line 648
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v1, :cond_1

    .line 649
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/phone/OtaUtils;->otaShowSpcErrorNotice(I)V

    goto :goto_0

    .line 651
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/phone/OtaUtils;->sendOtaspResult(I)V

    goto :goto_0

    .line 660
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 661
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_0

    .line 663
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateOtaspProgress()V

    goto :goto_0

    .line 679
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v1

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v2, :cond_0

    .line 681
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateOtaspProgress()V

    goto :goto_0

    .line 643
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onOtaspDisconnect()V
    .locals 1

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_0

    .line 701
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateNonInteractiveOtaSuccessFailure()V

    .line 703
    :cond_0
    return-void
.end method

.method public otaShowActivateScreen()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 763
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 766
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 768
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v2, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    sget-boolean v0, Lcom/android/phone/OtaUtils;->sIsWizardMode:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 770
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 779
    :goto_1
    return-void

    .line 768
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 777
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowHome()V

    goto :goto_1
.end method

.method public otaShowProperScreen()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1171
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_1

    .line 1173
    const-string v0, "OtaUtils"

    const-string v1, "otaShowProperScreen: not interactive!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1181
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1183
    :cond_2
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_3

    .line 1184
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->setVisibility(I)V

    .line 1186
    :cond_3
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_5

    .line 1188
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    .line 1197
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-eqz v0, :cond_0

    .line 1198
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->getOtaSpcDisplayTime()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->otaShowSpcErrorNotice(I)V

    goto :goto_0

    .line 1189
    :cond_5
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_6

    .line 1191
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowListeningScreen()V

    goto :goto_1

    .line 1192
    :cond_6
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_4

    .line 1194
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowInProgressScreen()V

    goto :goto_1
.end method

.method public otaShowSuccessFailure()V
    .locals 2

    .prologue
    .line 972
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_0

    .line 974
    const-string v0, "OtaUtils"

    const-string v1, "otaShowSuccessFailure: not interactive!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :goto_0
    return-void

    .line 978
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 981
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    if-eqz v0, :cond_1

    .line 983
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowProgramSuccessDialog()V

    goto :goto_0

    .line 986
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->otaShowProgramFailure(I)V

    goto :goto_0
.end method

.method public setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iput-object p1, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    .line 1547
    return-void
.end method

.method public updateUiWidgets(Lcom/android/phone/InCallScreen;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;)V
    .locals 3
    .parameter "inCallScreen"
    .parameter "inCallTouchUi"
    .parameter "callCard"

    .prologue
    .line 240
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_0

    .line 241
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "updateUiWidgets() called in non-interactive mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_1

    .line 265
    :goto_0
    return-void

    .line 249
    :cond_1
    iput-object p1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 250
    iput-object p2, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    .line 251
    iput-object p3, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    .line 252
    new-instance v1, Lcom/android/phone/OtaUtils$OtaWidgetData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/OtaUtils$OtaWidgetData;-><init>(Lcom/android/phone/OtaUtils;Lcom/android/phone/OtaUtils$1;)V

    iput-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    .line 255
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f08008e

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 256
    .local v0, otaCallCardStub:Landroid/view/ViewStub;
    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 263
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->readXmlSettings()V

    .line 264
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->initOtaInCallScreen()V

    goto :goto_0
.end method
