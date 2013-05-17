.class Lcom/android/phone/MiuiInCallTouchUi$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiInCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiInCallTouchUi;->setPanelState(Lcom/android/phone/MiuiInCallTouchUi$PanelState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiInCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiInCallTouchUi;)V
    .locals 0
    .parameter

    .prologue
    .line 880
    iput-object p1, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 890
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    #getter for: Lcom/android/phone/MiuiInCallTouchUi;->mDialerButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/android/phone/MiuiInCallTouchUi;->access$300(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/MiuiInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->getDialerView()Lcom/android/phone/DTMFTwelveKeyDialerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 896
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    #getter for: Lcom/android/phone/MiuiInCallTouchUi;->mToolsButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/android/phone/MiuiInCallTouchUi;->access$500(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    #getter for: Lcom/android/phone/MiuiInCallTouchUi;->mToolsPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/MiuiInCallTouchUi;->access$400(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 897
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    #getter for: Lcom/android/phone/MiuiInCallTouchUi;->mAudioModeButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/android/phone/MiuiInCallTouchUi;->access$700(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    #getter for: Lcom/android/phone/MiuiInCallTouchUi;->mAudioModePanel:Landroid/view/View;
    invoke-static {v3}, Lcom/android/phone/MiuiInCallTouchUi;->access$600(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 899
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    #getter for: Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;
    invoke-static {v0}, Lcom/android/phone/MiuiInCallTouchUi;->access$100(Lcom/android/phone/MiuiInCallTouchUi;)Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-ne v0, v1, :cond_4

    .line 900
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    #getter for: Lcom/android/phone/MiuiInCallTouchUi;->mMainButtonsBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/phone/MiuiInCallTouchUi;->access$200(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 895
    goto :goto_1

    :cond_2
    move v0, v2

    .line 896
    goto :goto_2

    :cond_3
    move v1, v2

    .line 897
    goto :goto_3

    .line 902
    :cond_4
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    #getter for: Lcom/android/phone/MiuiInCallTouchUi;->mMainButtonsBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/phone/MiuiInCallTouchUi;->access$200(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    #getter for: Lcom/android/phone/MiuiInCallTouchUi;->mPanelState:Lcom/android/phone/MiuiInCallTouchUi$PanelState;
    invoke-static {v0}, Lcom/android/phone/MiuiInCallTouchUi;->access$100(Lcom/android/phone/MiuiInCallTouchUi;)Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    if-eq v0, v1, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/phone/MiuiInCallTouchUi$2;->this$0:Lcom/android/phone/MiuiInCallTouchUi;

    #getter for: Lcom/android/phone/MiuiInCallTouchUi;->mMainButtonsBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/phone/MiuiInCallTouchUi;->access$200(Lcom/android/phone/MiuiInCallTouchUi;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 886
    :cond_0
    return-void
.end method
