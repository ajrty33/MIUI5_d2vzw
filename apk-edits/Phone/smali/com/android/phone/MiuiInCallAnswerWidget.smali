.class public Lcom/android/phone/MiuiInCallAnswerWidget;
.super Landroid/widget/FrameLayout;
.source "MiuiInCallAnswerWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiInCallAnswerWidget$2;,
        Lcom/android/phone/MiuiInCallAnswerWidget$State;
    }
.end annotation


# instance fields
.field private final SLIDING_PANEL_HEIGHT:I

.field private final SLIDING_PANEL_INITIAL_HEIGHT:I

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnswerButton:Landroid/widget/Button;

.field private mGestureDetector:Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;

.field private mGrabbedState:I

.field private mIgnoreButton:Landroid/widget/Button;

.field private mIncomingCallWidgetInCall:Landroid/view/View;

.field private mIncomingCallWidgetMain:Landroid/view/View;

.field private mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

.field private mRejectButton:Landroid/widget/Button;

.field private mRejectButtons:Landroid/view/View;

.field private mRejectWithSmsButton:Landroid/widget/Button;

.field private mSlidingBar:Landroid/view/View;

.field private mSlidingDownTargetView:Landroid/view/View;

.field private mSlidingGreenBar:Landroid/widget/ImageView;

.field private mSlidingGreenBarLight:Landroid/widget/ImageView;

.field private mSlidingHintAnim:Landroid/widget/ImageView;

.field private mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTrackingPointerId:I

.field private mTranslationDownTarget:I

