.class Lcom/android/phone/MiuiSimContacts$5$1;
.super Ljava/lang/Object;
.source "MiuiSimContacts.java"

# interfaces
.implements Lcom/android/phone/MiuiSimContactService$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiSimContacts$5;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/MiuiSimContacts$5;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiSimContacts$5;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts$5$1;->this$1:Lcom/android/phone/MiuiSimContacts$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$5$1;->this$1:Lcom/android/phone/MiuiSimContacts$5;

    iget-object v0, v0, Lcom/android/phone/MiuiSimContacts$5;->this$0:Lcom/android/phone/MiuiSimContacts;

    #getter for: Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$1100(Lcom/android/phone/MiuiSimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$5$1;->this$1:Lcom/android/phone/MiuiSimContacts$5;

    iget-object v0, v0, Lcom/android/phone/MiuiSimContacts$5;->this$0:Lcom/android/phone/MiuiSimContacts;

    #getter for: Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$1100(Lcom/android/phone/MiuiSimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$5$1;->this$1:Lcom/android/phone/MiuiSimContacts$5;

    iget-object v0, v0, Lcom/android/phone/MiuiSimContacts$5;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-virtual {v0}, Lcom/android/phone/MiuiSimContacts;->finish()V

    .line 432
    return-void
.end method

.method public onFinished(Lcom/android/phone/MiuiSimContacts$SimContactOP;)V
    .locals 4
    .parameter "op"

    .prologue
    .line 405
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts$5$1;->this$1:Lcom/android/phone/MiuiSimContacts$5;

    iget-object v2, v2, Lcom/android/phone/MiuiSimContacts$5;->this$0:Lcom/android/phone/MiuiSimContacts;

    #getter for: Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/phone/MiuiSimContacts;->access$1100(Lcom/android/phone/MiuiSimContacts;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts$5$1;->this$1:Lcom/android/phone/MiuiSimContacts$5;

    iget-object v2, v2, Lcom/android/phone/MiuiSimContacts$5;->this$0:Lcom/android/phone/MiuiSimContacts;

    #getter for: Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/phone/MiuiSimContacts;->access$1100(Lcom/android/phone/MiuiSimContacts;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 408
    :cond_0
    const/4 v1, 0x0

    .line 409
    .local v1, toastMsgId:I
    sget-object v2, Lcom/android/phone/MiuiSimContacts$SimContactOP;->IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    if-ne p1, v2, :cond_2

    .line 410
    const v1, 0x7f0d02de

    .line 414
    :cond_1
    :goto_0
    move v0, v1

    .line 415
    .local v0, fToastMsgId:I
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts$5$1;->this$1:Lcom/android/phone/MiuiSimContacts$5;

    iget-object v2, v2, Lcom/android/phone/MiuiSimContacts$5;->this$0:Lcom/android/phone/MiuiSimContacts;

    new-instance v3, Lcom/android/phone/MiuiSimContacts$5$1$2;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/MiuiSimContacts$5$1$2;-><init>(Lcom/android/phone/MiuiSimContacts$5$1;I)V

    invoke-virtual {v2, v3}, Lcom/android/phone/MiuiSimContacts;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 423
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts$5$1;->this$1:Lcom/android/phone/MiuiSimContacts$5;

    iget-object v2, v2, Lcom/android/phone/MiuiSimContacts$5;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-virtual {v2}, Lcom/android/phone/MiuiSimContacts;->finish()V

    .line 424
    return-void

    .line 411
    .end local v0           #fToastMsgId:I
    :cond_2
    sget-object v2, Lcom/android/phone/MiuiSimContacts$SimContactOP;->DELETE:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    if-ne p1, v2, :cond_1

    .line 412
    const v1, 0x7f0d02df

    goto :goto_0
.end method

.method public onProgress(IIILcom/android/phone/MiuiSimContacts$SimContactOP;)V
    .locals 9
    .parameter "totalCount"
    .parameter "max"
    .parameter "count"
    .parameter "op"

    .prologue
    .line 380
    const/4 v7, 0x0

    .local v7, titleId:I
    const/4 v6, 0x0

    .line 381
    .local v6, messageId:I
    sget-object v0, Lcom/android/phone/MiuiSimContacts$SimContactOP;->IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    if-ne p4, v0, :cond_2

    .line 382
    if-ne p2, p1, :cond_1

    .line 383
    const v7, 0x7f0d02dd

    .line 387
    :goto_0
    const v6, 0x7f0d02db

    .line 392
    :cond_0
    :goto_1
    move v2, v7

    .local v2, fTitleId:I
    move v3, v6

    .line 393
    .local v3, fMessageId:I
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$5$1;->this$1:Lcom/android/phone/MiuiSimContacts$5;

    iget-object v8, v0, Lcom/android/phone/MiuiSimContacts$5;->this$0:Lcom/android/phone/MiuiSimContacts;

    new-instance v0, Lcom/android/phone/MiuiSimContacts$5$1$1;

    move-object v1, p0

    move v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/MiuiSimContacts$5$1$1;-><init>(Lcom/android/phone/MiuiSimContacts$5$1;IIII)V

    invoke-virtual {v8, v0}, Lcom/android/phone/MiuiSimContacts;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 401
    return-void

    .line 385
    .end local v2           #fTitleId:I
    .end local v3           #fMessageId:I
    :cond_1
    const v7, 0x7f0d02dc

    goto :goto_0

    .line 388
    :cond_2
    sget-object v0, Lcom/android/phone/MiuiSimContacts$SimContactOP;->DELETE:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    if-ne p4, v0, :cond_0

    .line 389
    const v7, 0x7f0d0364

    .line 390
    const v6, 0x7f0d0363

    goto :goto_1
.end method
