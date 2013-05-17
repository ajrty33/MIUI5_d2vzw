.class public Lcom/android/phone/MiuiEditCustomLocationActivity;
.super Landroid/app/Activity;
.source "MiuiEditCustomLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiEditCustomLocationActivity$TextChangeListener;,
        Lcom/android/phone/MiuiEditCustomLocationActivity$QueryHandler;
    }
.end annotation


# instance fields
.field private isCreateNew:Z

.field private mBtnDelete:Landroid/widget/Button;

.field private mBtnDone:Landroid/widget/Button;

.field private mId:I

.field private mLocationView:Landroid/widget/TextView;

.field private mNumberView:Landroid/widget/TextView;

.field private mQueryHandler:Lcom/android/phone/MiuiEditCustomLocationActivity$QueryHandler;

.field private mType:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->isCreateNew:Z

    .line 49
    iput v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mId:I

    .line 249
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiEditCustomLocationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/phone/MiuiEditCustomLocationActivity;->resetDoneButtonEnabled()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiEditCustomLocationActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mId:I

    return v0
.end method

.method private getTypeId()I
    .locals 2

    .prologue
    .line 183
    const/4 v0, -0x1

    .line 185
    .local v0, id:I
    iget-object v1, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mType:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 198
    :goto_0
    return v0

    .line 187
    :pswitch_0
    const/4 v0, 0x0

    .line 188
    goto :goto_0

    .line 190
    :pswitch_1
    const/4 v0, 0x1

    .line 191
    goto :goto_0

    .line 193
    :pswitch_2
    const/4 v0, 0x2

    .line 194
    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x7f08005d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resetDoneButtonEnabled()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/MiuiEditCustomLocationActivity;->getTypeId()I

    move-result v0

    if-ltz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private save()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 211
    iget-object v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 212
    .local v9, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, location:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/phone/MiuiEditCustomLocationActivity;->getTypeId()I

    move-result v7

    .line 215
    .local v7, id:I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 216
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "number"

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v0, "location"

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v0, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    iget-boolean v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->isCreateNew:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mId:I

    if-lez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mQueryHandler:Lcom/android/phone/MiuiEditCustomLocationActivity$QueryHandler;

    sget-object v3, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    new-array v6, v1, [Ljava/lang/String;

    iget v10, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mId:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/MiuiEditCustomLocationActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mQueryHandler:Lcom/android/phone/MiuiEditCustomLocationActivity$QueryHandler;

    sget-object v1, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v11, v2, v1, v4}, Lcom/android/phone/MiuiEditCustomLocationActivity$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const v11, 0x7f0d001d

    const/4 v10, 0x2

    const/16 v9, 0x30

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 119
    .local v3, number:Ljava/lang/CharSequence;
    invoke-interface {v3, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_1

    invoke-interface {v3, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_2

    invoke-interface {v3, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_2

    .line 120
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d0298

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/MiuiEditCustomLocationActivity$2;

    invoke-direct {v6, p0}, Lcom/android/phone/MiuiEditCustomLocationActivity$2;-><init>(Lcom/android/phone/MiuiEditCustomLocationActivity;)V

    invoke-virtual {v5, v11, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 131
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/MiuiEditCustomLocationActivity;->getTypeId()I

    move-result v4

    .line 132
    .local v4, typeId:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 133
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 134
    .local v0, c:C
    if-lt v0, v9, :cond_3

    const/16 v5, 0x39

    if-le v0, v5, :cond_4

    :cond_3
    if-ne v4, v10, :cond_5

    const/16 v5, 0x23

    if-ne v0, v5, :cond_5

    .line 132
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    :cond_5
    const/4 v1, 0x0

    .line 138
    .local v1, errorMsg:Ljava/lang/String;
    if-ne v4, v10, :cond_7

    .line 139
    const v5, 0x7f0d02ec

    new-array v6, v7, [Ljava/lang/Object;

    const v7, 0x7f0d02fd

    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiEditCustomLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/MiuiEditCustomLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_6
    :goto_2
    if-eqz v1, :cond_0

    .line 150
    iget-object v5, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 141
    :cond_7
    if-nez v4, :cond_8

    .line 142
    const v5, 0x7f0d02fc

    new-array v6, v7, [Ljava/lang/Object;

    const v7, 0x7f0d0300

    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiEditCustomLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/MiuiEditCustomLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 144
    :cond_8
    if-ne v4, v7, :cond_6

    .line 145
    const v5, 0x7f0d02fc

    new-array v6, v7, [Ljava/lang/Object;

    const v7, 0x7f0d02ff

    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiEditCustomLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/MiuiEditCustomLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 155
    .end local v0           #c:C
    .end local v1           #errorMsg:Ljava/lang/String;
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/MiuiEditCustomLocationActivity;->save()V

    goto/16 :goto_0

    .line 158
    .end local v2           #i:I
    .end local v3           #number:Ljava/lang/CharSequence;
    .end local v4           #typeId:I
    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d0297

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/MiuiEditCustomLocationActivity$3;

    invoke-direct {v6, p0}, Lcom/android/phone/MiuiEditCustomLocationActivity$3;-><init>(Lcom/android/phone/MiuiEditCustomLocationActivity;)V

    invoke-virtual {v5, v11, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d0021

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 174
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/MiuiEditCustomLocationActivity;->finish()V

    goto/16 :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x7f080060
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f08005e

    const v7, 0x7f08005d

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v3, 0x7f040013

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiEditCustomLocationActivity;->setContentView(I)V

    .line 55
    const v3, 0x7f0d0324

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiEditCustomLocationActivity;->setTitle(I)V

    .line 57
    const v3, 0x7f08005a

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiEditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    .line 58
    const v3, 0x7f08005b

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiEditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    .line 60
    new-instance v1, Lcom/android/phone/MiuiEditCustomLocationActivity$TextChangeListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/phone/MiuiEditCustomLocationActivity$TextChangeListener;-><init>(Lcom/android/phone/MiuiEditCustomLocationActivity;Lcom/android/phone/MiuiEditCustomLocationActivity$1;)V

    .line 62
    .local v1, textChangeListener:Lcom/android/phone/MiuiEditCustomLocationActivity$TextChangeListener;
    iget-object v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    iget-object v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    const v3, 0x7f080062

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiEditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    .line 66
    iget-object v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    const v3, 0x7f080061

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiEditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v3, 0x7f080060

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiEditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mBtnDelete:Landroid/widget/Button;

    .line 71
    iget-object v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mBtnDelete:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v3, 0x7f08005c

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiEditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mType:Landroid/widget/RadioGroup;

    .line 74
    iget-object v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mType:Landroid/widget/RadioGroup;

    new-instance v5, Lcom/android/phone/MiuiEditCustomLocationActivity$1;

    invoke-direct {v5, p0}, Lcom/android/phone/MiuiEditCustomLocationActivity$1;-><init>(Lcom/android/phone/MiuiEditCustomLocationActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 82
    invoke-virtual {p0, v8}, Lcom/android/phone/MiuiEditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/MiuiEditCustomLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "action_add_custom_location"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->isCreateNew:Z

    .line 88
    iget-object v5, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mBtnDelete:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->isCreateNew:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    iget-boolean v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->isCreateNew:Z

    if-nez v3, :cond_0

    .line 90
    const-string v3, "_id"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mId:I

    .line 91
    iget-object v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    const-string v5, "number"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    const-string v5, "location"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const-string v3, "type"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 94
    .local v2, type:I
    packed-switch v2, :pswitch_data_0

    .line 105
    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiEditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 110
    .end local v2           #type:I
    :cond_0
    :goto_1
    new-instance v3, Lcom/android/phone/MiuiEditCustomLocationActivity$QueryHandler;

    invoke-direct {v3, p0, p0}, Lcom/android/phone/MiuiEditCustomLocationActivity$QueryHandler;-><init>(Lcom/android/phone/MiuiEditCustomLocationActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/MiuiEditCustomLocationActivity;->mQueryHandler:Lcom/android/phone/MiuiEditCustomLocationActivity$QueryHandler;

    .line 111
    return-void

    :cond_1
    move v3, v4

    .line 88
    goto :goto_0

    .line 96
    .restart local v2       #type:I
    :pswitch_0
    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiEditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 99
    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/android/phone/MiuiEditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 102
    :pswitch_2
    const v3, 0x7f08005f

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiEditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 269
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 270
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 271
    const-class v0, Lcom/android/phone/MiuiCustomLocationActivity;

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
