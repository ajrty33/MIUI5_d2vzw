.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;


# instance fields
.field private mAddButton:Landroid/widget/ImageButton;

.field protected mApp:Lcom/android/phone/PhoneApp;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mAudioButton:Landroid/widget/CompoundButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mCdmaMergeButton:Landroid/view/ViewGroup;

.field private mDialpadButton:Landroid/widget/CompoundButton;

.field private mEndButton:Landroid/widget/ImageButton;

.field private mExtraButtonRow:Landroid/view/ViewStub;

.field protected mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mHoldButton:Landroid/widget/CompoundButton;

.field private mHoldSwapSpacer:Landroid/view/View;

.field protected mInCallControls:Landroid/view/View;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field protected mInCallScreen:Lcom/android/phone/InCallScreen;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field protected mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mIncomingCallWidgetIsFadingOut:Z

.field private mIncomingCallWidgetShouldBeReset:Z

.field private mLastIncomingCallActionTime:J

.field private mManageConferenceButton:Landroid/view/ViewGroup;

.field private mManageConferenceButtonImage:Landroid/widget/ImageButton;

.field private mMergeButton:Landroid/widget/ImageButton;

.field private mMuteButton:Landroid/widget/CompoundButton;

.field private mShowInCallControlsDuringHidingAnimation:Z

.field private mSwapButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 129
    new-instance v0, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 155
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallTouchUi;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/InCallTouchUi;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/phone/InCallTouchUi;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/phone/InCallTouchUi;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    return p1
.end method

.method private handleAudioButtonClick()V
    .locals 2

    .prologue
    .line 803
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 804
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_0

    .line 806
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 811
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    goto :goto_0
.end method

