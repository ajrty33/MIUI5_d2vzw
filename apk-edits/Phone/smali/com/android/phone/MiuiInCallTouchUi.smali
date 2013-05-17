.class public Lcom/android/phone/MiuiInCallTouchUi;
.super Lcom/android/phone/InCallTouchUi;
.source "MiuiInCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiInCallTouchUi$3;,
        Lcom/android/phone/MiuiInCallTouchUi$Handler;,
        Lcom/android/phone/MiuiInCallTouchUi$PanelState;,
        Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;
    }
.end annotation


# instance fields
.field private mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mAddButton:Landroid/widget/Button;

.field protected mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

.field private mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

.field private mAudioModeButton:Landroid/widget/ToggleButton;

.field private mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

.field private mAudioModePanel:Landroid/view/View;

.field private mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

.field private mCallRecordPrompt:Landroid/view/View;

.field private mCallRecordTimer:Landroid/widget/Chronometer;

.field private mContactButton:Landroid/widget/Button;

.field private mDampingInterpolator:Lmiui/animation/DampingInterpolator;

.field private mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

.field private mDialerButton:Landroid/widget/ToggleButton;

.field private mEndButton:Landroid/widget/Button;

.field private mHoldButton:Landroid/widget/ToggleButton;

.field private mInCallControlsMask:Landroid/view/View;

.field protected mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

.field private mIsAutoHideAudioModePanel:Z

.field private mLastClickTime:J

.field mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

.field private mMainButtonsBackground:Landroid/graphics/drawable/Drawable;

.field private mMergeButton:Landroid/widget/Button;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mNoteButton:Landroid/widget/Button;

.field private mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mStartRecordButton:Landroid/widget/ToggleButton;

.field private mStopRecordButton:Landroid/view/View;

.field private mSwapButton:Landroid/widget/Button;

.field private mToolsButton:Landroid/widget/ToggleButton;

.field private mToolsPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallTouchUi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lmiui/animation/DampingInterpolator;

    const/high16 v1, 0x4120

    invoke-direct {v0, v1}, Lmiui/animation/DampingInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    .line 61
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 63
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Vertical:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastClickTime:J

    .line 769
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 142
    new-instance v0, Lcom/android/phone/MiuiInCallTouchUi$Handler;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiInCallTouchUi$Handler;-><init>(Lcom/android/phone/MiuiInCallTouchUi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIsAutoHideAudioModePanel:Z

    .line 144
    sget-object v0, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 145
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiInCallTouchUi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallTouchUi;->onCoolDownFinished()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiInCallTouchUi;)Lcom/android/phone/MiuiInCallTouchUi$PanelState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMainButtonsBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private onCoolDownFinished()V
    .locals 2

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 926
    :cond_0
    return-void
.end method

.method private resetStartCallRecordButtonCheckState()V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 766
    :cond_0
    return-void
.end method

