.class Lcom/android/phone/MiuiSimContacts$1;
.super Landroid/telephony/PhoneStateListener;
.source "MiuiSimContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiSimContacts;
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
    .line 96
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts$1;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 100
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$1;->this$0:Lcom/android/phone/MiuiSimContacts;

    #calls: Lcom/android/phone/MiuiSimContacts;->query()V
    invoke-static {v0}, Lcom/android/phone/MiuiSimContacts;->access$000(Lcom/android/phone/MiuiSimContacts;)V

    .line 103
    :cond_0
    return-void
.end method
