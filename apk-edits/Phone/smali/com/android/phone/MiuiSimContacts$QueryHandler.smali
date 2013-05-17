.class Lcom/android/phone/MiuiSimContacts$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MiuiSimContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiSimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiSimContacts;


# direct methods
.method public constructor <init>(Lcom/android/phone/MiuiSimContacts;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts$QueryHandler;->this$0:Lcom/android/phone/MiuiSimContacts;

    .line 527
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 528
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$QueryHandler;->this$0:Lcom/android/phone/MiuiSimContacts;

    #calls: Lcom/android/phone/MiuiSimContacts;->query()V
    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$000(Lcom/android/phone/MiuiSimContacts;)V

    .line 550
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$QueryHandler;->this$0:Lcom/android/phone/MiuiSimContacts;

    #calls: Lcom/android/phone/MiuiSimContacts;->query()V
    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$000(Lcom/android/phone/MiuiSimContacts;)V

    .line 540
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$QueryHandler;->this$0:Lcom/android/phone/MiuiSimContacts;

    #setter for: Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/phone/MiuiSimContacts;->access$1202(Lcom/android/phone/MiuiSimContacts;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 533
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$QueryHandler;->this$0:Lcom/android/phone/MiuiSimContacts;

    #calls: Lcom/android/phone/MiuiSimContacts;->setAdapter()V
    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$1300(Lcom/android/phone/MiuiSimContacts;)V

    .line 534
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$QueryHandler;->this$0:Lcom/android/phone/MiuiSimContacts;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/MiuiSimContacts;->showWaitingDialog(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/MiuiSimContacts;->access$1400(Lcom/android/phone/MiuiSimContacts;Z)V

    .line 535
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$QueryHandler;->this$0:Lcom/android/phone/MiuiSimContacts;

    #calls: Lcom/android/phone/MiuiSimContacts;->query()V
    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$000(Lcom/android/phone/MiuiSimContacts;)V

    .line 545
    return-void
.end method