.field private mTranslationUpTarget:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGrabbedState:I

    .line 86
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTrackingPointerId:I

    .line 91
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTempRect:Landroid/graphics/Rect;

    .line 99
    sget-object v2, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Init:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    iput-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    .line 111
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 112
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0c0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 114
    .local v0, bottomMargin:I
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->SLIDING_PANEL_HEIGHT:I

    .line 116
    iget v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->SLIDING_PANEL_HEIGHT:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->SLIDING_PANEL_INITIAL_HEIGHT:I

    .line 121
    iget v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->SLIDING_PANEL_INITIAL_HEIGHT:I

    iget v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->SLIDING_PANEL_HEIGHT:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    .line 122
    iget v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->SLIDING_PANEL_INITIAL_HEIGHT:I

    iput v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationDownTarget:I

    .line 124
    new-instance v2, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;-><init>(Landroid/content/Context;Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;)V

    iput-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGestureDetector:Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiInCallAnswerWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/MiuiInCallAnswerWidget;Lcom/android/phone/MiuiInCallAnswerWidget$State;)Lcom/android/phone/MiuiInCallAnswerWidget$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiInCallAnswerWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiInCallAnswerWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectButtons:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiInCallAnswerWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiInCallAnswerWidget;->setGrabbedState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiInCallAnswerWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiInCallAnswerWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBarLight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/MiuiInCallAnswerWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationDownTarget:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/MiuiInCallAnswerWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiInCallAnswerWidget;->dispatchTriggerEvent(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/MiuiInCallAnswerWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingDownTargetView:Landroid/view/View;

    return-object v0
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "InCallAnswerWidget"

    const-string v1, "dispatchTriggerEvent: calling onTrigger() of listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 301
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->setVisibility(I)V

    .line 302
    return-void
.end method

.method private hitDownThreshold()Z
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationDownTarget:I

    add-int/lit8 v1, v1, -0x28

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hitUpThreshold()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    sget-object v3, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Up:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->getTranslationY()F

    move-result v2

    iget v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    add-int/lit8 v3, v3, 0x78

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->getTranslationY()F

    move-result v2

    iget v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    add-int/lit8 v3, v3, 0x28

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private movePanel(F)V
    .locals 4
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x4

    .line 246
    move v0, p1

    .line 247
    .local v0, translationY:F
    sget-object v1, Lcom/android/phone/MiuiInCallAnswerWidget$2;->$SwitchMap$com$android$phone$MiuiInCallAnswerWidget$State:[I

    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    invoke-virtual {v2}, Lcom/android/phone/MiuiInCallAnswerWidget$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 256
    :goto_0
    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationDownTarget:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 257
    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 258
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->setTranslationY(F)V

    .line 261
    const/high16 v1, 0x4040

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingDownTargetView:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 269
    :cond_0
    :goto_1
    return-void

    .line 249
    :pswitch_0
    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    int-to-float v1, v1

    add-float v0, v1, p1

    .line 250
    goto :goto_0

    .line 252
    :pswitch_1
    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationDownTarget:I

    int-to-float v1, v1

    add-float v0, v1, p1

    goto :goto_0

    .line 263
    :cond_1
    const/high16 v1, -0x3fc0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingDownTargetView:Landroid/view/View;

    invoke-static {v1, v3}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 265
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 266
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 267
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectButtons:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    goto :goto_1

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 309
    iget v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 311
    iget v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGrabbedState:I

    if-nez v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    .line 319
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGrabbedState:I

    .line 321
    :cond_1
    return-void

    .line 313
    :cond_2
    if-nez p1, :cond_3

    .line 314
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    goto :goto_0

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private startAnimation(FF)V
    .locals 5
    .parameter "translationY"
    .parameter "velocity"

    .prologue
    .line 324
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTrackingPointerId:I

    .line 325
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->getTranslationY()F

    move-result v3

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 326
    .local v0, distance:F
    const/high16 v3, 0x44fa

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 327
    const/high16 v3, 0x447a

    mul-float/2addr v3, v0

    div-float/2addr v3, p2

    float-to-long v1, v3

    .line 328
    .local v1, duration:J
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 329
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 330
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 331
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mVibrator:Landroid/os/Vibrator;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCancel(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "eDown"
    .parameter "eUp"

    .prologue
    const/4 v1, 0x0

    .line 485
    iget v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTrackingPointerId:I

    if-ltz v0, :cond_1

    .line 487
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->hitUpThreshold()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    int-to-float v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MiuiInCallAnswerWidget;->startAnimation(FF)V

    .line 492
    :goto_0
    const/4 v0, 0x1

    .line 494
    :goto_1
    return v0

    .line 490
    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/android/phone/MiuiInCallAnswerWidget;->startAnimation(FF)V

    goto :goto_0

    .line 494
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 499
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 511
    :goto_0
    return-void

    .line 501
    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->dispatchTriggerEvent(I)V

    goto :goto_0

    .line 505
    :sswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->dispatchTriggerEvent(I)V

    goto :goto_0

    .line 508
    :sswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->dispatchTriggerEvent(I)V

    goto :goto_0

    .line 499
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080081 -> :sswitch_0
        0x7f080082 -> :sswitch_1
        0x7f080089 -> :sswitch_2
        0x7f08008a -> :sswitch_1
    .end sparse-switch
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 415
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MiuiInCallAnswerWidget;->vibrate(J)V

    .line 416
    invoke-direct {p0, v3}, Lcom/android/phone/MiuiInCallAnswerWidget;->setGrabbedState(I)V

    .line 419
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingDownTargetView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBarLight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    return v3
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 130
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIncomingCallWidgetInCall:Landroid/view/View;

    .line 131
    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIncomingCallWidgetMain:Landroid/view/View;

    .line 133
    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mAnswerButton:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mAnswerButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v0, 0x7f080082

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIgnoreButton:Landroid/widget/Button;

    .line 136
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIgnoreButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectButton:Landroid/widget/Button;

    .line 138
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectWithSmsButton:Landroid/widget/Button;

    .line 140
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectWithSmsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mAnswerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setWidth(I)V

    .line 144
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIgnoreButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setWidth(I)V

    .line 145
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectWithSmsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setWidth(I)V

    .line 147
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBar:Landroid/widget/ImageView;

    .line 148
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBarLight:Landroid/widget/ImageView;

    .line 149
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectButtons:Landroid/view/View;

    .line 152
    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingBar:Landroid/view/View;

    .line 154
    new-instance v0, Lcom/android/phone/MiuiInCallAnswerWidget$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiInCallAnswerWidget$1;-><init>(Lcom/android/phone/MiuiInCallAnswerWidget;)V

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 188
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "eDown"
    .parameter "eUp"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v4, 0x4396

    const/4 v3, 0x0

    .line 428
    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTrackingPointerId:I

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/MiuiInCallAnswerWidget;->onCancel(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 454
    :goto_0
    return v1

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->getTranslationY()F

    move-result v0

    .line 433
    .local v0, currentTranslationY:F
    cmpg-float v1, v0, v3

    if-gtz v1, :cond_1

    .line 435
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    .line 436
    cmpg-float v1, p4, v3

    if-gez v1, :cond_3

    .line 438
    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    int-to-float v1, v1

    invoke-direct {p0, v1, p4}, Lcom/android/phone/MiuiInCallAnswerWidget;->startAnimation(FF)V

    .line 445
    :cond_1
    :goto_1
    cmpl-float v1, v0, v3

    if-ltz v1, :cond_2

    .line 447
    cmpl-float v1, p4, v3

    if-lez v1, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 449
    const-wide/16 v1, 0x28

    invoke-direct {p0, v1, v2}, Lcom/android/phone/MiuiInCallAnswerWidget;->vibrate(J)V

    .line 450
    const-string v1, "InCallAnswerWidget"

    const-string v2, "user trying to accept the call by flinging the panel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationDownTarget:I

    int-to-float v1, v1

    invoke-direct {p0, v1, p4}, Lcom/android/phone/MiuiInCallAnswerWidget;->startAnimation(FF)V

    .line 454
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 441
    :cond_3
    invoke-direct {p0, v3, p4}, Lcom/android/phone/MiuiInCallAnswerWidget;->startAnimation(FF)V

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 196
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIncomingCallWidgetMain:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 201
    :cond_1
    iget v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTrackingPointerId:I

    if-ltz v2, :cond_2

    move v0, v1

    .line 202
    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 205
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTrackingPointerId:I

    move v0, v1

    .line 207
    goto :goto_0
.end method

.method public onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "eDown"
    .parameter "eMove"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 460
    iget v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTrackingPointerId:I

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 461
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/MiuiInCallAnswerWidget;->onCancel(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 480
    :goto_0
    return v3

    .line 465
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 466
    .local v0, deltaY:I
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->hitDownThreshold()Z

    move-result v1

    .line 467
    .local v1, hitDown:Z
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallAnswerWidget;->hitUpThreshold()Z

    move-result v2

    .line 468
    .local v2, hitUp:Z
    if-eqz v1, :cond_5

    .line 470
    const-wide/16 v3, 0x28

    invoke-direct {p0, v3, v4}, Lcom/android/phone/MiuiInCallAnswerWidget;->vibrate(J)V

    .line 471
    const-string v3, "InCallAnswerWidget"

    const-string v4, "user trying to accept the call by moving the panel to target"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationDownTarget:I

    int-to-float v3, v3

    invoke-direct {p0, v3, p4}, Lcom/android/phone/MiuiInCallAnswerWidget;->startAnimation(FF)V

    .line 477
    :cond_1
    :goto_1
    if-lez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-gez v0, :cond_4

    if-nez v2, :cond_4

    .line 478
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/phone/MiuiInCallAnswerWidget;->movePanel(F)V

    .line 480
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 473
    :cond_5
    const/4 v3, -0x3

    if-ge v0, v3, :cond_1

    if-eqz v2, :cond_1

    .line 475
    iget v3, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    int-to-float v3, v3

    invoke-direct {p0, v3, p4}, Lcom/android/phone/MiuiInCallAnswerWidget;->startAnimation(FF)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 216
    iget v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTrackingPointerId:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mGestureDetector:Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;

    invoke-virtual {v0, p1}, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 393
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 394
    if-ne p1, p0, :cond_0

    .line 395
    sget-object v0, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Init:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    iput-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->setTranslationY(F)V

    .line 397
    if-nez p2, :cond_0

    .line 398
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->setAlpha(F)V

    .line 402
    :cond_0
    if-eqz p2, :cond_2

    .line 403
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectButtons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :cond_2
    return-void
.end method

.method public reset(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    const/4 v5, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 334
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingDownTargetView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 336
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiInCallAnswerWidget;->setVisibility(I)V

    .line 340
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 389
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiInCallAnswerWidget;->setVisibility(I)V

    .line 346
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    sget-object v2, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Up:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    if-eq v1, v2, :cond_5

    .line 347
    sget-object v1, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Init:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    iput-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    .line 348
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallAnswerWidget;->setTranslationY(F)V

    .line 349
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBarLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    :goto_1
    const/4 v0, 0x0

    .line 356
    .local v0, currentCalls:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_2

    .line 357
    add-int/lit8 v0, v0, 0x1

    .line 359
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_3

    .line 360
    add-int/lit8 v0, v0, 0x1

    .line 363
    :cond_3
    if-nez v0, :cond_7

    .line 364
    const-string v1, "InCallAnswerWidget"

    const-string v2, "show incoming call widget for single call mode."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIncomingCallWidgetMain:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIncomingCallWidgetInCall:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectWithSmsButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 369
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 370
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectWithSmsButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 373
    :cond_4
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    sget-object v2, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Up:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    if-ne v1, v2, :cond_6

    .line 374
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectButtons:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 351
    .end local v0           #currentCalls:I
    :cond_5
    iget v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiInCallAnswerWidget;->setTranslationY(F)V

    .line 352
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBarLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 378
    .restart local v0       #currentCalls:I
    :cond_6
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectButtons:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_0

    .line 383
    :cond_7
    const-string v1, "InCallAnswerWidget"

    const-string v2, "show incoming call widget for in call mode."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIncomingCallWidgetMain:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mIncomingCallWidgetInCall:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v2, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mAnswerButton:Landroid/widget/Button;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const v1, 0x7f0d022c

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(I)V

    .line 387
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_0

    .line 386
    :cond_8
    const v1, 0x7f0d022a

    goto :goto_2
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    .line 289
    return-void
.end method

.method public setSlidingTarget(Landroid/view/View;)V
    .locals 0
    .parameter "slidingDownTargetView"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingDownTargetView:Landroid/view/View;

    .line 192
    return-void
.end method
