.class Lcom/android/phone/MiuiSimContacts$ModeCallback;
.super Ljava/lang/Object;
.source "MiuiSimContacts.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiSimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mActionMode:Lmiui/v5/view/EditActionMode;

.field private mDeleteMenu:Landroid/view/MenuItem;

.field private mImportMenu:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/android/phone/MiuiSimContacts;


# direct methods
.method private constructor <init>(Lcom/android/phone/MiuiSimContacts;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MiuiSimContacts;Lcom/android/phone/MiuiSimContacts$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiSimContacts$ModeCallback;-><init>(Lcom/android/phone/MiuiSimContacts;)V

    return-void
.end method

.method private updateActionMenu()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 313
    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->this$0:Lcom/android/phone/MiuiSimContacts;

    #getter for: Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;
    invoke-static {v1}, Lcom/android/phone/MiuiSimContacts;->access$500(Lcom/android/phone/MiuiSimContacts;)Landroid/widget/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v0

    .line 314
    .local v0, selectedCount:I
    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mActionMode:Lmiui/v5/view/EditActionMode;

    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-virtual {v4}, Lcom/android/phone/MiuiSimContacts;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0003

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmiui/v5/view/EditActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mActionMode:Lmiui/v5/view/EditActionMode;

    const v4, 0x1020019

    const/high16 v5, 0x104

    invoke-virtual {v1, v4, v5}, Lmiui/v5/view/EditActionMode;->setButton(II)V

    .line 317
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mActionMode:Lmiui/v5/view/EditActionMode;

    const v5, 0x102001a

    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->this$0:Lcom/android/phone/MiuiSimContacts;

    #calls: Lcom/android/phone/MiuiSimContacts;->areAllChecked()Z
    invoke-static {v1}, Lcom/android/phone/MiuiSimContacts;->access$600(Lcom/android/phone/MiuiSimContacts;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d0337

    :goto_0
    invoke-virtual {v4, v5, v1}, Lmiui/v5/view/EditActionMode;->setButton(II)V

    .line 320
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mImportMenu:Landroid/view/MenuItem;

    if-lez v0, :cond_1

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 321
    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mDeleteMenu:Landroid/view/MenuItem;

    if-lez v0, :cond_2

    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 322
    return-void

    .line 317
    :cond_0
    const v1, 0x7f0d0338

    goto :goto_0

    :cond_1
    move v1, v3

    .line 320
    goto :goto_1

    :cond_2
    move v2, v3

    .line 321
    goto :goto_2
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 332
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 357
    :goto_0
    return v0

    .line 334
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->this$0:Lcom/android/phone/MiuiSimContacts;

    #calls: Lcom/android/phone/MiuiSimContacts;->handleBackEvent()V
    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$200(Lcom/android/phone/MiuiSimContacts;)V

    :cond_0
    :goto_1
    move v0, v1

    .line 357
    goto :goto_0

    .line 337
    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->this$0:Lcom/android/phone/MiuiSimContacts;

    #getter for: Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;
    invoke-static {v2}, Lcom/android/phone/MiuiSimContacts;->access$500(Lcom/android/phone/MiuiSimContacts;)Landroid/widget/EditableListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditableListView;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->this$0:Lcom/android/phone/MiuiSimContacts;

    #calls: Lcom/android/phone/MiuiSimContacts;->areAllChecked()Z
    invoke-static {v2}, Lcom/android/phone/MiuiSimContacts;->access$600(Lcom/android/phone/MiuiSimContacts;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->this$0:Lcom/android/phone/MiuiSimContacts;

    #calls: Lcom/android/phone/MiuiSimContacts;->checkAll(Z)V
    invoke-static {v2, v0}, Lcom/android/phone/MiuiSimContacts;->access$700(Lcom/android/phone/MiuiSimContacts;Z)V

    .line 345
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts$ModeCallback;->updateActionMenu()V

    goto :goto_1

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->this$0:Lcom/android/phone/MiuiSimContacts;

    #calls: Lcom/android/phone/MiuiSimContacts;->checkAll(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/MiuiSimContacts;->access$700(Lcom/android/phone/MiuiSimContacts;Z)V

    goto :goto_2

    .line 348
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->this$0:Lcom/android/phone/MiuiSimContacts;

    #calls: Lcom/android/phone/MiuiSimContacts;->startImportSelected()V
    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$800(Lcom/android/phone/MiuiSimContacts;)V

    goto :goto_1

    .line 351
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->this$0:Lcom/android/phone/MiuiSimContacts;

    #calls: Lcom/android/phone/MiuiSimContacts;->showDeleteSelectedDialog()V
    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$900(Lcom/android/phone/MiuiSimContacts;)V

    goto :goto_1

    .line 332
    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_0
        0x102001a -> :sswitch_1
        0x7f0800f6 -> :sswitch_2
        0x7f0800f7 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-virtual {v0}, Lcom/android/phone/MiuiSimContacts;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 306
    const v0, 0x7f0800f6

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mImportMenu:Landroid/view/MenuItem;

    .line 307
    const v0, 0x7f0800f7

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mDeleteMenu:Landroid/view/MenuItem;

    .line 308
    check-cast p1, Lmiui/v5/view/EditActionMode;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->mActionMode:Lmiui/v5/view/EditActionMode;

    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 362
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 1
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$ModeCallback;->this$0:Lcom/android/phone/MiuiSimContacts;

    #getter for: Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;
    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$500(Lcom/android/phone/MiuiSimContacts;)Landroid/widget/EditableListView;

    move-result-object v0

    invoke-virtual {v0, p2, p5}, Landroid/widget/EditableListView;->setItemChecked(IZ)V

    .line 368
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts$ModeCallback;->updateActionMenu()V

    .line 369
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts$ModeCallback;->updateActionMenu()V

    .line 327
    const/4 v0, 0x1

    return v0
.end method