.method private hideIncomingCallWidget()V
    .locals 4
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getIncomingCallWidget()Landroid/view/View;

    move-result-object v1

    .line 1103
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z

    if-eqz v2, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    const-string v2, "hideIncomingCallWidget()"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1113
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z

    .line 1114
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1115
    .local v0, animator:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1116
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1117
    new-instance v2, Lcom/android/phone/InCallTouchUi$2;

    invoke-direct {v2, p0, v1}, Lcom/android/phone/InCallTouchUi$2;-><init>(Lcom/android/phone/InCallTouchUi;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1147
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1348
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return-void
.end method

.method private okToShowInCallControls()Z
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupExtraButtons()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f080077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    .line 641
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 642
    const-string v0, "InCallTouchUi"

    const-string v1, "CDMA Merge button is null even after ViewStub being inflated."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_0
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    .line 649
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    goto :goto_0
.end method


# virtual methods
.method public dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 878
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 879
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 881
    :cond_0
    return-void
.end method

.method protected getIncomingCallWidget()Landroid/view/View;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method public getTouchUiHeight()I
    .locals 3

    .prologue
    .line 968
    const/4 v0, 0x0

    .line 971
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 974
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 980
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 982
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 384
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 404
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :goto_0
    return-void

    .line 396
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 400
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->handleAudioButtonClick()V

    goto :goto_0

    .line 384
    :sswitch_data_0
    .sparse-switch
        0x7f080074 -> :sswitch_0
        0x7f080077 -> :sswitch_0
        0x7f080094 -> :sswitch_0
        0x7f080095 -> :sswitch_0
        0x7f080096 -> :sswitch_1
        0x7f080097 -> :sswitch_0
        0x7f080098 -> :sswitch_0
        0x7f080099 -> :sswitch_0
        0x7f08009b -> :sswitch_0
        0x7f08009c -> :sswitch_0
    .end sparse-switch
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 943
    return-void
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 1089
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 164
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 170
    const v1, 0x7f08009d

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 171
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 174
    const v1, 0x7f080090

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 178
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f08009b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    .line 179
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f08009c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    .line 182
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 184
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    .line 185
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080095

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    .line 187
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 189
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080097

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    .line 190
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 192
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080096

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    .line 193
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 195
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080098

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    .line 196
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080099

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    .line 199
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f08009a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    .line 218
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f080093

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    .line 221
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    .line 222
    .local v0, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 993
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1247
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 1253
    packed-switch p2, :pswitch_data_0

    .line 1260
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGrabbedStateChange: unexpected grabbedState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3, v3}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    .line 1271
    :cond_0
    return-void

    .line 1253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onIncomingRing()V
    .locals 0

    .prologue
    .line 1284
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 411
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 414
    .local v2, id:I
    packed-switch v2, :pswitch_data_0

    .line 435
    :pswitch_0
    const-string v4, "InCallTouchUi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLongClick() with unexpected View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Ignoring it."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :goto_0
    return v3

    .line 422
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 423
    .local v1, description:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 428
    .local v0, cheatSheet:Landroid/widget/Toast;
    const/16 v4, 0x51

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 430
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 432
    .end local v0           #cheatSheet:Landroid/widget/Toast;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x7f080095
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 908
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 909
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :goto_0
    return v3

    .line 913
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 927
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick:  unexpected View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (MenuItem = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 915
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 921
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 924
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 913
    :pswitch_data_0
    .packed-switch 0x7f0800f2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 998
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "whichHandle"

    .prologue
    const/4 v3, 0x0

    .line 1009
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 1010
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrigger("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from incoming-call widget, but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :goto_0
    return-void

    .line 1021
    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    .line 1022
    packed-switch p2, :pswitch_data_0

    .line 1072
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 1084
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3, v3}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    goto :goto_0

    .line 1025
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    .line 1031
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    goto :goto_1

    .line 1036
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1065
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1068
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    goto :goto_1

    .line 1022
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 897
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 899
    :cond_0
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 160
    return-void
.end method

.method protected setInCallWidgetResources(Z)V
    .locals 3
    .parameter "allowRespondViaSms"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 1152
    if-eqz p1, :cond_1

    const v0, 0x7f070006

    .line 1158
    .local v0, targetResourceId:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetResourceId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1159
    if-eqz p1, :cond_2

    .line 1162
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 1163
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 1165
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 1176
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    .line 1178
    :cond_0
    return-void

    .line 1152
    .end local v0           #targetResourceId:I
    :cond_1
    const v0, 0x7f070009

    goto :goto_0

    .line 1169
    .restart local v0       #targetResourceId:I
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 1170
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 1172
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    goto :goto_1
.end method

.method protected showAudioModePopup()V
    .locals 12
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 820
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-direct {v7, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 822
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v10, 0x7f100001

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 824
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 825
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 829
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 831
    .local v2, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 838
    .local v3, menu:Landroid/view/Menu;
    const v7, 0x7f0800f2

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 839
    .local v4, speakerItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 845
    const v7, 0x7f0800f3

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 846
    .local v1, earpieceItem:Landroid/view/MenuItem;
    const v7, 0x7f0800f4

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 847
    .local v6, wiredHeadsetItem:Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    .line 848
    .local v5, usingHeadset:Z
    if-nez v5, :cond_1

    move v7, v8

    :goto_0
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 849
    if-nez v5, :cond_0

    move v9, v8

    :cond_0
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 850
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 851
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 856
    const v7, 0x7f0800f5

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 857
    .local v0, bluetoothItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 861
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 866
    iput-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 867
    return-void

    .end local v0           #bluetoothItem:Landroid/view/MenuItem;
    :cond_1
    move v7, v9

    .line 848
    goto :goto_0
.end method

.method protected showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 6
    .parameter "ringingCall"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE_AND_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/16 v5, 0x65

    const/4 v4, 0x0

    .line 1190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showIncomingCallWidget(). widget visibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1192
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1193
    .local v1, animator:Landroid/view/ViewPropertyAnimator;
    if-eqz v1, :cond_0

    .line 1194
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1196
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setAlpha(F)V

    .line 1202
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2, p1}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 1204
    .local v0, allowRespondViaSms:Z
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->setInCallWidgetResources(Z)V

    .line 1205
    iget-boolean v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    if-eqz v2, :cond_1

    .line 1210
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 1211
    iput-boolean v4, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    .line 1214
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setVisibility(I)V

    .line 1226
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1227
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1234
    return-void
.end method

.method public triggerPing()V
    .locals 4

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1299
    const-string v0, "- triggerPing: InCallScreen no longer in foreground; ignoring..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1343
    :cond_0
    :goto_0
    return-void

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-nez v0, :cond_2

    .line 1306
    const-string v0, "InCallTouchUi"

    const-string v1, "- triggerPing: null mIncomingCallWidget!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1313
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 1340
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 14
    .parameter "inCallControlState"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/16 v11, 0xff

    const/4 v10, 0x0

    .line 707
    const/4 v8, 0x0

    .line 710
    .local v8, showToggleStateIndication:Z
    const/4 v5, 0x0

    .line 713
    .local v5, showMoreIndicator:Z
    const/4 v7, 0x0

    .line 714
    .local v7, showSpeakerOnIcon:Z
    const/4 v6, 0x0

    .line 715
    .local v6, showSpeakerOffIcon:Z
    const/4 v4, 0x0

    .line 716
    .local v4, showHandsetIcon:Z
    const/4 v3, 0x0

    .line 718
    .local v3, showBluetoothIcon:Z
    iget-boolean v12, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v12, :cond_2

    .line 721
    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v12, v9}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 728
    const/4 v5, 0x1

    .line 729
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v9, :cond_0

    .line 730
    const/4 v3, 0x1

    .line 770
    :goto_0
    const/4 v0, 0x0

    .line 771
    .local v0, HIDDEN:I
    const/16 v1, 0xff

    .line 773
    .local v1, VISIBLE:I
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 776
    .local v2, layers:Landroid/graphics/drawable/LayerDrawable;
    const v9, 0x7f0800eb

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v8, :cond_5

    move v9, v11

    :goto_1
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 779
    const v9, 0x7f0800ec

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v5, :cond_6

    move v9, v11

    :goto_2
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 782
    const v9, 0x7f0800ed

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v3, :cond_7

    move v9, v11

    :goto_3
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 785
    const v9, 0x7f0800ee

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v4, :cond_8

    move v9, v11

    :goto_4
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 788
    const v9, 0x7f0800ef

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v7, :cond_9

    move v9, v11

    :goto_5
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 791
    const v9, 0x7f0800f0

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v6, :cond_a

    :goto_6
    invoke-virtual {v9, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 793
    return-void

    .line 731
    .end local v0           #HIDDEN:I
    .end local v1           #VISIBLE:I
    .end local v2           #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v9, :cond_1

    .line 732
    const/4 v7, 0x1

    goto :goto_0

    .line 734
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 740
    :cond_2
    iget-boolean v12, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v12, :cond_4

    .line 743
    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v12, v9}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 747
    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-boolean v13, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v12, v13}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 750
    const/4 v8, 0x1

    .line 752
    iget-boolean v7, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 753
    iget-boolean v12, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-nez v12, :cond_3

    move v6, v9

    :goto_7
    goto :goto_0

    :cond_3
    move v6, v10

    goto :goto_7

    .line 759
    :cond_4
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 760
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 763
    const/4 v8, 0x1

    .line 764
    const/4 v6, 0x1

    goto/16 :goto_0

    .restart local v0       #HIDDEN:I
    .restart local v1       #VISIBLE:I
    .restart local v2       #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_5
    move v9, v10

    .line 776
    goto :goto_1

    :cond_6
    move v9, v10

    .line 779
    goto :goto_2

    :cond_7
    move v9, v10

    .line 782
    goto :goto_3

    :cond_8
    move v9, v10

    .line 785
    goto :goto_4

    :cond_9
    move v9, v10

    .line 788
    goto :goto_5

    :cond_a
    move v11, v10

    .line 791
    goto :goto_6
