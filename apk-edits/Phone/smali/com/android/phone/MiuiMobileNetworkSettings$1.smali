.class Lcom/android/phone/MiuiMobileNetworkSettings$1;
.super Landroid/database/ContentObserver;
.source "MiuiMobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiMobileNetworkSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiMobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiMobileNetworkSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/phone/MiuiMobileNetworkSettings$1;->this$0:Lcom/android/phone/MiuiMobileNetworkSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x1

    .line 91
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 92
    iget-object v2, p0, Lcom/android/phone/MiuiMobileNetworkSettings$1;->this$0:Lcom/android/phone/MiuiMobileNetworkSettings;

    #getter for: Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/MiuiMobileNetworkSettings;->access$000(Lcom/android/phone/MiuiMobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/phone/MiuiMobileNetworkSettings$1;->this$0:Lcom/android/phone/MiuiMobileNetworkSettings;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/android/phone/MiuiMobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 95
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/phone/MiuiMobileNetworkSettings$1;->this$0:Lcom/android/phone/MiuiMobileNetworkSettings;

    #getter for: Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/MiuiMobileNetworkSettings;->access$000(Lcom/android/phone/MiuiMobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 97
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiMobileNetworkSettings$1;->this$0:Lcom/android/phone/MiuiMobileNetworkSettings;

    #getter for: Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/MiuiMobileNetworkSettings;->access$100(Lcom/android/phone/MiuiMobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/android/phone/MiuiMobileNetworkSettings$1;->this$0:Lcom/android/phone/MiuiMobileNetworkSettings;

    #getter for: Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/MiuiMobileNetworkSettings;->access$100(Lcom/android/phone/MiuiMobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MiuiMobileNetworkSettings$1;->this$0:Lcom/android/phone/MiuiMobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MiuiMobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiMobileNetworkSettings$1;->this$0:Lcom/android/phone/MiuiMobileNetworkSettings;

    #getter for: Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/MiuiMobileNetworkSettings;->access$200(Lcom/android/phone/MiuiMobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/android/phone/MiuiMobileNetworkSettings$1;->this$0:Lcom/android/phone/MiuiMobileNetworkSettings;

    #getter for: Lcom/android/phone/MiuiMobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/MiuiMobileNetworkSettings;->access$200(Lcom/android/phone/MiuiMobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MiuiMobileNetworkSettings$1;->this$0:Lcom/android/phone/MiuiMobileNetworkSettings;

    invoke-virtual {v3}, Lcom/android/phone/MiuiMobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "always_enable_mms"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 104
    :cond_2
    return-void

    .line 101
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
