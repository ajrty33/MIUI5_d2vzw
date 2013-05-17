.class public Lcom/android/phone/sip/MiuiSipSettings;
.super Lcom/android/phone/sip/SipSettings;
.source "MiuiSipSettings.java"


# instance fields
.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mListView:Landroid/widget/ListView;

.field private mfooter:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/phone/sip/SipSettings;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/sip/MiuiSipSettings;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/phone/sip/MiuiSipSettings;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/sip/MiuiSipSettings;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/sip/MiuiSipSettings;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mfooter:Landroid/view/View;

    return-object v0
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, option:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/sip/MiuiSipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 92
    iget-object v1, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method private registerForSipCallOptionPreference()V
    .locals 3

    .prologue
    .line 64
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/phone/sip/MiuiSipSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "button_sip_call_options"

    invoke-static {v0, v1}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 66
    const-string v0, "button_sip_call_options_wifi_only"

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/MiuiSipSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/phone/sip/MiuiSipSettings$1;

    invoke-direct {v1, p0}, Lcom/android/phone/sip/MiuiSipSettings$1;-><init>(Lcom/android/phone/sip/MiuiSipSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/sip/MiuiSipSettings;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 84
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/sip/MiuiSipSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "button_sip_call_options_wifi_only"

    invoke-static {v0, v1}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 70
    const-string v0, "button_sip_call_options"

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/MiuiSipSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    goto :goto_0
.end method


# virtual methods
.method protected getPreferenceResource()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f060021

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/phone/sip/SipSettings;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-direct {p0}, Lcom/android/phone/sip/MiuiSipSettings;->registerForSipCallOptionPreference()V

    .line 42
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 43
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mfooter:Landroid/view/View;

    .line 44
    invoke-virtual {p0}, Lcom/android/phone/sip/MiuiSipSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mListView:Landroid/widget/ListView;

    .line 45
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 123
    const v1, 0x601004e

    invoke-static {p0, v1}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    .local v0, newDrawable:Landroid/graphics/drawable/Drawable;
    const v1, 0x7f0d01bb

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 127
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/phone/sip/MiuiSipSettings;->finish()V

    .line 99
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/sip/SipSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-super {p0}, Lcom/android/phone/sip/SipSettings;->onResume()V

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/sip/MiuiSipSettings;->mfooter:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 57
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 59
    :cond_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected retrieveSipLists()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/phone/sip/SipSettings;->retrieveSipLists()V

    .line 107
    new-instance v0, Lcom/android/phone/sip/MiuiSipSettings$2;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/MiuiSipSettings$2;-><init>(Lcom/android/phone/sip/MiuiSipSettings;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/MiuiSipSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method
