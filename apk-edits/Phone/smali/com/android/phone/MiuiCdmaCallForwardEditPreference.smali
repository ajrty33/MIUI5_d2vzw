.class public Lcom/android/phone/MiuiCdmaCallForwardEditPreference;
.super Lcom/android/phone/EditPhoneNumberPreference;
.source "MiuiCdmaCallForwardEditPreference.java"


# static fields
.field private static final URI_DISABLE_CFB:Landroid/net/Uri;

.field private static final URI_DISABLE_CFNRC:Landroid/net/Uri;

.field private static final URI_DISABLE_CFNRY:Landroid/net/Uri;

.field private static final URI_DISABLE_CFU:Landroid/net/Uri;


# instance fields
.field mReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "tel:*720"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->URI_DISABLE_CFU:Landroid/net/Uri;

    .line 17
    const-string v0, "tel:*900"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->URI_DISABLE_CFB:Landroid/net/Uri;

    .line 19
    const-string v0, "tel:*920"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->URI_DISABLE_CFNRY:Landroid/net/Uri;

    .line 21
    const-string v0, "tel:*680"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->URI_DISABLE_CFNRC:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    sget-object v1, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    const v2, 0x7f0f0006

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->mReason:I

    .line 35
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 37
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 42
    iput p2, p0, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->mButtonClicked:I

    .line 43
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onDialogClosed(Z)V

    .line 48
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 50
    iget v3, p0, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->mButtonClicked:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_0

    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, uri:Landroid/net/Uri;
    iget v3, p0, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->mButtonClicked:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, number:Ljava/lang/String;
    iget v3, p0, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->mReason:I

    packed-switch v3, :pswitch_data_0

    .line 84
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0}, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 56
    .restart local v1       #number:Ljava/lang/String;
    .restart local v2       #uri:Landroid/net/Uri;
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:*72"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 57
    goto :goto_0

    .line 59
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:*90"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 60
    goto :goto_0

    .line 62
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:*92"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 63
    goto :goto_0

    .line 65
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:*68"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 69
    .end local v1           #number:Ljava/lang/String;
    :cond_1
    iget v3, p0, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->mReason:I

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 71
    :pswitch_4
    sget-object v2, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->URI_DISABLE_CFU:Landroid/net/Uri;

    .line 72
    goto :goto_0

    .line 74
    :pswitch_5
    sget-object v2, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->URI_DISABLE_CFB:Landroid/net/Uri;

    .line 75
    goto :goto_0

    .line 77
    :pswitch_6
    sget-object v2, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->URI_DISABLE_CFNRY:Landroid/net/Uri;

    .line 78
    goto/16 :goto_0

    .line 80
    :pswitch_7
    sget-object v2, Lcom/android/phone/MiuiCdmaCallForwardEditPreference;->URI_DISABLE_CFNRC:Landroid/net/Uri;

    goto/16 :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 69
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
