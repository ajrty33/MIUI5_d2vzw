.class Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;
.super Landroid/os/Handler;
.source "MiuiPreferredNetworkTypeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;-><init>(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 204
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 206
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    aget v1, v1, v4

    #setter for: Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mCurrentNetworkType:I
    invoke-static {v2, v1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->access$102(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;I)I

    .line 208
    const-string v1, "PreferedNetworkTypeListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get preferred network type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    #getter for: Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mCurrentNetworkType:I
    invoke-static {v3}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->access$100(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    #getter for: Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mCurrentNetworkType:I
    invoke-static {v1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->access$100(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->setValue(Ljava/lang/String;)V

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    const-string v1, "PreferedNetworkTypeListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get preferred network type, exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, v4}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->setEnabled(Z)V

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 218
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 220
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 222
    invoke-direct {p0, v4}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->setEnabled(Z)V

    .line 224
    const-string v1, "PreferedNetworkTypeListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set preferred network type, exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    #getter for: Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->access$600(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    invoke-virtual {v1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->finish()V

    .line 234
    return-void

    .line 227
    :cond_0
    const-string v1, "PreferedNetworkTypeListPreference"

    const-string v2, "set preferred network type done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    #getter for: Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->access$600(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    iget-object v3, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    #getter for: Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mCurrentNetworkType:I
    invoke-static {v3}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->access$100(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    invoke-virtual {v0}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 182
    return-void
.end method

.method private setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    #calls: Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->checkRadioPreference(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->access$200(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;Ljava/lang/String;)V

    .line 178
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 188
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    #getter for: Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->access$600(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    #getter for: Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mCurrentNetworkType:I
    invoke-static {v1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->access$100(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    #getter for: Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mHandler:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;
    invoke-static {v2}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->access$500(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 198
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
