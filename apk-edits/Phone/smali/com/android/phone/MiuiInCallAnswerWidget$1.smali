.class Lcom/android/phone/MiuiInCallAnswerWidget$1;
.super Ljava/lang/Object;
.source "MiuiInCallAnswerWidget.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiInCallAnswerWidget;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiInCallAnswerWidget;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiInCallAnswerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/phone/MiuiInCallAnswerWidget$1;->this$0:Lcom/android/phone/MiuiInCallAnswerWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 186
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 166
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget$1;->this$0:Lcom/android/phone/MiuiInCallAnswerWidget;

    invoke-virtual {v1}, Lcom/android/phone/MiuiInCallAnswerWidget;->getTranslationY()F

    move-result v0

    .line 167
    .local v0, y:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget$1;->this$0:Lcom/android/phone/MiuiInCallAnswerWidget;

    sget-object v2, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Init:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    #setter for: Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;
    invoke-static {v1, v2}, Lcom/android/phone/MiuiInCallAnswerWidget;->access$102(Lcom/android/phone/MiuiInCallAnswerWidget;Lcom/android/phone/MiuiInCallAnswerWidget$State;)Lcom/android/phone/MiuiInCallAnswerWidget$State;

    .line 169
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget$1;->this$0:Lcom/android/phone/MiuiInCallAnswerWidget;

    #getter for: Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/MiuiInCallAnswerWidget;->access$200(Lcom/android/phone/MiuiInCallAnswerWidget;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 170
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget$1;->this$0:Lcom/android/phone/MiuiInCallAnswerWidget;

    #getter for: Lcom/android/phone/MiuiInCallAnswerWidget;->mRejectButtons:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/MiuiInCallAnswerWidget;->access$300(Lcom/android/phone/MiuiInCallAnswerWidget;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 171
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget$1;->this$0:Lcom/android/phone/MiuiInCallAnswerWidget;

    #getter for: Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingHintAnim:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/MiuiInCallAnswerWidget;->access$200(Lcom/android/phone/MiuiInCallAnswerWidget;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 172
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget$1;->this$0:Lcom/android/phone/MiuiInCallAnswerWidget;

    #calls: Lcom/android/phone/MiuiInCallAnswerWidget;->setGrabbedState(I)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiInCallAnswerWidget;->access$400(Lcom/android/phone/MiuiInCallAnswerWidget;I)V

    .line 181
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget$1;->this$0:Lcom/android/phone/MiuiInCallAnswerWidget;

    #getter for: Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingDownTargetView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/MiuiInCallAnswerWidget;->access$900(Lcom/android/phone/MiuiInCallAnswerWidget;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 182
    return-void

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget$1;->this$0:Lcom/android/phone/MiuiInCallAnswerWidget;

    #getter for: Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationUpTarget:I
    invoke-static {v1}, Lcom/android/phone/MiuiInCallAnswerWidget;->access$500(Lcom/android/phone/MiuiInCallAnswerWidget;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget$1;->this$0:Lcom/android/phone/MiuiInCallAnswerWidget;

    sget-object v2, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Up:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    #setter for: Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;
    invoke-static {v1, v2}, Lcom/android/phone/MiuiInCallAnswerWidget;->access$102(Lcom/android/phone/MiuiInCallAnswerWidget;Lcom/android/phone/MiuiInCallAnswerWidget$State;)Lcom/android/phone/MiuiInCallAnswerWidget$State;

    .line 175
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget$1;->this$0:Lcom/android/phone/MiuiInCallAnswerWidget;

    #getter for: Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBarLight:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/MiuiInCallAnswerWidget;->access$600(Lcom/android/phone/MiuiInCallAnswerWidget;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget$1;->this$0:Lcom/android/phone/MiuiInCallAnswerWidget;

    #calls: Lcom/android/phone/MiuiInCallAnswerWidget;->setGrabbedState(I)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiInCallAnswerWidget;->access$400(Lcom/android/phone/MiuiInCallAnswerWidget;I)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget$1;->this$0:Lcom/android/phone/MiuiInCallAnswerWidget;

    #getter for: Lcom/android/phone/MiuiInCallAnswerWidget;->mTranslationDownTarget:I
    invoke-static {v1}, Lcom/android/phone/MiuiInCallAnswerWidget;->access$700(Lcom/android/phone/MiuiInCallAnswerWidget;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget$1;->this$0:Lcom/android/phone/MiuiInCallAnswerWidget;

    sget-object v2, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Down:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    #setter for: Lcom/android/phone/MiuiInCallAnswerWidget;->mState:Lcom/android/phone/MiuiInCallAnswerWidget$State;
    invoke-static {v1, v2}, Lcom/android/phone/MiuiInCallAnswerWidget;->access$102(Lcom/android/phone/MiuiInCallAnswerWidget;Lcom/android/phone/MiuiInCallAnswerWidget$State;)Lcom/android/phone/MiuiInCallAnswerWidget$State;

    .line 179
    iget-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidget$1;->this$0:Lcom/android/phone/MiuiInCallAnswerWidget;

    #calls: Lcom/android/phone/MiuiInCallAnswerWidget;->dispatchTriggerEvent(I)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiInCallAnswerWidget;->access$800(Lcom/android/phone/MiuiInCallAnswerWidget;I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 162
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidget$1;->this$0:Lcom/android/phone/MiuiInCallAnswerWidget;

    #getter for: Lcom/android/phone/MiuiInCallAnswerWidget;->mSlidingGreenBar:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/MiuiInCallAnswerWidget;->access$000(Lcom/android/phone/MiuiInCallAnswerWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    return-void
.end method
