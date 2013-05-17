.class public Lcom/android/phone/MiuiNotificationMgr;
.super Lcom/android/phone/NotificationMgr;
.source "MiuiNotificationMgr.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentCallRecordNotificationId:I

.field private mMissedCallNotifyTimes:I

.field private mMissedCallSetting:I

.field private mReceiverRegistered:Z

.field private mRingtone:Landroid/media/Ringtone;

.field private mShowingBluetoothBattery:Z

.field private mShowingCallRcordIcon:Z


# direct methods
.method protected constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;-><init>(Lcom/android/phone/PhoneApp;)V

    .line 36
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mCurrentCallRecordNotificationId:I

    .line 317
    new-instance v0, Lcom/android/phone/MiuiNotificationMgr$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiNotificationMgr$1;-><init>(Lcom/android/phone/MiuiNotificationMgr;)V

    iput-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiNotificationMgr;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mMissedCallNotifyTimes:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/phone/MiuiNotificationMgr;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mMissedCallNotifyTimes:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mMissedCallNotifyTimes:I

    return v0
.end method

.method static synthetic access$012(Lcom/android/phone/MiuiNotificationMgr;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mMissedCallNotifyTimes:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mMissedCallNotifyTimes:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiNotificationMgr;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mMissedCallSetting:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiNotificationMgr;)Landroid/media/Ringtone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/MiuiNotificationMgr;Landroid/media/Ringtone;)Landroid/media/Ringtone;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/phone/MiuiNotificationMgr;->mRingtone:Landroid/media/Ringtone;

    return-object p1
.end method

.method static init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/NotificationMgr;
    .locals 4
    .parameter

    .prologue
    .line 59
    const-class v1, Lcom/android/phone/NotificationMgr;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/android/phone/MiuiNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/phone/MiuiNotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiNotificationMgr;-><init>(Lcom/android/phone/PhoneApp;)V

    sput-object v0, Lcom/android/phone/MiuiNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    .line 63
    sget-object v0, Lcom/android/phone/MiuiNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 67
    :goto_0
    sget-object v0, Lcom/android/phone/MiuiNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    monitor-exit v1

    return-object v0

    .line 65
    :cond_0
    const-string v0, "MiuiNotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MiuiNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendApplicationUpdateMessage()V
    .locals 3

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.update_application_message_text"

    iget v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mNumberMissedCalls:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mNumberMissedCalls:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v1, "android.intent.extra.update_application_component_name"

    const-string v2, "com.android.contacts/.activities.TwelveKeyDialer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    return-void

    .line 168
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static updateInCallNotificationToStatusBar(I)V
    .locals 9
    .parameter "inCallScreenAction"

    .prologue
    .line 109
    packed-switch p0, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 111
    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 112
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 114
    .local v4, state:Lcom/android/internal/telephony/Call$State;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    check-cast v5, Lcom/android/phone/MiuiPhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/MiuiPhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v1, v5, v7

    .line 119
    .local v1, diff:J
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.LEAVE_INCALL_SCREEN_DURING_CALL"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "call_state"

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v7, "base_time"

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v5

    add-long/2addr v5, v1

    :goto_1
    invoke-virtual {v3, v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 124
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v5, v3, v6}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    add-long/2addr v5, v1

    goto :goto_1

    .line 131
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #diff:J
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #state:Lcom/android/internal/telephony/Call$State;
    :pswitch_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.ENTER_INCALL_SCREEN_DURING_CALL"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelBluetoothBattery()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-boolean v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mShowingBluetoothBattery:Z

    if-nez v1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/android/phone/MiuiNotificationMgr;->createBluetoothBatteryChangedIntent(ZI)Landroid/content/Intent;

    move-result-object v0

    .line 220
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 221
    iput-boolean v2, p0, Lcom/android/phone/MiuiNotificationMgr;->mShowingBluetoothBattery:Z

    goto :goto_0
.end method

.method public cancelCallRecord()V
    .locals 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mShowingCallRcordIcon:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "call_record"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mShowingCallRcordIcon:Z

    .line 195
    :cond_0
    return-void
.end method

