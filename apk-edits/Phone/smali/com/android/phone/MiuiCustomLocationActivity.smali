.class public Lcom/android/phone/MiuiCustomLocationActivity;
.super Landroid/app/Activity;
.source "MiuiCustomLocationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;,
        Lcom/android/phone/MiuiCustomLocationActivity$LocationQuery;,
        Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;,
        Lcom/android/phone/MiuiCustomLocationActivity$ItemView;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Landroid/widget/ListView;

.field private mListAdapter:Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;

.field private mQueryHandler:Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiCustomLocationActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiCustomLocationActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCustomLocationActivity;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 126
    new-instance v0, Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;-><init>(Lcom/android/phone/MiuiCustomLocationActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mListAdapter:Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;

    .line 127
    iget-object v0, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mListAdapter:Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mQueryHandler:Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/MiuiCustomLocationActivity$LocationQuery;->COLUMNS:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f04000b

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCustomLocationActivity;->setContentView(I)V

    .line 43
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCustomLocationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mList:Landroid/widget/ListView;

    .line 45
    iget-object v0, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mList:Landroid/widget/ListView;

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 48
    new-instance v0, Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;-><init>(Lcom/android/phone/MiuiCustomLocationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mQueryHandler:Lcom/android/phone/MiuiCustomLocationActivity$QueryHandler;

    .line 49
    invoke-direct {p0}, Lcom/android/phone/MiuiCustomLocationActivity;->startQuery()V

    .line 50
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    const v1, 0x601004e

    invoke-static {p0, v1}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 133
    .local v0, newDrawable:Landroid/graphics/drawable/Drawable;
    const/16 v1, 0xa

    const v2, 0x7f0d0226

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 135
    return v4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/MiuiEditCustomLocationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    const-string v1, "action_edit_custom_location"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/android/phone/MiuiCustomLocationActivity;->mListAdapter:Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;

    invoke-virtual {v1}, Lcom/android/phone/MiuiCustomLocationActivity$CustomLocationAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_0

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    const-string v2, "_id"

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string v2, "number"

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v2, "location"

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v2, "type"

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCustomLocationActivity;->startActivity(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 142
    :sswitch_0
    const-class v1, Lcom/android/phone/MiuiTelocationSetting;

    invoke-static {p0, v1}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    .line 145
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/MiuiEditCustomLocationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    const-string v2, "action_add_custom_location"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCustomLocationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
