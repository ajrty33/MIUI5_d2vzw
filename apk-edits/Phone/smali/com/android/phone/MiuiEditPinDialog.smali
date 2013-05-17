.class public Lcom/android/phone/MiuiEditPinDialog;
.super Ljava/lang/Object;
.source "MiuiEditPinDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiEditPinDialog$3;,
        Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;,
        Lcom/android/phone/MiuiEditPinDialog$Mode;,
        Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEditTextConfirmNewPin:Landroid/widget/EditText;

.field private mEditTextNewPin:Landroid/widget/EditText;

.field private mEditTextOldPinPuk:Landroid/widget/EditText;

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIccCard:Lcom/android/internal/telephony/IccCard;

.field private mListener:Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;

.field private mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTextViewPrompt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/MiuiEditPinDialog$Mode;Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;)V
    .locals 5
    .parameter "context"
    .parameter "mode"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    new-instance v1, Lcom/android/phone/MiuiEditPinDialog$2;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiEditPinDialog$2;-><init>(Lcom/android/phone/MiuiEditPinDialog;)V

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mHandler:Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    .line 79
    iput-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/android/phone/MiuiEditPinDialog;->mListener:Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;

    .line 82
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MiuiEditPinDialog$1;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiEditPinDialog$1;-><init>(Lcom/android/phone/MiuiEditPinDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mDialog:Landroid/app/AlertDialog;

    .line 93
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 95
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040016

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 98
    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    .line 100
    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    .line 101
    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    .line 102
    const v1, 0x7f08006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    .line 104
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 105
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 107
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 108
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 109
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 110
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 111
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 112
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 113
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 114
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 115
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 117
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 122
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 123
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 124
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 125
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiEditPinDialog;)Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mListener:Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiEditPinDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiEditPinDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/phone/MiuiEditPinDialog;->process()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/MiuiEditPinDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiEditPinDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiEditPinDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiEditPinDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiEditPinDialog;->showToast(I)V

    return-void
.end method

.method private dismiss(Z)V
    .locals 1
    .parameter "cancel"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mListener:Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mListener:Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;->OnDialogClose(Lcom/android/phone/MiuiEditPinDialog;Z)V

    .line 505
    :cond_2
    return-void
.end method