.end method

.method protected updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 9
    .parameter "cm"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 446
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 460
    .local v1, phoneType:I
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 471
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v4, :cond_6

    .line 472
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 473
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 474
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 501
    :goto_0
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v4, :cond_1

    .line 502
    if-eq v1, v3, :cond_0

    if-ne v1, v7, :cond_b

    .line 509
    :cond_0
    const-string v4, "InCallTouchUi"

    const-string v7, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 525
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 526
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 529
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 530
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 533
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 539
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v4, :cond_c

    .line 540
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 541
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 542
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 543
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 571
    :goto_1
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 572
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v4, :cond_2

    .line 578
    const-string v4, "InCallTouchUi"

    const-string v7, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_2
    if-ne v1, v8, :cond_3

    .line 582
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v4, :cond_3

    .line 588
    const-string v4, "InCallTouchUi"

    const-string v7, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_3
    if-ne v1, v8, :cond_f

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v4, :cond_f

    move v2, v3

    .line 606
    .local v2, showCdmaMerge:Z
    :goto_2
    if-nez v2, :cond_4

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v4, :cond_10

    .line 608
    .local v3, showExtraButtonRow:Z
    :cond_4
    :goto_3
    if-eqz v3, :cond_13

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v4, :cond_13

    .line 610
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 614
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    if-nez v4, :cond_5

    .line 615
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->setupExtraButtons()V

    .line 617
    :cond_5
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    if-eqz v2, :cond_11

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 618
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v4, :cond_12

    .line 619
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 620
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 632
    :goto_5
    return-void

    .line 475
    .end local v2           #showCdmaMerge:Z
    .end local v3           #showExtraButtonRow:Z
    :cond_6
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v4, :cond_a

    .line 476
    if-ne v1, v8, :cond_7

    .line 480
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 481
    :cond_7
    if-eq v1, v3, :cond_8

    if-ne v1, v7, :cond_9

    .line 483
    :cond_8
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 484
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 485
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 487
    :cond_9
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 497
    :cond_a
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 498
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 499
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 511
    :cond_b
    if-eq v1, v8, :cond_1

    .line 516
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 544
    :cond_c
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v4, :cond_d

    .line 545
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 546
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 547
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v6}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 559
    :cond_d
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v4, :cond_e

    .line 560
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 561
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 562
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 563
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 564
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 566
    :cond_e
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v6}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 567
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 568
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_f
    move v2, v5

    .line 604
    goto/16 :goto_2

    .restart local v2       #showCdmaMerge:Z
    :cond_10
    move v3, v5

    .line 606
    goto/16 :goto_3

    .restart local v3       #showExtraButtonRow:Z
    :cond_11
    move v4, v6

    .line 617
    goto/16 :goto_4

    .line 622
    :cond_12
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 625
    :cond_13
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    invoke-virtual {v4, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 12
    .parameter "cm"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 231
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v7, :cond_1

    .line 232
    const-string v7, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    .line 239
    .local v6, state:Lcom/android/internal/telephony/Phone$State;
    const/4 v5, 0x0

    .line 240
    .local v5, showIncomingCallControls:Z
    const/4 v4, 0x0

    .line 242
    .local v4, showInCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 243
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 250
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v7

    if-nez v7, :cond_5

    .line 258
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 260
    const/4 v5, 0x1

    .line 261
    iput-boolean v11, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    .line 273
    :cond_2
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    instance-of v7, v7, Lcom/android/phone/MiuiInCallScreen;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    check-cast v7, Lcom/android/phone/MiuiInCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/MiuiInCallScreen;->isRespondViaSmsDialogShowing()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 275
    const/4 v5, 0x0

    .line 296
    :cond_3
    :goto_1
    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 297
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 277
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 278
    .local v1, now:J
    iget-wide v7, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v9, 0x1f4

    add-long/2addr v7, v9

    cmp-long v7, v1, v7

    if-gez v7, :cond_3

    .line 279
    const-string v7, "updateState: Too soon after last action; not drawing!"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 280
    const/4 v5, 0x0

    goto :goto_1

    .line 285
    .end local v1           #now:J
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->okToShowInCallControls()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 286
    const/4 v4, 0x1

    goto :goto_1

    .line 300
    :cond_6
    iget-boolean v7, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    if-eqz v7, :cond_7

    .line 305
    const/4 v4, 0x1

    .line 311
    :cond_7
    if-eqz v4, :cond_9

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 314
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 320
    :goto_2
    if-eqz v5, :cond_a

    .line 322
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 331
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v7, v7, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v7, v11}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 349
    :goto_3
    sget-object v7, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_8

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v7, :cond_0

    .line 356
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->dismissAudioModePopup()V

    goto/16 :goto_0

    .line 317
    :cond_9
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 334
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 338
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v7, v7, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto :goto_3
.end method
