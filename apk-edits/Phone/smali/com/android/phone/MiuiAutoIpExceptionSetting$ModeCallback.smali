.class Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;
.super Ljava/lang/Object;
.source "MiuiAutoIpExceptionSetting.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiAutoIpExceptionSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mActionMode:Lmiui/v5/view/EditActionMode;

.field private mDeleteMenu:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;


# direct methods
.method private constructor <init>(Lcom/android/phone/MiuiAutoIpExceptionSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MiuiAutoIpExceptionSetting;Lcom/android/phone/MiuiAutoIpExceptionSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;-><init>(Lcom/android/phone/MiuiAutoIpExceptionSetting;)V

    return-void
.end method

.method private updateActionMenu()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 287
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #getter for: Lcom/android/phone/MiuiAutoIpExceptionSetting;->mList:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$100(Lcom/android/phone/MiuiAutoIpExceptionSetting;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    .line 288
    .local v2, selectedCount:I
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    invoke-virtual {v5}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02f1

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, format:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->mActionMode:Lmiui/v5/view/EditActionMode;

    invoke-virtual {v5, v0}, Lmiui/v5/view/EditActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->mActionMode:Lmiui/v5/view/EditActionMode;

    const v6, 0x1020019

    const/high16 v7, 0x104

    invoke-virtual {v5, v6, v7}, Lmiui/v5/view/EditActionMode;->setButton(II)V

    .line 292
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #calls: Lcom/android/phone/MiuiAutoIpExceptionSetting;->isAllChecked()Z
    invoke-static {v5}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$200(Lcom/android/phone/MiuiAutoIpExceptionSetting;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    const v1, 0x7f0d02f3

    .line 297
    .local v1, resId:I
    :goto_0
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->mActionMode:Lmiui/v5/view/EditActionMode;

    const v6, 0x102001a

    invoke-virtual {v5, v6, v1}, Lmiui/v5/view/EditActionMode;->setButton(II)V

    .line 298
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->mDeleteMenu:Landroid/view/MenuItem;

    if-lez v2, :cond_1

    :goto_1
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 299
    return-void

    .line 295
    .end local v1           #resId:I
    :cond_0
    const v1, 0x7f0d02f2

    .restart local v1       #resId:I
    goto :goto_0

    :cond_1
    move v3, v4

    .line 298
    goto :goto_1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 309
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 325
    :goto_0
    return v0

    .line 311
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 314
    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #calls: Lcom/android/phone/MiuiAutoIpExceptionSetting;->isAllChecked()Z
    invoke-static {v2}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$200(Lcom/android/phone/MiuiAutoIpExceptionSetting;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #calls: Lcom/android/phone/MiuiAutoIpExceptionSetting;->checkAll(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$300(Lcom/android/phone/MiuiAutoIpExceptionSetting;Z)V

    :goto_1
    move v0, v1

    .line 319
    goto :goto_0

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #calls: Lcom/android/phone/MiuiAutoIpExceptionSetting;->checkAll(Z)V
    invoke-static {v2, v0}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$300(Lcom/android/phone/MiuiAutoIpExceptionSetting;Z)V

    goto :goto_1

    .line 321
    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #calls: Lcom/android/phone/MiuiAutoIpExceptionSetting;->delete()V
    invoke-static {v1}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$400(Lcom/android/phone/MiuiAutoIpExceptionSetting;)V

    .line 322
    iget-object v1, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->mActionMode:Lmiui/v5/view/EditActionMode;

    invoke-virtual {v1}, Lmiui/v5/view/EditActionMode;->finish()V

    goto :goto_0

    .line 309
    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_0
        0x102001a -> :sswitch_1
        0x7f0800f1 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 276
    iget-object v2, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    invoke-virtual {v2}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const/high16 v3, 0x7f10

    invoke-virtual {v2, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 277
    const v2, 0x7f0800f1

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->mDeleteMenu:Landroid/view/MenuItem;

    .line 278
    check-cast p1, Lmiui/v5/view/EditActionMode;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->mActionMode:Lmiui/v5/view/EditActionMode;

    .line 279
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #getter for: Lcom/android/phone/MiuiAutoIpExceptionSetting;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$100(Lcom/android/phone/MiuiAutoIpExceptionSetting;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #getter for: Lcom/android/phone/MiuiAutoIpExceptionSetting;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$100(Lcom/android/phone/MiuiAutoIpExceptionSetting;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #getter for: Lcom/android/phone/MiuiAutoIpExceptionSetting;->mList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$100(Lcom/android/phone/MiuiAutoIpExceptionSetting;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object v1, v2

    check-cast v1, Landroid/widget/CheckBox;

    .line 281
    .local v1, itemCheckBox:Landroid/widget/CheckBox;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    .end local v1           #itemCheckBox:Landroid/widget/CheckBox;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 331
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #getter for: Lcom/android/phone/MiuiAutoIpExceptionSetting;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$100(Lcom/android/phone/MiuiAutoIpExceptionSetting;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #getter for: Lcom/android/phone/MiuiAutoIpExceptionSetting;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$100(Lcom/android/phone/MiuiAutoIpExceptionSetting;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #getter for: Lcom/android/phone/MiuiAutoIpExceptionSetting;->mList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$100(Lcom/android/phone/MiuiAutoIpExceptionSetting;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object v1, v2

    check-cast v1, Landroid/widget/CheckBox;

    .line 333
    .local v1, itemCheckBox:Landroid/widget/CheckBox;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v1           #itemCheckBox:Landroid/widget/CheckBox;
    :cond_0
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 3
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #getter for: Lcom/android/phone/MiuiAutoIpExceptionSetting;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$100(Lcom/android/phone/MiuiAutoIpExceptionSetting;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->this$0:Lcom/android/phone/MiuiAutoIpExceptionSetting;

    #getter for: Lcom/android/phone/MiuiAutoIpExceptionSetting;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/MiuiAutoIpExceptionSetting;->access$100(Lcom/android/phone/MiuiAutoIpExceptionSetting;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    move-object v0, v1

    check-cast v0, Landroid/widget/CheckBox;

    .line 341
    .local v0, itemCheckBox:Landroid/widget/CheckBox;
    invoke-virtual {v0, p5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 342
    invoke-direct {p0}, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->updateActionMenu()V

    .line 343
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/android/phone/MiuiAutoIpExceptionSetting$ModeCallback;->updateActionMenu()V

    .line 304
    const/4 v0, 0x1

    return v0
.end method
