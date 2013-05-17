.class Lcom/android/phone/MiuiManageConferenceUtils$1$1;
.super Ljava/lang/Object;
.source "MiuiManageConferenceUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiManageConferenceUtils$1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/MiuiManageConferenceUtils$1;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiManageConferenceUtils$1;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/MiuiManageConferenceUtils$1$1;->this$1:Lcom/android/phone/MiuiManageConferenceUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 73
    move-object v0, p2

    check-cast v0, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;

    .line 74
    .local v0, connectionInfo:Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;
    iput-object p3, v0, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 75
    iget-object v1, p0, Lcom/android/phone/MiuiManageConferenceUtils$1$1;->this$1:Lcom/android/phone/MiuiManageConferenceUtils$1;

    iget-object v1, v1, Lcom/android/phone/MiuiManageConferenceUtils$1;->this$0:Lcom/android/phone/MiuiManageConferenceUtils;

    #calls: Lcom/android/phone/MiuiManageConferenceUtils;->updateCallerInfo(Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;)V
    invoke-static {v1, v0}, Lcom/android/phone/MiuiManageConferenceUtils;->access$100(Lcom/android/phone/MiuiManageConferenceUtils;Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;)V

    .line 76
    return-void
.end method
