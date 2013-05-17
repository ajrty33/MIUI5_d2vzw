.class Lcom/android/phone/MiuiSimContacts$2;
.super Ljava/lang/Object;
.source "MiuiSimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiSimContacts;->showWaitingDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiSimContacts;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiSimContacts;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts$2;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$2;->this$0:Lcom/android/phone/MiuiSimContacts;

    #calls: Lcom/android/phone/MiuiSimContacts;->handleBackEvent()V
    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$200(Lcom/android/phone/MiuiSimContacts;)V

    .line 199
    return-void
.end method
