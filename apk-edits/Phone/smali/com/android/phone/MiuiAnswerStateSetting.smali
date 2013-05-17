.class public Lcom/android/phone/MiuiAnswerStateSetting;
.super Landroid/preference/PreferenceActivity;
.source "MiuiAnswerStateSetting.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiAnswerStateSetting;->addPreferencesFromResource(I)V

    .line 19
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 20
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 24
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 25
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/android/phone/MiuiAnswerStateSetting;->finish()V

    .line 27
    const/4 v1, 0x1

    .line 29
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