.method private process()V
    .locals 11

    .prologue
    const v10, 0x7f0d02e5

    const v9, 0x7f0d02e4

    const v8, 0x7f0d02e3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 320
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, pinpuk:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, newPin:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, confirmNewPin:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 325
    .local v1, msg:Landroid/os/Message;
    sget-object v6, Lcom/android/phone/MiuiEditPinDialog$3;->$SwitchMap$com$android$phone$MiuiEditPinDialog$Mode:[I

    iget-object v7, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    invoke-virtual {v7}, Lcom/android/phone/MiuiEditPinDialog$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 405
    :goto_0
    return-void

    .line 327
    :pswitch_0
    invoke-static {v3, v5}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 328
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0d02e6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 329
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 331
    :cond_0
    const/4 v6, 0x2

    iput v6, v1, Landroid/os/Message;->what:I

    .line 332
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    iget-object v7, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    :goto_1
    invoke-virtual {v6, v4, v3, v1}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    .line 336
    :pswitch_1
    invoke-static {v3, v5}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 337
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 338
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 340
    :cond_2
    const/4 v6, 0x3

    iput v6, v1, Landroid/os/Message;->what:I

    .line 341
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    iget-object v7, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    :goto_2
    invoke-virtual {v6, v4, v3, v1}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_2

    .line 345
    :pswitch_2
    invoke-static {v3, v5}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 346
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0d02e6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 347
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 348
    :cond_4
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 349
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0d02f5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 350
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 351
    :cond_5
    invoke-static {v2, v5}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_6

    .line 352
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 355
    :cond_6
    const/4 v4, 0x4

    iput v4, v1, Landroid/os/Message;->what:I

    .line 356
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 360
    :pswitch_3
    invoke-static {v3, v5}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_7

    .line 361
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 362
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 363
    :cond_7
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 364
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0d02f4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 365
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 366
    :cond_8
    invoke-static {v2, v5}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_9

    .line 367
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 368
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 370
    :cond_9
    const/4 v4, 0x5

    iput v4, v1, Landroid/os/Message;->what:I

    .line 371
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 375
    :pswitch_4
    invoke-static {v3, v4}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_a

    .line 376
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0d02e8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 377
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 378
    :cond_a
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 379
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0d02f5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 380
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 381
    :cond_b
    invoke-static {v2, v5}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_c

    .line 382
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 383
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 385
    :cond_c
    const/4 v4, 0x6

    iput v4, v1, Landroid/os/Message;->what:I

    .line 386
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 390
    :pswitch_5
    invoke-static {v3, v4}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_d

    .line 391
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0d02e7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 392
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 393
    :cond_d
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 394
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0d02f4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 395
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 396
    :cond_e
    invoke-static {v2, v5}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_f

    .line 397
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 398
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 400
    :cond_f
    const/4 v4, 0x7

    iput v4, v1, Landroid/os/Message;->what:I

    .line 401
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private showToast(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 317
    return-void
.end method

.method private updateDialog()Z
    .locals 15

    .prologue
    .line 138
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN1:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->isPin1Locked()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 140
    const/4 v10, 0x0

    .line 278
    :goto_0
    return v10

    .line 141
    :cond_1
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN2:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_8

    invoke-static {}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->isPin2Locked()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 142
    sget-object v10, Lcom/android/phone/MiuiEditPinDialog$Mode;->PUK2:Lcom/android/phone/MiuiEditPinDialog$Mode;

    iput-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    .line 157
    :cond_2
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN1:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->PUK1:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_10

    .line 158
    :cond_3
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_a

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    const v9, 0x7f0d02bc

    .line 161
    .local v9, titleId:I
    :goto_1
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN1:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-eq v10, v11, :cond_4

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_c

    .line 163
    :cond_4
    const/4 v3, 0x0

    .line 164
    .local v3, pin1RetryCount:I
    if-lez v3, :cond_b

    .line 165
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0d031b

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, prompt:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 167
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 169
    :cond_5
    const/4 v10, 0x1

    if-ne v3, v10, :cond_6

    .line 170
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0d031d

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 175
    :cond_6
    :goto_2
    const v2, 0x7f0d0302

    .line 176
    .local v2, oldPinPukHitId:I
    const v1, 0x7f0d02f9

    .line 177
    .local v1, newPinHitId:I
    const v0, 0x7f0d029a

    .line 237
    .end local v3           #pin1RetryCount:I
    .local v0, confirmNewPinHitId:I
    :goto_3
    sget-object v10, Lcom/android/phone/MiuiEditPinDialog$3;->$SwitchMap$com$android$phone$MiuiEditPinDialog$Mode:[I

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    invoke-virtual {v11}, Lcom/android/phone/MiuiEditPinDialog$Mode;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 253
    const v5, 0x7f0d0322

    .line 256
    .local v5, progressId:I
    :goto_4
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->FDN:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-eq v10, v11, :cond_7

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_1c

    .line 257
    :cond_7
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 258
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 264
    :goto_5
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 265
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 266
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    :goto_6
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 272
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 274
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 276
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 278
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 143
    .end local v0           #confirmNewPinHitId:I
    .end local v1           #newPinHitId:I
    .end local v2           #oldPinPukHitId:I
    .end local v5           #progressId:I
    .end local v6           #prompt:Ljava/lang/String;
    .end local v9           #titleId:I
    :cond_8
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->FDN:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_2

    invoke-static {}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->isPin2Locked()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 144
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x1010355

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0d02d0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0d02cf

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 148
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 158
    :cond_9
    const v9, 0x7f0d02c7

    goto/16 :goto_1

    :cond_a
    const v9, 0x7f0d0284

    goto/16 :goto_1

    .line 173
    .restart local v3       #pin1RetryCount:I
    .restart local v9       #titleId:I
    :cond_b
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6       #prompt:Ljava/lang/String;
    goto/16 :goto_2

    .line 180
    .end local v3           #pin1RetryCount:I
    .end local v6           #prompt:Ljava/lang/String;
    :cond_c
    const/4 v7, 0x0

    .line 181
    .local v7, puk1RetryCount:I
    if-lez v7, :cond_f

    .line 182
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0d031b

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 183
    .restart local v6       #prompt:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 184
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    :cond_d
    const/4 v10, 0x1

    if-ne v7, v10, :cond_e

    .line 187
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0d032e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 192
    :cond_e
    :goto_7
    const v2, 0x7f0d02ee

    .line 193
    .restart local v2       #oldPinPukHitId:I
    const v1, 0x7f0d02f9

    .line 194
    .restart local v1       #newPinHitId:I
    const v0, 0x7f0d029a

    .line 195
    .restart local v0       #confirmNewPinHitId:I
    goto/16 :goto_3

    .line 190
    .end local v0           #confirmNewPinHitId:I
    .end local v1           #newPinHitId:I
    .end local v2           #oldPinPukHitId:I
    .end local v6           #prompt:Ljava/lang/String;
    :cond_f
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6       #prompt:Ljava/lang/String;
    goto :goto_7

    .line 196
    .end local v6           #prompt:Ljava/lang/String;
    .end local v7           #puk1RetryCount:I
    .end local v9           #titleId:I
    :cond_10
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->FDN:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-eq v10, v11, :cond_11

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN2:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-eq v10, v11, :cond_11

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->PUK2:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_1b

    .line 197
    :cond_11
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->FDN:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_15

    const v9, 0x7f0d02d0

    .line 198
    .restart local v9       #titleId:I
    :goto_8
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN2:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-eq v10, v11, :cond_12

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->FDN:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_17

    .line 200
    :cond_12
    const/4 v4, 0x0

    .line 201
    .local v4, pin2RetryCount:I
    if-lez v4, :cond_16

    .line 202
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0d031b

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 203
    .restart local v6       #prompt:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 204
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 206
    :cond_13
    const/4 v10, 0x1

    if-ne v4, v10, :cond_14

    .line 207
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0d031a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 212
    :cond_14
    :goto_9
    const v2, 0x7f0d0301

    .line 213
    .restart local v2       #oldPinPukHitId:I
    const v1, 0x7f0d02f8

    .line 214
    .restart local v1       #newPinHitId:I
    const v0, 0x7f0d0299

    .line 215
    .restart local v0       #confirmNewPinHitId:I
    goto/16 :goto_3

    .line 197
    .end local v0           #confirmNewPinHitId:I
    .end local v1           #newPinHitId:I
    .end local v2           #oldPinPukHitId:I
    .end local v4           #pin2RetryCount:I
    .end local v6           #prompt:Ljava/lang/String;
    .end local v9           #titleId:I
    :cond_15
    const v9, 0x7f0d0283

    goto :goto_8

    .line 210
    .restart local v4       #pin2RetryCount:I
    .restart local v9       #titleId:I
    :cond_16
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6       #prompt:Ljava/lang/String;
    goto :goto_9

    .line 217
    .end local v4           #pin2RetryCount:I
    .end local v6           #prompt:Ljava/lang/String;
    :cond_17
    const/4 v8, 0x0

    .line 218
    .local v8, puk2RetryCount:I
    if-lez v8, :cond_1a

    .line 219
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0d031b

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 220
    .restart local v6       #prompt:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_18

    .line 221
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 223
    :cond_18
    const/4 v10, 0x1

    if-ne v8, v10, :cond_19

    .line 224
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0d032e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 229
    :cond_19
    :goto_a
    const v2, 0x7f0d02ed

    .line 230
    .restart local v2       #oldPinPukHitId:I
    const v1, 0x7f0d02f8

    .line 231
    .restart local v1       #newPinHitId:I
    const v0, 0x7f0d0299

    .line 232
    .restart local v0       #confirmNewPinHitId:I
    goto/16 :goto_3

    .line 227
    .end local v0           #confirmNewPinHitId:I
    .end local v1           #newPinHitId:I
    .end local v2           #oldPinPukHitId:I
    .end local v6           #prompt:Ljava/lang/String;
    :cond_1a
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6       #prompt:Ljava/lang/String;
    goto :goto_a

    .line 234
    .end local v6           #prompt:Ljava/lang/String;
    .end local v8           #puk2RetryCount:I
    .end local v9           #titleId:I
    :cond_1b
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 239
    .restart local v0       #confirmNewPinHitId:I
    .restart local v1       #newPinHitId:I
    .restart local v2       #oldPinPukHitId:I
    .restart local v6       #prompt:Ljava/lang/String;
    .restart local v9       #titleId:I
    :pswitch_0
    const v5, 0x7f0d0321

    .line 240
    .restart local v5       #progressId:I
    goto/16 :goto_4

    .line 242
    .end local v5           #progressId:I
    :pswitch_1
    const v5, 0x7f0d0320

    .line 243
    .restart local v5       #progressId:I
    goto/16 :goto_4

    .line 245
    .end local v5           #progressId:I
    :pswitch_2
    const v5, 0x7f0d031f

    .line 246
    .restart local v5       #progressId:I
    goto/16 :goto_4

    .line 249
    .end local v5           #progressId:I
    :pswitch_3
    const v5, 0x7f0d031e

    .line 250
    .restart local v5       #progressId:I
    goto/16 :goto_4

    .line 260
    :cond_1c
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 261
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_5

    .line 269
    :cond_1d
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v1, 0x8

    .line 305
    if-eqz p1, :cond_1

    move v0, v1

    .line 308
    .local v0, pinMinimum:I
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 309
    :cond_0
    const/4 v1, 0x0

    .line 311
    :goto_1
    return v1

    .line 305
    .end local v0           #pinMinimum:I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 311
    .restart local v0       #pinMinimum:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 522
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 523
    const/4 v0, 0x1

    .line 524
    .local v0, enablePositiveButton:Z
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 525
    const/4 v0, 0x0

    .line 527
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 530
    const/4 v0, 0x0

    .line 532
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 535
    const/4 v0, 0x0

    .line 538
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 540
    .end local v0           #enablePositiveButton:Z
    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 514
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V

    .line 509
    return-void
.end method

.method public getMode()Lcom/android/phone/MiuiEditPinDialog$Mode;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 625
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 626
    invoke-virtual {p0}, Lcom/android/phone/MiuiEditPinDialog;->dismiss()V

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 518
    return-void
.end method

.method public setMode(Lcom/android/phone/MiuiEditPinDialog$Mode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 284
    invoke-static {}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->waitForInitialization()V

    .line 285
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/MiuiEditPinDialog;->updateDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEditPinDialog;->afterTextChanged(Landroid/text/Editable;)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiEditPinDialog;->dismiss()V

    goto :goto_0
.end method
