.class Lcom/android/phone/MiuiPhoneApp$Handler;
.super Landroid/os/Handler;
.source "MiuiPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiPhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field private mParentHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/phone/MiuiPhoneApp;


# direct methods
.method public constructor <init>(Lcom/android/phone/MiuiPhoneApp;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "parentHandler"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->mParentHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 47
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 64
    iget-object v1, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 49
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    #calls: Lcom/android/phone/MiuiPhoneApp;->onBluetoothAvailabilityChanged()V
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneApp;->access$000(Lcom/android/phone/MiuiPhoneApp;)V

    goto :goto_0

    .line 53
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/MiuiPhoneApp$Handler;->this$0:Lcom/android/phone/MiuiPhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/MiuiPhoneApp;->onIccStatusChanged()V

    goto :goto_0

    .line 56
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 57
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 58
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "button_auto_select_key"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
    .end sparse-switch
.end method