.method private setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V
    .locals 13
    .parameter

    .prologue
    const v12, 0x3c03126f

    const-wide/16 v10, 0xc8

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 778
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v0, :cond_0

    .line 919
    :goto_0
    return-void

    .line 782
    :cond_0
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v2, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v2, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq v0, v2, :cond_1

    .line 783
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 784
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    goto :goto_0

    .line 788
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 789
    iput-object p1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 790
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v0, :cond_3

    .line 791
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 794
    :cond_3
    const/4 v0, 0x0

    .line 795
    sget-object v3, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq p1, v3, :cond_4

    sget-object v3, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 798
    :cond_4
    sget-object v3, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v3, :cond_5

    sget-object v3, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq v3, v4, :cond_5

    move v0, v1

    .line 802
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 804
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v4, :cond_9

    .line 805
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 806
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->getDialerView()Lcom/android/phone/DTMFTwelveKeyDialerView;

    move-result-object v4

    invoke-static {v4, v9, v8, v12}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    .line 810
    if-eqz v0, :cond_8

    .line 811
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 815
    :goto_1
    invoke-virtual {v4}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v4, v4, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerClose(Z)V

    .line 817
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 844
    :cond_6
    :goto_2
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v4, :cond_e

    .line 845
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 846
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, v2, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->getDialerView()Lcom/android/phone/DTMFTwelveKeyDialerView;

    move-result-object v2

    invoke-static {v2, v9, v12, v8}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v2

    .line 848
    if-eqz v0, :cond_d

    .line 849
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 853
    :goto_3
    invoke-virtual {v2}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerOpen(Z)V

    .line 855
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v1, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 879
    :cond_7
    :goto_4
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 880
    new-instance v0, Lcom/android/phone/MiuiInCallTouchUi$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiInCallTouchUi$2;-><init>(Lcom/android/phone/MiuiInCallTouchUi;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 906
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v1, :cond_12

    .line 907
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMainButtonsBackground:Landroid/graphics/drawable/Drawable;

    const-string v1, "alpha"

    new-array v4, v9, [I

    fill-array-data v4, :array_0

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 909
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 910
    invoke-virtual {v1, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 911
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 915
    :goto_5
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 918
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    goto/16 :goto_0

    .line 813
    :cond_8
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto/16 :goto_1

    .line 818
    :cond_9
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v4, :cond_b

    .line 819
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 820
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;

    invoke-static {v4, v9, v8, v12}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    .line 824
    if-eqz v0, :cond_a

    .line 825
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 829
    :goto_6
    invoke-virtual {v4}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 827
    :cond_a
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_6

    .line 830
    :cond_b
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v2, v4, :cond_6

    .line 831
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 832
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;

    invoke-static {v4, v9, v8, v12}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    .line 836
    if-eqz v0, :cond_c

    .line 837
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 841
    :goto_7
    invoke-virtual {v4}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 839
    :cond_c
    iget-object v5, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v4, v5}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_7

    .line 851
    :cond_d
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v2, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto/16 :goto_3

    .line 856
    :cond_e
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v4, :cond_10

    .line 857
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 858
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;

    invoke-static {v2, v9, v12, v8}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v2

    .line 860
    if-eqz v0, :cond_f

    .line 861
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 865
    :goto_8
    invoke-virtual {v2}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 863
    :cond_f
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v2, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_8

    .line 866
    :cond_10
    sget-object v4, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne p1, v4, :cond_7

    .line 867
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 868
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;

    invoke-static {v4, v9, v12, v8}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v4

    .line 870
    if-eqz v0, :cond_11

    .line 871
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    const-wide/16 v5, 0x64

    invoke-virtual {v0, v5, v6}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    .line 875
    :goto_9
    invoke-virtual {v4}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    iput-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    goto/16 :goto_4

    .line 873
    :cond_11
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v4, v0}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    goto :goto_9

    .line 913
    :cond_12
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    goto/16 :goto_5

    .line 907
    nop

    :array_0
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0xe6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private showAudioModePopup(I)V
    .locals 4
    .parameter "delay"

    .prologue
    const/16 v3, 0x3e8

    .line 611
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePanel(Z)V

    .line 613
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 614
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 615
    return-void
.end method


# virtual methods
.method public dismissAudioModePopup()V
    .locals 0

    .prologue
    .line 608
    return-void
.end method

.method protected getIncomingCallWidget()Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 619
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "button_answer_widget"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Vertical:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    :goto_0
    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    .line 623
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    sget-object v2, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Vertical:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    if-nez v1, :cond_1

    .line 624
    const v1, 0x7f08009f

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 625
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 626
    const v1, 0x7f08007f

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MiuiInCallAnswerWidget;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    .line 627
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    invoke-virtual {v1, p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 628
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    const v2, 0x7f08008b

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/MiuiInCallAnswerWidget;->setSlidingTarget(Landroid/view/View;)V

    .line 629
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    .line 651
    .end local v0           #stub:Landroid/view/ViewStub;
    :goto_1
    return-object v1

    .line 619
    :cond_0
    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Horizontal:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    goto :goto_0

    .line 630
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    sget-object v2, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Horizontal:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-nez v1, :cond_2

    .line 631
    const v1, 0x7f08009e

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 632
    .restart local v0       #stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 633
    const v1, 0x7f08007e

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/MiuiInCallAnswerWidgetHorizontal;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 634
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 635
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTranslationY(F)V

    .line 636
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    goto :goto_1

    .line 639
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_2
    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$3;->$SwitchMap$com$android$phone$MiuiInCallTouchUi$AnswerWidgetType:[I

    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAnswerWidgetType:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    invoke-virtual {v2}, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 651
    const/4 v1, 0x0

    goto :goto_1

    .line 641
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-eqz v1, :cond_3

    .line 642
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setVisibility(I)V

    .line 644
    :cond_3
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    goto :goto_1

    .line 646
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    if-eqz v1, :cond_4

    .line 647
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    invoke-virtual {v1, v4}, Lcom/android/phone/MiuiInCallAnswerWidget;->setVisibility(I)V

    .line 649
    :cond_4
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    goto :goto_1

    .line 639
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isAudioModePanelOpened()Z
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialerPanelOpened()Z
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStartCallRecordingRequestPending()Z
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToolsPanelOpened()Z
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 284
    instance-of v4, p1, Landroid/widget/CompoundButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    if-eq p1, v4, :cond_0

    move-object v4, p1

    .line 286
    check-cast v4, Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->toggle()V

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 290
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 291
    .local v2, now:J
    iget-wide v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastClickTime:J

    cmp-long v4, v2, v7

    if-ltz v4, :cond_1

    iget-wide v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastClickTime:J

    sub-long v7, v2, v7

    const-wide/16 v9, 0x12c

    cmp-long v4, v7, v9

    if-gtz v4, :cond_1

    .line 343
    :goto_0
    return-void

    .line 294
    :cond_1
    iput-wide v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastClickTime:J

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 297
    .local v1, id:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 341
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/phone/InCallTouchUi;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 303
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 307
    :pswitch_2
    sget-object v4, Lcom/android/phone/MiuiConstants$AudioMode;->Bluetooth:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 308
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 311
    :pswitch_3
    sget-object v4, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 312
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 315
    :pswitch_4
    sget-object v4, Lcom/android/phone/MiuiConstants$AudioMode;->Speaker:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 316
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 320
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isAudioModePanelOpened()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePanel(Z)V

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_2

    .line 323
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isToolsPanelOpened()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiInCallTouchUi;->showToolsPanel(Z)V

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_3

    .line 326
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isDialerPanelOpened()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_4
    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiInCallTouchUi;->showDialerPanel(Z)V

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_4

    .line 330
    :pswitch_8
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentActiveCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 331
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 332
    invoke-static {v0}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/MiuiConstants$CdmaCallState;->Holding:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v4, v5, :cond_6

    .line 333
    sget-object v4, Lcom/android/phone/MiuiConstants$CdmaCallState;->AuthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    invoke-static {v0, v4}, Lcom/android/phone/MiuiExtraConnectionData;->setCdmaCallState(Lcom/android/internal/telephony/Call;Lcom/android/phone/MiuiConstants$CdmaCallState;)V

    goto :goto_1

    .line 336
    :cond_6
    sget-object v4, Lcom/android/phone/MiuiConstants$CdmaCallState;->Holding:Lcom/android/phone/MiuiConstants$CdmaCallState;

    invoke-static {v0, v4}, Lcom/android/phone/MiuiExtraConnectionData;->setCdmaCallState(Lcom/android/internal/telephony/Call;Lcom/android/phone/MiuiConstants$CdmaCallState;)V

    goto :goto_1

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x7f080098
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    const v1, 0x7f080090

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 162
    const v1, 0x7f0800b1

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    .line 163
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    new-instance v2, Lcom/android/phone/MiuiInCallTouchUi$1;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiInCallTouchUi$1;-><init>(Lcom/android/phone/MiuiInCallTouchUi;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    const v1, 0x7f0800ac

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMainButtonsBackground:Landroid/graphics/drawable/Drawable;

    .line 171
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMainButtonsBackground:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xe6

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 175
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f08009b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    .line 176
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f08009c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    .line 178
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    .line 180
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0800a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    .line 182
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080097

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    .line 184
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0800ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 186
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0800ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    .line 188
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0800af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    .line 190
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0800b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    .line 192
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0800a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordPrompt:Landroid/view/View;

    .line 196
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0800a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    .line 197
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    .line 199
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0800a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mNoteButton:Landroid/widget/Button;

    .line 203
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mNoteButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080098

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    .line 207
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080099

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    .line 211
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    .line 214
    .local v0, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mNoteButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallRecording(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 225
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 226
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0800a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    .line 231
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0800a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    .line 232
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0800aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    .line 234
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0800ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    .line 236
    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    const v1, 0x7f0800a0

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;

    .line 241
    const v1, 0x7f0800a8

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;

    .line 242
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method onStartCallRecord()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 738
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 740
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 742
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 743
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallStreamRecording(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordPrompt:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 746
    :cond_0
    return-void
.end method

.method onStopCallRecord()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 749
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 750
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 753
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mCallRecordPrompt:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 754
    return-void
.end method

.method resetPanelState()V
    .locals 1

    .prologue
    .line 772
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 773
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 774
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallTouchUi;->resetStartCallRecordButtonCheckState()V

    .line 775
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/android/phone/InCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 151
    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getIncomingCallWidget()Landroid/view/View;

    .line 154
    :cond_0
    return-void
.end method

.method protected setInCallWidgetResources(Z)V
    .locals 2
    .parameter "allowRespondViaSms"

    .prologue
    .line 656
    if-eqz p1, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 660
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v1, 0x7f070027

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 662
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v1, 0x7f070028

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 672
    :goto_0
    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v1, 0x7f070029

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 667
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 669
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v1, 0x7f07002b

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    goto :goto_0
.end method

.method public showAudioModePanel(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 714
    if-eqz p1, :cond_1

    .line 715
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isAudioModePanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    goto :goto_0
.end method

.method protected showAudioModePopup()V
    .locals 1

    .prologue
    .line 598
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup(I)V

    .line 599
    return-void
.end method

.method public showDialerPanel(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 702
    if-eqz p1, :cond_1

    .line 703
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isDialerPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    goto :goto_0
.end method

.method protected showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "ringingCall"

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getIncomingCallWidget()Landroid/view/View;

    move-result-object v1

    .line 677
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    if-ne v1, v2, :cond_1

    .line 678
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 679
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 681
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 683
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidgetVertical:Lcom/android/phone/MiuiInCallAnswerWidget;

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, v3}, Lcom/android/phone/MiuiInCallAnswerWidget;->reset(Lcom/android/internal/telephony/CallManager;)V

    .line 688
    .end local v0           #anim:Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 685
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 686
    invoke-super {p0, p1}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method public showToolsPanel(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 726
    if-eqz p1, :cond_1

    .line 727
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isToolsPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    goto :goto_0
.end method

.method public triggerPing()V
    .locals 2

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getIncomingCallWidget()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-ne v0, v1, :cond_0

    .line 693
    invoke-super {p0}, Lcom/android/phone/InCallTouchUi;->triggerPing()V

    .line 695
    :cond_0
    return-void
.end method

.method protected updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 7
    .parameter "inCallControlState"

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 544
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v5, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 545
    iget-boolean v4, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-nez v4, :cond_1

    .line 546
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 547
    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePanel(Z)V

    .line 548
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 549
    iget-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v3, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 552
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 553
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 554
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isAudioModePanelOpened()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 556
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 557
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0306

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 559
    .local v0, buttonText:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    const v5, 0x7f020057

    invoke-virtual {v4, v5, v3, v3, v3}, Landroid/widget/ToggleButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 572
    :goto_1
    const/4 v1, 0x0

    .line 573
    .local v1, switchAudioModeFinished:Z
    iget-boolean v4, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v4, :cond_4

    .line 574
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 575
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 576
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 577
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    sget-object v5, Lcom/android/phone/MiuiConstants$AudioMode;->Bluetooth:Lcom/android/phone/MiuiConstants$AudioMode;

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 589
    :goto_2
    if-eqz v1, :cond_0

    .line 590
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup(I)V

    .line 591
    sget-object v2, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    iput-object v2, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    goto :goto_0

    .line 564
    .end local v0           #buttonText:Ljava/lang/CharSequence;
    .end local v1           #switchAudioModeFinished:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0305

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 566
    .restart local v0       #buttonText:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    const v5, 0x7f020054

    invoke-virtual {v4, v5, v3, v3, v3}, Landroid/widget/ToggleButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_1

    .restart local v1       #switchAudioModeFinished:Z
    :cond_3
    move v1, v3

    .line 577
    goto :goto_2

    .line 578
    :cond_4
    iget-boolean v4, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v4, :cond_6

    .line 579
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 580
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 581
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 582
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    sget-object v5, Lcom/android/phone/MiuiConstants$AudioMode;->Speaker:Lcom/android/phone/MiuiConstants$AudioMode;

    if-ne v4, v5, :cond_5

    move v1, v2

    :goto_3
    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    .line 584
    :cond_6
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 585
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeEarpieceButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 586
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 587
    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDesiredAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    sget-object v5, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    if-ne v4, v5, :cond_7

    move v1, v2

    :goto_4
    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_4
.end method

.method protected updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 12
    .parameter "cm"

    .prologue
    const/4 v11, 0x2

    const/16 v8, 0x8

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 352
    const/4 v3, 0x0

    .line 354
    .local v3, curCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 355
    .local v1, activeFgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 356
    .local v0, activeBgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v9, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v9, :cond_9

    .line 359
    move-object v3, v1

    .line 369
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 383
    .local v5, phoneType:I
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v4

    check-cast v4, Lcom/android/phone/MiuiInCallControlState;

    .line 389
    .local v4, inCallControlState:Lcom/android/phone/MiuiInCallControlState;
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    if-eqz v6, :cond_b

    .line 390
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 391
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 392
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 409
    :goto_1
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canAddCall:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    if-eqz v6, :cond_1

    .line 410
    if-eq v5, v10, :cond_0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    .line 417
    :cond_0
    const-string v6, "MiuiInCallTouchUi"

    const-string v9, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_1
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    iget-boolean v9, v4, Lcom/android/phone/MiuiInCallControlState;->canEndCall:Z

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 432
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 435
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 436
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isDialerPanelOpened()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 439
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 440
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallTouchUi;->isToolsPanelOpened()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 443
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiInCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 446
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v6}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallRecording(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 447
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    check-cast v6, Lcom/android/phone/MiuiInCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/MiuiInCallScreen;->isCallRecording()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 448
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 449
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 458
    :cond_2
    :goto_2
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canMute:Z

    if-eqz v6, :cond_f

    .line 459
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 460
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v9, v4, Lcom/android/phone/MiuiInCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v6, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 472
    :goto_3
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canHold:Z

    if-eqz v6, :cond_10

    .line 473
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 474
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    iget-boolean v9, v4, Lcom/android/phone/MiuiInCallControlState;->onHold:Z

    invoke-virtual {v6, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 475
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 484
    :goto_4
    iget-object v9, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    if-eqz v6, :cond_11

    move v6, v7

    :goto_5
    invoke-virtual {v9, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 488
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_3

    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 491
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 492
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 495
    :cond_3
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    if-eqz v6, :cond_4

    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canHold:Z

    if-eqz v6, :cond_4

    .line 501
    const-string v6, "MiuiInCallTouchUi"

    const-string v9, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_4
    if-ne v5, v11, :cond_5

    .line 505
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canSwap:Z

    if-eqz v6, :cond_5

    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    if-eqz v6, :cond_5

    .line 511
    const-string v6, "MiuiInCallTouchUi"

    const-string v9, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 517
    .local v2, callState:Lcom/android/internal/telephony/Call$State;
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_12

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v6, :cond_6

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v6, :cond_12

    .line 519
    :cond_6
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 520
    sget-object v6, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    iput-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mLastPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 521
    sget-object v6, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-direct {p0, v6}, Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V

    .line 522
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 527
    :goto_6
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->bluetoothEnabled:Z

    if-eqz v6, :cond_13

    iget-boolean v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIsAutoHideAudioModePanel:Z

    if-eqz v6, :cond_13

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v8, :cond_13

    .line 530
    iput-boolean v7, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIsAutoHideAudioModePanel:Z

    .line 531
    const/16 v6, 0x1388

    invoke-direct {p0, v6}, Lcom/android/phone/MiuiInCallTouchUi;->showAudioModePopup(I)V

    .line 536
    :cond_7
    :goto_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_8

    .line 538
    iput-boolean v10, p0, Lcom/android/phone/MiuiInCallTouchUi;->mIsAutoHideAudioModePanel:Z

    .line 540
    :cond_8
    return-void

    .line 360
    .end local v2           #callState:Lcom/android/internal/telephony/Call$State;
    .end local v4           #inCallControlState:Lcom/android/phone/MiuiInCallControlState;
    .end local v5           #phoneType:I
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v9, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v9, :cond_a

    .line 363
    move-object v3, v0

    goto/16 :goto_0

    .line 366
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto/16 :goto_0

    .line 393
    .restart local v4       #inCallControlState:Lcom/android/phone/MiuiInCallControlState;
    .restart local v5       #phoneType:I
    :cond_b
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->canMerge:Z

    if-eqz v6, :cond_c

    .line 394
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 395
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 396
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 405
    :cond_c
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 406
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 407
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 419
    :cond_d
    if-eq v5, v11, :cond_1

    .line 424
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 451
    :cond_e
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 452
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStartRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 453
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 462
    :cond_f
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 463
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_3

    .line 477
    :cond_10
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 478
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_4

    :cond_11
    move v6, v8

    .line 484
    goto/16 :goto_5

    .line 524
    .restart local v2       #callState:Lcom/android/internal/telephony/Call$State;
    :cond_12
    iget-object v6, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 532
    :cond_13
    iget-boolean v6, v4, Lcom/android/phone/MiuiInCallControlState;->popupToolsPanel:Z

    if-eqz v6, :cond_7

    .line 533
    invoke-virtual {p0, v10}, Lcom/android/phone/MiuiInCallTouchUi;->showToolsPanel(Z)V

    goto/16 :goto_7
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 10
    .parameter "cm"

    .prologue
    const/16 v9, 0x3e9

    const/4 v8, 0x2

    const v7, 0x3b03126f

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 246
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 247
    .local v1, oldVisiblity:I
    invoke-super {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 248
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_0

    .line 249
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    :cond_0
    if-ne v1, v6, :cond_2

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 254
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-static {v3, v8, v7, v5}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v3, v4}, Lmiui/animation/ViewPropertyAnimator$Builder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setDuration(J)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/animation/ViewPropertyAnimator$Builder;->start()Landroid/animation/Animator;

    .line 280
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 261
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-static {v3}, Lmiui/animation/ViewPropertyAnimator;->getAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    if-nez v3, :cond_1

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-static {v3, v8, v5, v7}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/animation/ViewPropertyAnimator$Builder;->animator()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 269
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    invoke-static {v3, v8, v5, v7}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalVisibility(I)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/animation/ViewPropertyAnimator$Builder;->animator()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 275
    .local v2, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 276
    invoke-static {v2}, Lmiui/animation/AnimatorBuilder;->of(Landroid/animation/Animator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MiuiInCallTouchUi;->mDampingInterpolator:Lmiui/animation/DampingInterpolator;

    invoke-virtual {v3, v4}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/animation/AnimatorBuilder;->start()Landroid/animation/Animator;

    .line 277
    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi;->mEndButton:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
