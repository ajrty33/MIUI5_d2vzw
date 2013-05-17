.class public Lcom/android/phone/MiuiAutoRecordWhiteListSetting;
.super Landroid/app/Activity;
.source "MiuiAutoRecordWhiteListSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiAutoRecordWhiteListSetting$ModeCallback;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mList:Landroid/widget/ListView;

.field private mModeCallBack:Lcom/android/phone/MiuiAutoRecordWhiteListSetting$ModeCallback;

.field private mNumbers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;

    .line 255
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiAutoRecordWhiteListSetting;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiAutoRecordWhiteListSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->isAllChecked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiAutoRecordWhiteListSetting;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->checkAll(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiAutoRecordWhiteListSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->delete()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiAutoRecordWhiteListSetting;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiAutoRecordWhiteListSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->saveNumbers()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/MiuiAutoRecordWhiteListSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->updateAdapterData()V

    return-void
.end method

.method private checkAll(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 336
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_0
    return-void
.end method

.method public static contains(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    .local v6, result:Z
    if-nez p1, :cond_0

    move v7, v6

    .line 75
    .end local v6           #result:Z
    .local v7, result:I
    :goto_0
    return v7

    .line 56
    .end local v7           #result:I
    .restart local v6       #result:Z
    :cond_0
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v5

    .line 57
    .local v5, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v5, v10, v11}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, normalizedNumber:Ljava/lang/String;
    invoke-virtual {v5}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 60
    invoke-static {p0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 61
    .local v8, sp:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 62
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 64
    const/4 v6, 0x1

    .end local v1           #key:Ljava/lang/String;
    :cond_2
    :goto_1
    move v7, v6

    .line 75
    .restart local v7       #result:I
    goto :goto_0

    .line 67
    .end local v7           #result:I
    .restart local v1       #key:Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v5

    .line 68
    invoke-virtual {v5, v10, v11}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, normalizedKey:Ljava/lang/String;
    invoke-virtual {v5}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 71
    const/4 v6, 0x1

    .line 72
    goto :goto_1
.end method

.method private delete()V
    .locals 7

    .prologue
    const v6, 0x7f0d032f

    .line 342
    iget-object v1, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v0

    .line 343
    .local v0, checkedIds:[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 344
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d024f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$2;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$2;-><init>(Lcom/android/phone/MiuiAutoRecordWhiteListSetting;[J)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 369
    :cond_0
    return-void
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preference_auto_record_whitelist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 79
    invoke-static {p0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->loadNumbers(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 80
    .local v0, numbers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 81
    const v1, 0x7f0d0225

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    :goto_0
    return-object v1

    .line 82
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 83
    const v1, 0x7f0d025a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 85
    :cond_1
    const v1, 0x7f0d025b

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static insertIntoNumbers(Ljava/util/HashMap;Landroid/util/Pair;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, numbers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    .line 220
    .local v1, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, normalizedNumber:Ljava/lang/String;
    invoke-virtual {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 222
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-void
.end method

.method private isAllChecked()Z
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadNumbers(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v3, numbers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 229
    .local v4, sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 230
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 231
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 232
    new-instance v6, Landroid/util/Pair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->insertIntoNumbers(Ljava/util/HashMap;Landroid/util/Pair;)V

    goto :goto_0

    .line 236
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_1
    return-object v3
.end method

.method private processPickResult(Landroid/content/Intent;)V
    .locals 17
    .parameter "data"

    .prologue
    .line 150
    const-string v1, "com.android.contacts.extra.PHONE_URIS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v16

    .line 153
    .local v16, uris:[Landroid/os/Parcelable;
    if-eqz v16, :cond_7

    move-object/from16 v0, v16

    array-length v1, v0

    if-lez v1, :cond_7

    .line 154
    move-object/from16 v7, v16

    .local v7, arr$:[Landroid/os/Parcelable;
    array-length v12, v7

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v12, :cond_1

    aget-object v14, v7, v10

    .local v14, p:Landroid/os/Parcelable;
    move-object v15, v14

    .line 155
    check-cast v15, Landroid/net/Uri;

    .line 156
    .local v15, uri:Landroid/net/Uri;
    const-string v1, "tel"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .line 158
    .local v13, number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v13, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->insertIntoNumbers(Ljava/util/HashMap;Landroid/util/Pair;)V

    .line 154
    .end local v13           #number:Ljava/lang/String;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 162
    .end local v14           #p:Landroid/os/Parcelable;
    .end local v15           #uri:Landroid/net/Uri;
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v11, idSetBuilder:Ljava/lang/StringBuilder;
    const/4 v9, 0x1

    .line 164
    .local v9, first:Z
    move-object/from16 v7, v16

    array-length v12, v7

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_4

    aget-object v14, v7, v10

    .restart local v14       #p:Landroid/os/Parcelable;
    move-object v15, v14

    .line 165
    check-cast v15, Landroid/net/Uri;

    .line 166
    .restart local v15       #uri:Landroid/net/Uri;
    const-string v1, "content"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    if-eqz v9, :cond_3

    .line 168
    const/4 v9, 0x0

    .line 169
    invoke-virtual {v15}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 171
    :cond_3
    const/16 v1, 0x2c

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v15}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 176
    .end local v14           #p:Landroid/os/Parcelable;
    .end local v15           #uri:Landroid/net/Uri;
    :cond_4
    if-nez v9, :cond_6

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 177
    const/4 v8, 0x0

    .line 178
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 179
    if-eqz v8, :cond_6

    .line 181
    :goto_3
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->insertIntoNumbers(Ljava/util/HashMap;Landroid/util/Pair;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 186
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 191
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->saveNumbers()V

    .line 192
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->updateAdapterData()V

    .line 194
    .end local v7           #arr$:[Landroid/os/Parcelable;
    .end local v9           #first:Z
    .end local v10           #i$:I
    .end local v11           #idSetBuilder:Ljava/lang/StringBuilder;
    .end local v12           #len$:I
    :cond_7
    return-void
.end method

.method private saveNumbers()V
    .locals 6

    .prologue
    .line 240
    invoke-static {p0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 241
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 242
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 244
    iget-object v4, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 245
    .local v2, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 248
    .end local v2           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 249
    return-void
.end method

.method private updateAdapterData()V
    .locals 10

    .prologue
    const/4 v6, 0x2

    .line 197
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v3, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 200
    .local v9, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "number"

    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v0, "name"

    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1;

    const v4, 0x7f040003

    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v5, v1

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1;-><init>(Lcom/android/phone/MiuiAutoRecordWhiteListSetting;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 215
    iget-object v0, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    return-void

    .line 206
    :array_0
    .array-data 0x4
        0xet 0x0t 0x8t 0x7ft
        0xft 0x0t 0x8t 0x7ft
    .end array-data
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 139
    packed-switch p1, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 141
    :pswitch_0
    if-eqz p3, :cond_0

    .line 142
    invoke-direct {p0, p3}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->processPickResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->setContentView(I)V

    .line 94
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mList:Landroid/widget/ListView;

    .line 95
    iget-object v0, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mList:Landroid/widget/ListView;

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mList:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 97
    new-instance v0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$ModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting$ModeCallback;-><init>(Lcom/android/phone/MiuiAutoRecordWhiteListSetting;Lcom/android/phone/MiuiAutoRecordWhiteListSetting$1;)V

    iput-object v0, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mModeCallBack:Lcom/android/phone/MiuiAutoRecordWhiteListSetting$ModeCallback;

    .line 98
    iget-object v0, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mModeCallBack:Lcom/android/phone/MiuiAutoRecordWhiteListSetting$ModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 99
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 110
    const v1, 0x601004e

    invoke-static {p0, v1}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    .local v0, newDrawable:Landroid/graphics/drawable/Drawable;
    const v1, 0x7f0d024e

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 113
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 119
    .local v1, itemId:I
    sparse-switch v1, :sswitch_data_0

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 122
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->finish()V

    goto :goto_0

    .line 125
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.GET_MULTIPLE_PHONES"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v3, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v3, "android.intent.extra.include_unknown_numbers"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 104
    invoke-static {p0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->loadNumbers(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->mNumbers:Ljava/util/HashMap;

    .line 105
    invoke-direct {p0}, Lcom/android/phone/MiuiAutoRecordWhiteListSetting;->updateAdapterData()V

    .line 106
    return-void
.end method