.method cancelMissedCallNotification()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/phone/NotificationMgr;->cancelMissedCallNotification()V

    .line 104
    invoke-virtual {p0}, Lcom/android/phone/MiuiNotificationMgr;->cancelMissedCallRepeatReminder()V

    .line 105
    invoke-direct {p0}, Lcom/android/phone/MiuiNotificationMgr;->sendApplicationUpdateMessage()V

    .line 106
    return-void
.end method

.method protected cancelMissedCallRepeatReminder()V
    .locals 3

    .prologue
    .line 283
    const-class v1, Lcom/android/phone/MiuiNotificationMgr;

    monitor-enter v1

    .line 284
    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, p0, Lcom/android/phone/MiuiNotificationMgr;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mReceiverRegistered:Z

    .line 289
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mMissedCallNotifyTimes:I

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mMissedCallSetting:I

    .line 292
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 296
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mRingtone:Landroid/media/Ringtone;

    .line 298
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 301
    iget-object v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiNotificationMgr;->getMissedCallNotifyPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 302
    return-void

    .line 298
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected configureLedNotification(Landroid/app/Notification;)V
    .locals 6
    .parameter "note"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 78
    iget-object v3, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_breathing_light_color"

    sget v5, Lmiui/provider/ExtraSettings$System;->CALL_BREATHING_LIGHT_COLOR_DEFAULT:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, color:I
    iget-object v3, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_breathing_light_freq"

    sget v5, Lmiui/provider/ExtraSettings$System;->CALL_BREATHING_LIGHT_FREQ_DEFAULT:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 84
    .local v1, freq:I
    iput v0, p1, Landroid/app/Notification;->ledARGB:I

    .line 85
    invoke-static {v1}, Lmiui/app/ExtraNotification;->getLedPwmOffOn(I)[I

    move-result-object v2

    .line 86
    .local v2, offOn:[I
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, p1, Landroid/app/Notification;->ledOffMS:I

    .line 87
    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, p1, Landroid/app/Notification;->ledOnMS:I

    .line 88
    iget v3, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p1, Landroid/app/Notification;->defaults:I

    .line 89
    return-void
.end method

.method protected createBluetoothBatteryChangedIntent(ZI)Landroid/content/Intent;
    .locals 2
    .parameter "show"
    .parameter "level"

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BLUETOOTH_HANDSFREE_BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.show_bluetooth_handsfree_battery"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    const-string v1, "android.intent.extra.bluetooth_handsfree_battery_level"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    return-object v0
.end method

.method protected getInCallNotificationDisplayName(Lcom/android/internal/telephony/Call;Z)Ljava/lang/String;
    .locals 5
    .parameter "currentCall"
    .parameter "force"

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 145
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v2

    .line 146
    .local v2, state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    sget-object v3, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayIncoming:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v2, v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0367

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    .end local v2           #state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    .local v1, displayName:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 148
    .end local v1           #displayName:Ljava/lang/String;
    .restart local v2       #state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    :cond_0
    sget-object v3, Lcom/android/phone/MiuiConstants$CdmaCallState;->Conference:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v2, v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0368

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #displayName:Ljava/lang/String;
    goto :goto_0

    .line 150
    .end local v1           #displayName:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayOutgoing:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v2, v3, :cond_3

    .line 151
    invoke-static {p1}, Lcom/android/phone/MiuiCdmaSecondCall;->getInstance(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCdmaSecondCall;

    move-result-object v0

    .line 152
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_2

    .line 153
    move-object v0, p1

    .line 155
    :cond_2
    invoke-super {p0, v0, p2}, Lcom/android/phone/NotificationMgr;->getInCallNotificationDisplayName(Lcom/android/internal/telephony/Call;Z)Ljava/lang/String;

    move-result-object v1

    .line 156
    .restart local v1       #displayName:Ljava/lang/String;
    goto :goto_0

    .line 157
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v1           #displayName:Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/phone/NotificationMgr;->getInCallNotificationDisplayName(Lcom/android/internal/telephony/Call;Z)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #displayName:Ljava/lang/String;
    goto :goto_0

    .line 160
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/phone/NotificationMgr;->getInCallNotificationDisplayName(Lcom/android/internal/telephony/Call;Z)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #displayName:Ljava/lang/String;
    goto :goto_0
.end method

.method protected getMissedCallNotifyPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"

    .prologue
    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.ACTION_NOTIFY_MISSED_CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 314
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    return-object v1
.end method

.method protected getMissedCallNotifyTimes()I
    .locals 3

    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 306
    .local v0, sharedPreference:Landroid/content/SharedPreferences;
    const-string v1, "button_missed_call_notify_times"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected getNetworkSettingComponentName()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 260
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.MiuiNetworkSetting"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public notifyBluetoothBattery(I)V
    .locals 3
    .parameter "level"

    .prologue
    const/4 v2, 0x1

    .line 202
    if-ltz p1, :cond_0

    const/16 v1, 0x9

    if-le p1, v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p0, v2, p1}, Lcom/android/phone/MiuiNotificationMgr;->createBluetoothBatteryChangedIntent(ZI)Landroid/content/Intent;

    move-result-object v0

    .line 207
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    iput-boolean v2, p0, Lcom/android/phone/MiuiNotificationMgr;->mShowingBluetoothBattery:Z

    goto :goto_0
.end method

.method public notifyCallRecord()V
    .locals 6

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mShowingCallRcordIcon:Z

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "call_record"

    const v2, 0x602009b

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0d02b3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mShowingCallRcordIcon:Z

    .line 185
    :cond_0
    return-void
.end method

.method notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V
    .locals 1
    .parameter "name"
    .parameter "number"
    .parameter "type"
    .parameter "photo"
    .parameter "photoIcon"
    .parameter "date"

    .prologue
    .line 93
    invoke-super/range {p0 .. p7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 95
    invoke-virtual {p0}, Lcom/android/phone/MiuiNotificationMgr;->cancelMissedCallRepeatReminder()V

    .line 96
    invoke-virtual {p0}, Lcom/android/phone/MiuiNotificationMgr;->getMissedCallNotifyTimes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiNotificationMgr;->setupMissedCallRepeatReminder(I)V

    .line 98
    invoke-direct {p0}, Lcom/android/phone/MiuiNotificationMgr;->sendApplicationUpdateMessage()V

    .line 99
    return-void
.end method

.method protected setupMissedCallRepeatReminder(I)V
    .locals 7
    .parameter

    .prologue
    const-wide/32 v4, 0x493e0

    .line 265
    if-gtz p1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 268
    :cond_0
    const-class v1, Lcom/android/phone/MiuiNotificationMgr;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, p0, Lcom/android/phone/MiuiNotificationMgr;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "com.android.phone.ACTION_NOTIFY_MISSED_CALL"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mReceiverRegistered:Z

    .line 271
    iput p1, p0, Lcom/android/phone/MiuiNotificationMgr;->mMissedCallNotifyTimes:I

    .line 272
    iput p1, p0, Lcom/android/phone/MiuiNotificationMgr;->mMissedCallSetting:I

    .line 273
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 276
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {p0, v6}, Lcom/android/phone/MiuiNotificationMgr;->getMissedCallNotifyPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "success"
    .parameter "message"
    .parameter "fileName"

    .prologue
    .line 225
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 226
    .local v8, intent:Landroid/content/Intent;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    const/high16 v1, 0x1000

    invoke-virtual {v8, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callrec://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 236
    :goto_0
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x602009b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    const v3, 0x7f0d0273

    :goto_1
    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, p2

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 242
    .local v0, notification:Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 243
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiNotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 244
    iget v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mCurrentCallRecordNotificationId:I

    const v2, 0x7ffffffe

    if-lt v1, v2, :cond_0

    .line 245
    const/16 v1, 0x2710

    iput v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mCurrentCallRecordNotificationId:I

    .line 247
    :cond_0
    iget v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mCurrentCallRecordNotificationId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mCurrentCallRecordNotificationId:I

    .line 248
    iget-object v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/android/phone/MiuiNotificationMgr;->mCurrentCallRecordNotificationId:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 249
    return-void

    .line 233
    .end local v0           #notification:Landroid/app/Notification;
    :cond_1
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$StorageSettingsActivity"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 236
    :cond_2
    const v3, 0x7f0d0272

    goto :goto_1
.end method
