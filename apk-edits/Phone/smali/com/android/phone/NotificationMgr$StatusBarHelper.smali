.class public Lcom/android/phone/NotificationMgr$StatusBarHelper;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusBarHelper"
.end annotation


# instance fields
.field private mIsExpandedViewEnabled:Z

.field private mIsNotificationEnabled:Z

.field private mIsSystemBarBackgroundEnabled:Z
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mIsSystemBarNavigationEnabled:Z

.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method private constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 213
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    .line 208
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    .line 209
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    .line 210
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarBackgroundEnabled:Z

    .line 214
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;-><init>(Lcom/android/phone/NotificationMgr;)V

    return-void
.end method

.method private updateStatusBar()V
    .locals 4
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 273
    .local v0, state:I
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    if-nez v1, :cond_0

    .line 274
    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 276
    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    if-nez v1, :cond_1

    .line 277
    const/high16 v1, 0x4

    or-int/2addr v0, v1

    .line 279
    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    if-nez v1, :cond_2

    .line 281
    const/high16 v1, 0x20

    or-int/2addr v0, v1

    .line 282
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    .line 283
    const/high16 v1, 0x40

    or-int/2addr v0, v1

    .line 285
    :cond_2
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarBackgroundEnabled:Z

    if-nez v1, :cond_3

    .line 286
    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    .line 289
    :cond_3
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatusBar: state = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 290
    :cond_4
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v1, v1, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 291
    return-void
.end method


# virtual methods
.method public enableExpandedView(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    if-eq v0, p1, :cond_0

    .line 238
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    .line 239
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar()V

    .line 241
    :cond_0
    return-void
.end method

.method public enableNotificationAlerts(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 224
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    .line 225
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar()V

    .line 227
    :cond_0
    return-void
.end method

.method public enableSystemBarBackground(Z)V
    .locals 1
    .parameter "enable"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarBackgroundEnabled:Z

    if-eq v0, p1, :cond_0

    .line 261
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarBackgroundEnabled:Z

    .line 262
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar()V

    .line 264
    :cond_0
    return-void
.end method

.method public enableSystemBarNavigation(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 253
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    .line 254
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar()V

    .line 256
    :cond_0
    return-void
.end method
