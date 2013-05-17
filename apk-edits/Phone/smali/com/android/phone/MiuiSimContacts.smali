.class public Lcom/android/phone/MiuiSimContacts;
.super Landroid/app/Activity;
.source "MiuiSimContacts.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiSimContacts$QueryHandler;,
        Lcom/android/phone/MiuiSimContacts$ModeCallback;,
        Lcom/android/phone/MiuiSimContacts$SimContactOP;
    }
.end annotation


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String;

.field private static final VIEW_NAMES:[I

.field private static sService:Lcom/android/phone/MiuiSimContactService;


# instance fields
.field private isBindSimContactService:Z

.field private mAccount:Landroid/accounts/Account;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorAdapter:Landroid/widget/CursorAdapter;

.field private mEmptyText:Landroid/widget/TextView;

.field private mIsWaitingSimCard:Z

.field private mItemCheckedStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Landroid/widget/EditableListView;

.field private mModeCallBack:Lcom/android/phone/MiuiSimContacts$ModeCallback;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/phone/MiuiSimContacts$QueryHandler;

.field private mSubscription:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWaitingDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const-string v1, "emails"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/MiuiSimContacts;->COLUMN_NAMES:[Ljava/lang/String;

    .line 72
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/MiuiSimContacts;->VIEW_NAMES:[I

    return-void

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mItemCheckedStates:Ljava/util/HashMap;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MiuiSimContacts;->mSubscription:I

    .line 96
    new-instance v0, Lcom/android/phone/MiuiSimContacts$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiSimContacts$1;-><init>(Lcom/android/phone/MiuiSimContacts;)V

    iput-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 372
    new-instance v0, Lcom/android/phone/MiuiSimContacts$5;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiSimContacts$5;-><init>(Lcom/android/phone/MiuiSimContacts;)V

    iput-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mConnection:Landroid/content/ServiceConnection;

    .line 525
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiSimContacts;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->query()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/MiuiSimContacts;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/MiuiSimContacts;->showProgressDialog(IIII)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/MiuiSimContacts;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/MiuiSimContacts;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/phone/MiuiSimContacts;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->setAdapter()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/MiuiSimContacts;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiSimContacts;->showWaitingDialog(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiSimContacts;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->handleBackEvent()V

    return-void
.end method

.method static synthetic access$300()Lcom/android/phone/MiuiSimContactService;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/phone/MiuiSimContacts;->sService:Lcom/android/phone/MiuiSimContactService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContactService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput-object p0, Lcom/android/phone/MiuiSimContacts;->sService:Lcom/android/phone/MiuiSimContactService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiSimContacts;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->startDeleteSelected()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiSimContacts;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiSimContacts;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->areAllChecked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/MiuiSimContacts;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiSimContacts;->checkAll(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/MiuiSimContacts;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->startImportSelected()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/MiuiSimContacts;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->showDeleteSelectedDialog()V

    return-void
.end method

.method private areAllChecked()Z
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildOpIntent(Ljava/lang/String;Landroid/util/SparseBooleanArray;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 473
    invoke-direct {p0, p2}, Lcom/android/phone/MiuiSimContacts;->buildStringArrayList(Landroid/util/SparseBooleanArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 474
    const/4 v0, 0x0

    .line 475
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 476
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/MiuiSimContactService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 479
    const-string v1, "android.intent.extra.TITLE"

    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    .line 481
    const-string v1, "com.android.contacts.extra.ACCOUNT"

    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 484
    :cond_0
    return-object v0
.end method

.method private buildStringArrayList(Landroid/util/SparseBooleanArray;)Ljava/util/ArrayList;
    .locals 9
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseBooleanArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 488
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 489
    :cond_0
    const/4 v3, 0x0

    .line 510
    :cond_1
    return-object v3

    .line 492
    :cond_2
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 493
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 494
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 495
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 496
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 497
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_3
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 501
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_4
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 505
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_5
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkAll(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 283
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v2, v0, p1}, Landroid/widget/EditableListView;->setItemChecked(IZ)V

    .line 285
    invoke-direct {p0, v0, p1}, Lcom/android/phone/MiuiSimContacts;->checkItem(IZ)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method private checkItem(IZ)V
    .locals 3
    .parameter "position"
    .parameter "flag"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mItemCheckedStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-void
.end method

.method private doBindService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 443
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/MiuiSimContactService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/MiuiSimContacts;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 445
    iput-boolean v2, p0, Lcom/android/phone/MiuiSimContacts;->isBindSimContactService:Z

    .line 446
    return-void
.end method

.method private doUnbindService()V
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/android/phone/MiuiSimContacts;->isBindSimContactService:Z

    if-eqz v0, :cond_1

    .line 450
    sget-object v0, Lcom/android/phone/MiuiSimContacts;->sService:Lcom/android/phone/MiuiSimContactService;

    if-eqz v0, :cond_0

    .line 451
    sget-object v0, Lcom/android/phone/MiuiSimContacts;->sService:Lcom/android/phone/MiuiSimContactService;

    invoke-virtual {v0}, Lcom/android/phone/MiuiSimContactService;->switchToBackground()V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiSimContacts;->unbindService(Landroid/content/ServiceConnection;)V

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiSimContacts;->isBindSimContactService:Z

    .line 456
    :cond_1
    return-void
.end method

.method private handleBackEvent()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "com.android.contacts"

    const-string v1, "com.android.contacts.activities.PeopleActivity"

    invoke-static {p0, v0, v1}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method private isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isItemChecked(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mItemCheckedStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mItemCheckedStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private query()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 520
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->resolveIntent()Landroid/net/Uri;

    move-result-object v3

    .line 521
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mQueryHandler:Lcom/android/phone/MiuiSimContacts$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/phone/MiuiSimContacts;->COLUMN_NAMES:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/MiuiSimContacts$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiSimContacts;->showWaitingDialog(Z)V

    .line 523
    return-void
.end method

.method private resolveIntent()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/phone/MiuiSimContacts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 515
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 516
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private setAdapter()V
    .locals 7

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f04002f

    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/android/phone/MiuiSimContacts;->COLUMN_NAMES:[Ljava/lang/String;

    sget-object v5, Lcom/android/phone/MiuiSimContacts;->VIEW_NAMES:[I

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mCursorAdapter:Landroid/widget/CursorAdapter;

    .line 174
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mModeCallBack:Lcom/android/phone/MiuiSimContacts$ModeCallback;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiSimContacts;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mCursorAdapter:Landroid/widget/CursorAdapter;

    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private showDeleteSelectedDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 243
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0362

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v4}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/MiuiSimContacts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/MiuiSimContacts$4;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiSimContacts$4;-><init>(Lcom/android/phone/MiuiSimContacts;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 255
    return-void
.end method

.method private showProgressDialog(IIII)V
    .locals 6
    .parameter "titleId"
    .parameter "messageId"
    .parameter "count"
    .parameter "max"

    .prologue
    .line 216
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, p3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 240
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_1

    .line 220
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 223
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiSimContacts;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/android/phone/MiuiSimContacts;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 228
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, -0x2

    const/high16 v4, 0x104

    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiSimContacts;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/phone/MiuiSimContacts$3;

    invoke-direct {v5, p0}, Lcom/android/phone/MiuiSimContacts$3;-><init>(Lcom/android/phone/MiuiSimContacts;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 235
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, p3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 236
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 237
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, p4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 238
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private showWaitingDialog(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-direct {p0, p0}, Lcom/android/phone/MiuiSimContacts;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f0d011e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    if-eqz p1, :cond_3

    .line 188
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mEmptyText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f0d011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 192
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mWaitingDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0d03a6

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiSimContacts;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 194
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mWaitingDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/phone/MiuiSimContacts$2;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiSimContacts$2;-><init>(Lcom/android/phone/MiuiSimContacts;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 201
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiSimContacts;->mIsWaitingSimCard:Z

    goto :goto_0

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f0d011c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 210
    :cond_4
    iput-boolean v2, p0, Lcom/android/phone/MiuiSimContacts;->mIsWaitingSimCard:Z

    goto :goto_0
.end method

.method private startDeleteSelected()V
    .locals 3

    .prologue
    .line 466
    const-string v1, "android.intent.action.DELETE"

    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v2}, Landroid/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/MiuiSimContacts;->buildOpIntent(Ljava/lang/String;Landroid/util/SparseBooleanArray;)Landroid/content/Intent;

    move-result-object v0

    .line 467
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiSimContacts;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 470
    :cond_0
    return-void
.end method

.method private startImportSelected()V
    .locals 3

    .prologue
    .line 459
    const-string v1, "android.intent.action.INSERT"

    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v2}, Landroid/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/MiuiSimContacts;->buildOpIntent(Ljava/lang/String;Landroid/util/SparseBooleanArray;)Landroid/content/Intent;

    move-result-object v0

    .line 460
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiSimContacts;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 463
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->handleBackEvent()V

    .line 265
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v3, 0x7f04002d

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiSimContacts;->setContentView(I)V

    .line 112
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiSimContacts;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditableListView;

    iput-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    .line 113
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v3, p0}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditableListView;->setChoiceMode(I)V

    .line 115
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditableListView;->setCheckBoxVisiableInNoneEditMode(Z)V

    .line 116
    const v3, 0x1020004

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiSimContacts;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mEmptyText:Landroid/widget/TextView;

    .line 117
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/EditableListView;->setEmptyView(Landroid/view/View;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/phone/MiuiSimContacts;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 120
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 121
    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, accountName:Ljava/lang/String;
    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mAccount:Landroid/accounts/Account;

    .line 128
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/android/phone/MiuiSimContacts$ModeCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/phone/MiuiSimContacts$ModeCallback;-><init>(Lcom/android/phone/MiuiSimContacts;Lcom/android/phone/MiuiSimContacts$1;)V

    iput-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mModeCallBack:Lcom/android/phone/MiuiSimContacts$ModeCallback;

    .line 129
    new-instance v3, Lcom/android/phone/MiuiSimContacts$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/MiuiSimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/phone/MiuiSimContacts$QueryHandler;-><init>(Lcom/android/phone/MiuiSimContacts;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mQueryHandler:Lcom/android/phone/MiuiSimContacts$QueryHandler;

    .line 130
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->query()V

    .line 132
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiSimContacts;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 133
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 135
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 140
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 141
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 272
    invoke-direct {p0, p3}, Lcom/android/phone/MiuiSimContacts;->isItemChecked(I)Z

    move-result v6

    .line 273
    .local v6, isChecked:Z
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mModeCallBack:Lcom/android/phone/MiuiSimContacts$ModeCallback;

    const/4 v1, 0x0

    if-nez v6, :cond_0

    move v5, v7

    :goto_0
    move v2, p3

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/MiuiSimContacts$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 274
    if-nez v6, :cond_1

    :goto_1
    invoke-direct {p0, p3, v7}, Lcom/android/phone/MiuiSimContacts;->checkItem(IZ)V

    .line 275
    return-void

    :cond_0
    move v5, v8

    .line 273
    goto :goto_0

    :cond_1
    move v7, v8

    .line 274
    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 161
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->doUnbindService()V

    .line 162
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 168
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 152
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->doBindService()V

    .line 153
    iget-boolean v0, p0, Lcom/android/phone/MiuiSimContacts;->mIsWaitingSimCard:Z

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiSimContacts;->showWaitingDialog(Z)V

    .line 156
    :cond_0
    return-void
.end method
