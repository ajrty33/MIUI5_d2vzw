.class Lcom/android/phone/MiuiSimContacts$3;
.super Ljava/lang/Object;
.source "MiuiSimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiSimContacts;->showProgressDialog(IIII)V
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
    .line 229
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts$3;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 232
    invoke-static {}, Lcom/android/phone/MiuiSimContacts;->access$300()Lcom/android/phone/MiuiSimContactService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/MiuiSimContactService;->stopTask()V

    .line 233
    return-void
.end method