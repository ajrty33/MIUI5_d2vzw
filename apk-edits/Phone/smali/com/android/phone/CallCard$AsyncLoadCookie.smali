.class public Lcom/android/phone/CallCard$AsyncLoadCookie;
.super Ljava/lang/Object;
.source "CallCard.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AsyncLoadCookie"
.end annotation


# instance fields
.field public final call:Lcom/android/internal/telephony/Call;

.field public final callerInfo:Lcom/android/internal/telephony/CallerInfo;

.field public final imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "imageView"
    .parameter "callerInfo"
    .parameter "call"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/phone/CallCard$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 84
    iput-object p2, p0, Lcom/android/phone/CallCard$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 85
    iput-object p3, p0, Lcom/android/phone/CallCard$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 86
    return-void
.end method
