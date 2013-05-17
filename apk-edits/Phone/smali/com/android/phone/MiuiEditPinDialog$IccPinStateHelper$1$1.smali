.class Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper$1$1;
.super Landroid/os/Handler;
.source "MiuiEditPinDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper$1;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper$1;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper$1$1;->this$0:Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 556
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 557
    .local v0, ar:Landroid/os/AsyncResult;
    #calls: Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->handlerIccCardStatus(Landroid/os/AsyncResult;)V
    invoke-static {v0}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->access$700(Landroid/os/AsyncResult;)V

    .line 558
    return-void
.end method
