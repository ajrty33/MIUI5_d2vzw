.class Lcom/android/phone/MiuiCallCard$CallCardInfo;
.super Ljava/lang/Object;
.source "MiuiCallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallCardInfo"
.end annotation


# instance fields
.field public callStatus:Ljava/lang/String;

.field public elapsedTime:Ljava/lang/String;

.field public extraInfo:Ljava/lang/String;

.field public isConference:Z

.field public name:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photo:Landroid/graphics/drawable/Drawable;

.field public telocation:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/MiuiCallCard;


# direct methods
.method private constructor <init>(Lcom/android/phone/MiuiCallCard;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->this$0:Lcom/android/phone/MiuiCallCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->isConference:Z

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->extraInfo:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MiuiCallCard;Lcom/android/phone/MiuiCallCard$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard$CallCardInfo;-><init>(Lcom/android/phone/MiuiCallCard;)V

    return-void
.end method
