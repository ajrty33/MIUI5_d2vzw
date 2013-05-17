.class Lcom/android/phone/MiuiEditPinDialog$2;
.super Landroid/os/Handler;
.source "MiuiEditPinDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiEditPinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiEditPinDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiEditPinDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const v6, 0x7f0d0317

    const v5, 0x7f0d0261

    const v2, 0x7f0d0260

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 410
    const/4 v0, 0x0

    .line 412
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 414
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$100(Lcom/android/phone/MiuiEditPinDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 415
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->process()V
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$200(Lcom/android/phone/MiuiEditPinDialog;)V

    goto :goto_0

    .line 418
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/phone/MiuiEditPinDialog;->access$302(Lcom/android/phone/MiuiEditPinDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    invoke-virtual {v1}, Lcom/android/phone/MiuiEditPinDialog;->show()V

    .line 420
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$100(Lcom/android/phone/MiuiEditPinDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 423
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 424
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$400(Lcom/android/phone/MiuiEditPinDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/MiuiEditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiEditPinDialog;->access$500(Lcom/android/phone/MiuiEditPinDialog;Z)V

    goto :goto_0

    .line 431
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 432
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-static {v0}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->updatePin2State(Landroid/os/AsyncResult;)V

    .line 433
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 434
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$400(Lcom/android/phone/MiuiEditPinDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/MiuiEditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiEditPinDialog;->access$500(Lcom/android/phone/MiuiEditPinDialog;Z)V

    goto :goto_0

    .line 440
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 441
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 442
    invoke-static {}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->isPin1Locked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$400(Lcom/android/phone/MiuiEditPinDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/MiuiEditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 446
    :cond_3
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    const v2, 0x7f0d031c

    #calls: Lcom/android/phone/MiuiEditPinDialog;->showToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/MiuiEditPinDialog;->access$600(Lcom/android/phone/MiuiEditPinDialog;I)V

    .line 447
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiEditPinDialog;->access$500(Lcom/android/phone/MiuiEditPinDialog;Z)V

    goto/16 :goto_0

    .line 451
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 452
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-static {v0}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->updatePin2State(Landroid/os/AsyncResult;)V

    .line 453
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 454
    invoke-static {}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->isPin2Locked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 455
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$400(Lcom/android/phone/MiuiEditPinDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/MiuiEditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 457
    :cond_4
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiEditPinDialog;->access$500(Lcom/android/phone/MiuiEditPinDialog;Z)V

    .line 458
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/MiuiEditPinDialog;->access$400(Lcom/android/phone/MiuiEditPinDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0319

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/MiuiEditPinDialog$2$1;

    invoke-direct {v3, p0}, Lcom/android/phone/MiuiEditPinDialog$2$1;-><init>(Lcom/android/phone/MiuiEditPinDialog$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 468
    :cond_5
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->showToast(I)V
    invoke-static {v1, v6}, Lcom/android/phone/MiuiEditPinDialog;->access$600(Lcom/android/phone/MiuiEditPinDialog;I)V

    .line 469
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiEditPinDialog;->access$500(Lcom/android/phone/MiuiEditPinDialog;Z)V

    goto/16 :goto_0

    .line 473
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 474
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 475
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$400(Lcom/android/phone/MiuiEditPinDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0263

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/MiuiEditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 477
    :cond_6
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    const v2, 0x7f0d031c

    #calls: Lcom/android/phone/MiuiEditPinDialog;->showToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/MiuiEditPinDialog;->access$600(Lcom/android/phone/MiuiEditPinDialog;I)V

    .line 478
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiEditPinDialog;->access$500(Lcom/android/phone/MiuiEditPinDialog;Z)V

    goto/16 :goto_0

    .line 482
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 483
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-static {v0}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->updatePin2State(Landroid/os/AsyncResult;)V

    .line 484
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    .line 485
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$400(Lcom/android/phone/MiuiEditPinDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0262

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/MiuiEditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 487
    :cond_7
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->showToast(I)V
    invoke-static {v1, v6}, Lcom/android/phone/MiuiEditPinDialog;->access$600(Lcom/android/phone/MiuiEditPinDialog;I)V

    .line 488
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiEditPinDialog;->access$500(Lcom/android/phone/MiuiEditPinDialog;Z)V

    goto/16 :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
